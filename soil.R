library(tidyverse)
library(readr)
library(lubridate)
library(scales)
library(httr)
library(rvest)
library(janitor)
library(jsonlite)
library(cowplot)
library(sf)
library(imputeTS)
library(highcharter)
library(RColorBrewer)
library(htmlwidgets)

# NCEI ----
earliest <- "1902-08-01"
year_ago <- as.character(ymd(today(tzone = "America/Chicago")- days(366)))
latest <- as.character(ymd(today(tzone = "America/Chicago")))
url = paste0("https://www.ncei.noaa.gov/access/services/data/v1?dataset=daily-summaries&dataTypes=PRCP,TMAX,TMIN&stations=USC00118740&startDate=",earliest,"&endDate=",latest,"&units=standard")
ncei_GET <- GET(url)
ncei_status <- status_code(ncei_GET)
if (ncei_status == 200) {
  ncei <- content(ncei_GET)
}
empty_check <- identical(ncei$PRCP, character(0))


if (!empty_check) {
  
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
    mutate(week = week(latest)) |> 
    group_by(week) |> 
    mutate(years = paste(year, collapse = ", ")) |> 
    ungroup()
  latest_freeze_weeks <- latest_freeze_dates |> 
    count(week)  |> 
    mutate(date = parse_date_time(paste(
      year(now(tzone = "America/Chicago")),
      week, 1, sep="/"),'Y/W/w')) |> 
    mutate(time = as.numeric(as_datetime(date))) |> 
    full_join(latest_freeze_dates) |> 
    distinct(week,.keep_all = TRUE)  |> 
    select(week, n, time, years)
  
  # freeze dates ----
  fig <- highchart() |> 
    hc_add_series(latest_freeze_weeks,
                  hcaes(x = time*1000,
                        y = n),
                  color = "#527DC7",
                  type = "column") |> 
    hc_xAxis(type = "datetime",
             dateTimeLabelFormats = list(
               week = "%B %e"
             )) |> 
    hc_yAxis(endOnTick = FALSE) |> 
    hc_add_theme(
      hc_theme_bloom()
    ) |> 
    hc_legend(enabled = FALSE) |> 
    hc_tooltip(pointFormat = "{point.years}",
               headerFormat = "<b>Week {point.week}</b><br>") |> 
    hc_credits(
      enabled = TRUE,
      text = "Source: NCEI",
      href = "https://www.ncei.noaa.gov/access/crn/qcdatasets.html")
  
  fig
  saveWidget(widget = fig, file = "interactive/latest_freeze_dates.html",
             selfcontained = FALSE,
             libdir = "interactive")
}

# soil temp ----
get_soil_url <- function(year) {
  soil_url <-  paste0("https://www.ncei.noaa.gov/pub/data/uscrn/products/daily01/",
                      year,
                      "/CRND0103-",year,"-IL_Champaign_9_SW.txt")
  soil_csv <- rio::import(soil_url, format = "csv")|> 
    janitor::clean_names()
}

soil_records <- map(2002:year(now(tzone = "America/Chicago")),
                    get_soil_url) 
soil_records <- do.call("rbind",soil_records)

champaign_soil <- soil_records |> 
  select(v2,v8,v15,v24,v25,v26,v27,v28) |> 
  mutate(datetime = ymd(v2)) |> 
  mutate(time = as.numeric(as_datetime(datetime))) |> 
  arrange(time) |> 
  mutate(Air = v8*1.8+32) |> 
  mutate(Surface = v15*1.8+32) |> 
  mutate('5cm' = v24*1.8+32) |> 
  mutate('10cm' = v25*1.8+32) |> 
  mutate('20cm' = v26*1.8+32) |> 
  mutate('50cm' = v27*1.8+32) |> 
  mutate('100cm' = v28*1.8+32) |> 
  select(datetime,time,Air,Surface,
         '5cm','10cm',
         '20cm','50cm',
         '100cm') 

champaign_soil_longer <- champaign_soil |> 
  pivot_longer(!c(datetime,time)) |> 
  filter(value > -100) |> 
  mutate(name = recode_factor(name,
                              "Air" = "Air",
                              "Surface" = "Surface",
                              "5cm" = "5 cm",
                              "10cm" = "10 cm",
                              "20cm" = "20 cm",
                              "50cm" = "50 cm",
                              "100cm" = "100 cm"))

champaign_soil_wider <- champaign_soil_longer |> 
  pivot_wider()

fig <- highchart() |> 
  hc_add_series(champaign_soil_longer,
                "line",
                hcaes(x = time*1000,
                      y = value,
                      group = name),
                animation = FALSE) |> 
  hc_xAxis(title = list(text = NULL),
           type = "datetime")  |> 
  hc_yAxis(title = list(text = ""),
           endOnTick = FALSE,
           startOnTick = FALSE,
           plotLines = list(
             list(
               label = list(text = "32°"),
               color = "#527DC7",
               width = 1,
               zIndex = 1,
               value = 32
             ))) |> 
  hc_credits(
    enabled = TRUE,
    text = "Source: NCEI",
    href = "https://www.ncei.noaa.gov/access/crn/qcdatasets.html") %>%
  hc_colors(c(
    "#88B3E7","#993404","#d95f0e","#fe9929",
             "#fec44f","#fee391","#ffffd4")) |> 
               hc_tooltip(split = TRUE,
                          xDateFormat = "%B %e",
                          valueSuffix = "°",
                          valueDecimals = 0) |> 
  hc_legend(align = "right",
            layout = "vertical",
            verticalAlign = "middle") |> 
  hc_add_theme(
    hc_theme_bloom()
  )%>%
  hc_rangeSelector(enabled = TRUE,
                   buttons = list(
                     list(type = 'month', count = 3, text = '3m'),
                     list(type = 'month', count = 6, text = '6m'),
                     list(type = 'year', count = 1, text = '1y'),
                     list(type = 'year', count = 2, text = '2y'),
                     list(type = 'all', text = 'All')),
                   selected = 0)
fig
saveWidget(widget = fig, file = "interactive/soil_temps.html",
           selfcontained = FALSE,
           libdir = "interactive")


## make web page ----
cat(
  "---
layout: page
title: Soil
permalink: /projects/soil
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Soil Temperature

<iframe src=\"/interactive/soil_temps.html\" width=\"100%\" height=\"300\"> 
</iframe>

## Latest Freeze Dates

<iframe src=\"/interactive/latest_freeze_dates.html\" width=\"100%\" height=\"300\"> 
</iframe>

",
file = "projects/weather/soil.md",
sep = ""
)



