library(tidyverse)
library(readr)
library(lubridate)
library(scales)
library(httr)
library(rvest)
library(janitor)
library(jsonlite)
library(cowplot)
library(imputeTS)
library(highcharter)
library(RColorBrewer)
library(htmlwidgets)

champaign_lat <-  40.11
champaign_lon <- -88.21

# NCEI ----
## ncei ----
ncei <- read_csv(file = "data/ncei.csv")

temp_history <- ncei |> 
  pivot_longer(cols = c(TMIN, TMAX)) |> 
  mutate(central_time = with_tz(DATE, tzone = "America/Chicago")) |> 
  mutate(temp = value) |> 
  drop_na() |> 
  select(central_time, temp) 

latest_freeze_dates <- temp_history |> 
  mutate(year = year(central_time)) |> 
  mutate(month = month(central_time)) |> 
  filter(month <= 7) |> 
  filter(temp <= 32) |> 
  filter(year < year(now(tzone = "America/Chicago"))) |> 
  group_by(year) |> 
  mutate(latest = max(central_time)) |> 
  ungroup() |>
  distinct(latest,.keep_all = TRUE) |> 
  mutate(latest = ymd(paste0(year(now(tzone = "America/Chicago")),"-",
                             month(latest),"-",
                             day(latest)
  ))) |> 
  #mutate(week = week(latest)) |> 
  group_by(latest) |> 
  mutate(years = paste(year, collapse = ", ")) |> 
  ungroup() |> 
  mutate(date = paste(month(latest, label = TRUE, abbr = FALSE),
                      day(latest)))

total_years <- as.numeric(count(latest_freeze_dates))

latest_freeze_weeks <- latest_freeze_dates |> 
  count(latest)  |> 
  # mutate(date = parse_date_time(paste(
  #   year(now(tzone = "America/Chicago")),
  #   week, 1, sep="/"),'Y/W/w')) |> 
  #mutate(time = as.numeric(as_datetime(date))) |> 
  full_join(latest_freeze_dates) |> 
  distinct(latest,.keep_all = TRUE)  |> 
  select(latest, n,date, years) |> 
  mutate(total = cumsum(n)) |> 
  mutate(pct = round(100*round(total/total_years,2)))
years <- as.numeric(count(latest_freeze_dates))
min <- min(latest_freeze_weeks$n)
max <- max(latest_freeze_weeks$n)
# freeze dates ----

offset <- 60*(hour(now(tzone = "America/Chicago"))-hour(now(tzone = "UTC")) )
global <- getOption("highcharter.global")
global$useUTC <- FALSE
global$timezoneOffset <- offset
options(highcharter.global = global)

fig <- highchart() |> 
  hc_add_series(latest_freeze_dates,
                hcaes(x = latest,
                      #color = year,
                      y = year),
                color = "#527DC7",
                enableMouseTracking = FALSE,
                borderWidth = 0,
                states = list(
                  inactive = list(
                    enabled = FALSE
                  )
                ),
                yAxis = 0,
                groupPadding = 0,
                pointPadding = 0,
                #pointWidth = 5,
                tooltip = list(
                  pointFormat = "{point.year}",
                  headerFormat = "{point.latest}"
                ),
                type = "scatter") |> 
  hc_add_series(latest_freeze_weeks,
                hcaes(x = latest,
                      y = pct),
                states = list(
                  inactive = list(
                    enabled = FALSE
                  ),
                  hover = list(
                    enabled = FALSE
                  )
                ),
                marker = list(
                  enabled = FALSE
                ),
                yAxis = 1,
                tooltip = list(
                  pointFormat = "{point.years}",
                  headerFormat = "<b>{point.date}: {point.pct}%</b><br>"
                ),
                step = "left",
                zIndex = -5,
                color = "#D3D3D37f",
                type = "area") |>
  hc_xAxis(type = "datetime",
           crosshair = TRUE,
           plotLines = list(
             list(
               label = list(text = "Today"),
               color = "#595959",
               width = 1,
               zIndex = 1,
               value = as.numeric( as_datetime(
                 today(tzone = "America/Chicago")))*1000
             )),
           dateTimeLabelFormats = list(
             week = "%B %e"
           )) |> 
  hc_yAxis_multiples(list(endOnTick = FALSE,
                          startOnTick = FALSE,
                          title = NULL,
                          visible = TRUE),
                     list(endOnTick = FALSE,
                          startOnTick = FALSE,
                          visible = FALSE,
                          labels = list(
                            format = "{value}%"
                          ),
                          tickInterval=25,
                          title = NULL,
                          opposite = TRUE)) |> 
  hc_add_theme(
    hc_theme_bloom()
  ) |> 
  hc_legend(enabled = FALSE) |> 
  hc_credits(
    enabled = TRUE,
    text = "Source: NCEI",
    href = "https://www.ncei.noaa.gov/access/crn/qcdatasets.html")

fig
saveWidget(widget = fig, file = "interactive/latest_freeze_dates.html",
           selfcontained = FALSE,
           libdir = "interactive")

# soil temp ----
om_url <- paste0( "https://api.open-meteo.com/v1/forecast?latitude=",champaign_lat,"&longitude=",champaign_lon,"&hourly=temperature_2m,soil_temperature_0cm,soil_temperature_6cm,soil_temperature_18cm,soil_temperature_54cm&temperature_unit=fahrenheit&windspeed_unit=mph&precipitation_unit=inch&timeformat=unixtime&past_days=92&forecast_days=16")
om <- rio::import(om_url,
                  format = "json")
om_hourly <- as_tibble( om$hourly) |> 
  mutate(datetime = as_datetime(time, tz = "America/Chicago")) 
om_hourly_longer <- om_hourly |> 
  pivot_longer(cols = !c(time,datetime) )


offset <- 60*(hour(now(tzone = "America/Chicago"))-hour(now(tzone = "UTC")) )
global <- getOption("highcharter.global")
global$useUTC <- FALSE
global$timezoneOffset <- offset
options(highcharter.global = global)


fig <- highchart() |> 
  hc_add_series(data = om_hourly,
                type = "line",
                name = "Air",
                lineWidth = 1,
                tooltip = list(valueSuffix = "°",
                               valueDecimals = 0),
                marker = list(enabled = FALSE),
                color = "lightgray",
                hcaes(x = time*1000,
                      y = temperature_2m),
                animation = FALSE,
                yAxis = 0) |> 
  hc_add_series(data = om_hourly,
                type = "line",
                name = "Ground",
                lineWidth = 4,
                zones = list(
                  c(value = 0,   color = "#F8D4FC"),
                  c(value = 5,   color = "#E5A4EB"),
                  c(value = 10,  color = "#D392DD"),
                  c(value = 15,  color = "#C07ECC"),
                  c(value = 20,  color = "#9D63C2"),
                  c(value = 25,  color = "#794DB4"),
                  c(value = 30,  color = "#5B4FA6"),
                  c(value = 32,  color = "#527DC7"),
                  c(value = 40,  color = "#65C1DE"),
                  c(value = 45,  color = "#6EDAE0"),
                  c(value = 50,  color = "#6EDBA2"),
                  c(value = 55,  color = "#69C954"),
                  c(value = 60,  color = "#93D452"),
                  c(value = 65,  color = "#E3E65B"),
                  c(value = 70,  color = "#FFFF61"),
                  c(value = 75,  color = "#F8D456"),
                  c(value = 80,  color = "#ED9749"),
                  c(value = 85,  color = "#DC6641"),
                  c(value = 90,  color = "#CA593E"),
                  c(value = 95,  color = "#B6493B"),
                  c(value = 200, color = "#A44139")),
                color = "black",
                marker = list(enabled = FALSE),
                tooltip = list(valueSuffix = "°",
                               valueDecimals = 0),
                hcaes(x = time*1000,
                      y = soil_temperature_0cm),
                animation = FALSE,
                yAxis = 0) |>
  hc_add_series(data = om_hourly,
                type = "line",
                name = "18cm",
                lineWidth = 3,
                zones = list(
                  c(value = 0,   color = "#F8D4FC"),
                  c(value = 5,   color = "#E5A4EB"),
                  c(value = 10,  color = "#D392DD"),
                  c(value = 15,  color = "#C07ECC"),
                  c(value = 20,  color = "#9D63C2"),
                  c(value = 25,  color = "#794DB4"),
                  c(value = 30,  color = "#5B4FA6"),
                  c(value = 32,  color = "#527DC7"),
                  c(value = 40,  color = "#65C1DE"),
                  c(value = 45,  color = "#6EDAE0"),
                  c(value = 50,  color = "#6EDBA2"),
                  c(value = 55,  color = "#69C954"),
                  c(value = 60,  color = "#93D452"),
                  c(value = 65,  color = "#E3E65B"),
                  c(value = 70,  color = "#FFFF61"),
                  c(value = 75,  color = "#F8D456"),
                  c(value = 80,  color = "#ED9749"),
                  c(value = 85,  color = "#DC6641"),
                  c(value = 90,  color = "#CA593E"),
                  c(value = 95,  color = "#B6493B"),
                  c(value = 200, color = "#A44139")),
                color = "black",
                marker = list(enabled = FALSE),
                tooltip = list(valueSuffix = "°",
                               valueDecimals = 0),
                hcaes(x = time*1000,
                      y = soil_temperature_18cm),
                animation = FALSE,
                yAxis = 0) |>
  hc_add_series(data = om_hourly,
                type = "line",
                name = "54cm",
                lineWidth = 2,
                zones = list(
                  c(value = 0,   color = "#F8D4FC"),
                  c(value = 5,   color = "#E5A4EB"),
                  c(value = 10,  color = "#D392DD"),
                  c(value = 15,  color = "#C07ECC"),
                  c(value = 20,  color = "#9D63C2"),
                  c(value = 25,  color = "#794DB4"),
                  c(value = 30,  color = "#5B4FA6"),
                  c(value = 32,  color = "#527DC7"),
                  c(value = 40,  color = "#65C1DE"),
                  c(value = 45,  color = "#6EDAE0"),
                  c(value = 50,  color = "#6EDBA2"),
                  c(value = 55,  color = "#69C954"),
                  c(value = 60,  color = "#93D452"),
                  c(value = 65,  color = "#E3E65B"),
                  c(value = 70,  color = "#FFFF61"),
                  c(value = 75,  color = "#F8D456"),
                  c(value = 80,  color = "#ED9749"),
                  c(value = 85,  color = "#DC6641"),
                  c(value = 90,  color = "#CA593E"),
                  c(value = 95,  color = "#B6493B"),
                  c(value = 200, color = "#A44139")),
                color = "black",
                marker = list(enabled = FALSE),
                tooltip = list(valueSuffix = "°",
                               valueDecimals = 0),
                hcaes(x = time*1000,
                      y = soil_temperature_54cm),
                animation = FALSE,
                yAxis = 0) |>
  hc_credits(
    enabled = TRUE,
    text = "Source: Open-Meteo",
    href = "https://open-meteo.com") |> 
  hc_xAxis(type = "datetime",
           dateTimeLabelFormats = list(
             week = "%B %e"
           ),
           plotLines = list(
             list(
               label = list(text = "Now"),
               color = "#595959",
               width = 1,
               zIndex = 2,
               value = as.numeric( now(tzone = "America/Chicago"))*1000
             ))) |> 
  hc_yAxis(endOnTick = FALSE,
           startOnTick = FALSE,
           plotLines = list(
             list(
               label = list(text = "32°"),
               color = "#527DC7",
               width = 1,
               zIndex = 1,
               value = 32
             )
           )) |> 
  hc_tooltip(
    split = TRUE,
    dateTimeLabelFormats = list(
      hour = "%A, %b %e, %l%P",
      minute = "%A, %b %e, %l%P",
      millisecond = "%A, %b %e, %l%P"
    )
  ) |> 
  hc_add_theme(
    hc_theme_bloom()
  ) |> 
  hc_legend(align = "right",
            layout = "vertical",
            verticalAlign = "middle") |> 
  hc_rangeSelector(enabled = TRUE,
                   buttons = list(
                     list(type = 'day', count = 30, text = '30d'),
                     list(type = 'day', count = 60, text = '60d'),
                     list(type = 'all', text = 'All')),
                   selected = 0)

fig
saveWidget(widget = fig, file = "interactive/soil_temps.html",
           selfcontained = FALSE,
           libdir = "interactive")

# soil moisture ----
om_url <- paste0( "https://api.open-meteo.com/v1/forecast?latitude=",champaign_lat,"&longitude=",champaign_lon,"&hourly=precipitation,soil_moisture_0_1cm,soil_moisture_1_3cm,soil_moisture_3_9cm,soil_moisture_9_27cm,soil_moisture_27_81cm&temperature_unit=fahrenheit&windspeed_unit=mph&precipitation_unit=inch&past_days=92&forecast_days=16&timeformat=unixtime")
om <- rio::import(om_url,
                  format = "json")
om_hourly <- as_tibble( om$hourly) |> 
  mutate(datetime = as_datetime(time, tz = "America/Chicago")) 
om_hourly_longer <- om_hourly |> 
  pivot_longer(cols = !c(time,datetime) )

offset <- 60*(hour(now(tzone = "America/Chicago"))-hour(now(tzone = "UTC")) )
global <- getOption("highcharter.global")
global$useUTC <- FALSE
global$timezoneOffset <- offset
options(highcharter.global = global)

fig <- highchart() |> 
  hc_add_series(data = om_hourly,
                type = "line",
                name = "0-1cm",
                lineWidth = 4,
                tooltip = list(valueSuffix = "%",
                               valueDecimals = 0),
                color = "#000000",
                marker = list(enabled = FALSE),
                zones = list(
                  c(value = 20,
                    color = "#BC3B2F"),
                  c(value = 30,
                    color = "#F1B16B"),
                  c(value = 40,
                    color = "#F5DE97"),
                  c(value = 50,
                    color = "#79BB6C"),
                  c(value = 60,
                    color = "#489657"),
                  c(value = 70,
                    color = "#296239"),
                  c(value = 80,
                    color = "#57BFF7"),
                  c(value = 90,
                    color = "#255AE0"),
                  c(value = 100,
                    color = "#09206E")),
                hcaes(x = time*1000,
                      y = soil_moisture_0_1cm*100),
                animation = FALSE,
                yAxis = 0) |> 
  hc_add_series(data = om_hourly,
                type = "line",
                name = "3-9cm",
                marker = list(enabled = FALSE),
                lineWidth = 3,
                zones = list(
                  c(value = 20,
                    color = "#BC3B2F"),
                  c(value = 30,
                    color = "#F1B16B"),
                  c(value = 40,
                    color = "#F5DE97"),
                  c(value = 50,
                    color = "#79BB6C"),
                  c(value = 60,
                    color = "#489657"),
                  c(value = 70,
                    color = "#296239"),
                  c(value = 80,
                    color = "#57BFF7"),
                  c(value = 90,
                    color = "#255AE0"),
                  c(value = 100,
                    color = "#09206E")),
                color = "#000000",
                tooltip = list(valueSuffix = "%",
                               valueDecimals = 0),
                hcaes(x = time*1000,
                      y = soil_moisture_3_9cm*100),
                animation = FALSE,
                yAxis = 0) |>
  hc_add_series(data = om_hourly,
                type = "line",
                name = "9-27cm",
                marker = list(enabled = FALSE),
                lineWidth = 2,
                color = "#000000",
                zones = list(
                  c(value = 20,
                    color = "#BC3B2F"),
                  c(value = 30,
                    color = "#F1B16B"),
                  c(value = 40,
                    color = "#F5DE97"),
                  c(value = 50,
                    color = "#79BB6C"),
                  c(value = 60,
                    color = "#489657"),
                  c(value = 70,
                    color = "#296239"),
                  c(value = 80,
                    color = "#57BFF7"),
                  c(value = 90,
                    color = "#255AE0"),
                  c(value = 100,
                    color = "#09206E")),
                tooltip = list(valueSuffix = "%",
                               valueDecimals = 0),
                hcaes(x = time*1000,
                      y = soil_moisture_9_27cm*100),
                animation = FALSE,
                yAxis = 0) |>
  hc_add_series(data = om_hourly,
                type = "line",
                name = "27-81cm",
                marker = list(enabled = FALSE),
                lineWidth = 1,
                zones = list(
                  c(value = 20,
                    color = "#BC3B2F"),
                  c(value = 30,
                    color = "#F1B16B"),
                  c(value = 40,
                    color = "#F5DE97"),
                  c(value = 50,
                    color = "#79BB6C"),
                  c(value = 60,
                    color = "#489657"),
                  c(value = 70,
                    color = "#296239"),
                  c(value = 80,
                    color = "#57BFF7"),
                  c(value = 90,
                    color = "#255AE0"),
                  c(value = 100,
                    color = "#09206E")),
                color = "#000000",
                tooltip = list(valueSuffix = "%",
                               valueDecimals = 0),
                hcaes(x = time*1000,
                      y = soil_moisture_27_81cm*100),
                animation = FALSE,
                yAxis = 0) |>
  hc_add_series(data = om_hourly,
                type = "column",
                name = "Precip.",
                color = "#57BFF7",
                tooltip = list(valueSuffix = "″",
                               valueDecimals = 2),
                hcaes(x = time*1000,
                      y = precipitation),
                animation = FALSE,
                yAxis = 1) |>
  hc_credits(
    enabled = TRUE,
    text = "Source: Open-Meteo",
    href = "https://open-meteo.com") |> 
  hc_xAxis(type = "datetime",
           dateTimeLabelFormats = list(
             week = "%B %e"
           ),
           plotLines = list(
             list(
               label = list(text = "Now"),
               color = "#595959",
               width = 1,
               zIndex = 2,
               value = as.numeric( now(tzone = "America/Chicago"))*1000
             ))) |> 
  hc_yAxis_multiples(create_axis(naxis = 2, 
                                 softMax = c(NA,.25),
                                 heights = c(4,1),
                                 title = list(text = NULL),
                                 endOnTick = FALSE,
                                 startOnTick = FALSE)) |>  
  hc_tooltip(
    split = TRUE,
    dateTimeLabelFormats = list(
      hour = "%A, %b %e, %l%P",
      minute = "%A, %b %e, %l%P",
      millisecond = "%A, %b %e, %l%P"
    )
  ) |> 
  hc_add_theme(
    hc_theme_bloom()
  ) |> 
  hc_legend(align = "right",
            layout = "vertical",
            verticalAlign = "middle") |> 
  hc_rangeSelector(enabled = TRUE,
                   buttons = list(
                     list(type = 'day', count = 30, text = '30d'),
                     list(type = 'day', count = 60, text = '60d'),
                     list(type = 'all', text = 'All')),
                   selected = 0)

fig
saveWidget(widget = fig, file = "interactive/soil_moisture.html",
           selfcontained = FALSE,
           libdir = "interactive")


# make web page ----
cat(
  "---
layout: page
title: Soil
permalink: /projects/weather/soil
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Soil Temperature

<iframe src=\"/interactive/soil_temps.html\" width=\"100%\" height=\"300\"> 
</iframe>

## Soil Moisture

<iframe src=\"/interactive/soil_moisture.html\" width=\"100%\" height=\"400\"> 
</iframe>

## Drought Monitor

<picture>
  <source srcset=\"https://droughtmonitor.unl.edu/data/png/current/current_midwest_trd.png\"
          media=\"(min-width: 750px)\">
  <img src=\"https://droughtmonitor.unl.edu/data/png/current/current_midwest_date.png\" />
</picture>

## Latest Freeze Dates

<iframe src=\"/interactive/latest_freeze_dates.html\" width=\"100%\" height=\"300\"> 
</iframe>

",
file = "projects/weather/soil.md",
sep = ""
)



