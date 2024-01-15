library(tidyverse)
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
library(xml2)

champaign_lat <-  40.11
champaign_lon <- -88.21

now <- as_datetime(now())
now_formatted <- strftime(x = now, 
                          tz = "US/Central",
                          format = "%I:%M% %p CT, %B %d")

now_html <- paste("<p class=\"updated_time\"> Latest data: ",
                  now_formatted,
                  "</p>",
                  sep = "")

today <- strftime(x = now, 
                  tz = "US/Central",
                  format = "%B %d")

# temperature ----
## get data ----
om_url <- paste0("https://api.open-meteo.com/v1/forecast?latitude=",champaign_lat,"&longitude=",champaign_lon,"&hourly=temperature_2m&temperature_unit=fahrenheit&windspeed_unit=mph&precipitation_unit=inch&timeformat=unixtime&past_days=1&forecast_days=16&timezone=America%2FChicago&models=ecmwf_ifs04,cma_grapes_global,bom_access_global,gfs_seamless,jma_seamless,icon_seamless,gem_seamless,meteofrance_seamless")
om <- rio::import(om_url, format = "json")
om_temp_hourly <- as_tibble( om$hourly) |> 
  mutate(datetime = as_datetime(time, tz = "America/Chicago")) |> 
  filter(time > now(tzone = "America/Chicago")-days(1)) |> 
  mutate(ECMWF = temperature_2m_ecmwf_ifs04) |> 
  select(!temperature_2m_ecmwf_ifs04) |> 
  mutate(CMA = temperature_2m_cma_grapes_global) |> 
  select(!temperature_2m_cma_grapes_global) |> 
  mutate(BOM = temperature_2m_bom_access_global) |> 
  select(!temperature_2m_bom_access_global) |> 
  mutate(GFS = temperature_2m_gfs_seamless) |> 
  select(!temperature_2m_gfs_seamless) |> 
  mutate(JMA = temperature_2m_jma_seamless) |> 
  select(!temperature_2m_jma_seamless) |> 
  mutate(DWD = temperature_2m_icon_seamless) |> 
  select(!temperature_2m_icon_seamless) |> 
  mutate(GEM = temperature_2m_gem_seamless) |> 
  select(!temperature_2m_gem_seamless) |> 
  mutate(MeteoFrance = temperature_2m_meteofrance_seamless) |> 
  select(!temperature_2m_meteofrance_seamless) |> 
  pivot_longer(!c(time,datetime)) 

## interactive ----
offset <- 60*(hour(now(tzone = "America/Chicago"))-hour(now(tzone = "UTC")) )
global <- getOption("highcharter.global")
global$useUTC <- FALSE
global$timezoneOffset <- offset
options(highcharter.global = global)

fig <- highchart() |> 
  hc_add_series(data = om_temp_hourly, 
                animation = FALSE,
                type = "line",
                # name = "Temperature",
                label = list(
                  enabled = FALSE),
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
                connectNulls = TRUE,
                tooltip = list(valueSuffix = "°",
                               headerFormat = "",
                               valueDecimals = 0),
                hcaes(x = time*1000,
                      group = name,
                      y = value)) |> 
  hc_yAxis(gridLineColor = "#D9D9D9",
           gridLineWidth = .5,
           labels = list(
             format = "{value}°"
           ),
           title = list(text = ""),
           plotLines = list(
             list(
               label = list(text = "32°"),
               color = "#527DC7",
               width = 1,
               zIndex = 1,
               value = 32
             )
           ),
           endOnTick = FALSE,
           startOnTick = FALSE) |> 
  hc_xAxis(type = "datetime",
           gridLineColor = "#D9D9D9",
           gridLineWidth = .5,
           lineWidth = 0,
           opposite = TRUE,
           tickInterval = 24 * 3600 * 1000,
           dateTimeLabelFormats = list(
             day = "%A"
           ),
           plotLines = list(
             list(
               label = list(text = "Now"),
               color = "#595959",
               width = 1,
               zIndex = 2,
               value = as.numeric( now(tzone = "America/Chicago"))*1000
             )
           ),
           min = 1000*min(om_temp_hourly$time),
           max = 1000*max(om_temp_hourly$time)
  ) |> 
  hc_add_theme(
    hc_theme_bloom()
  ) |>
  hc_credits(
    enabled = TRUE,
    text = paste("Source: Open-Meteo. Latest data:",now_formatted),
    href = "https://open-meteo.com") |> 
  hc_legend(enabled = FALSE) |> 
  hc_chart(
    scrollablePlotArea = list(
      minWidth = 700
    )) 
fig
saveWidget(widget = fig, file = "interactive/champaign_temp_forecasts.html",
           selfcontained = FALSE,
           libdir = "interactive")

# snow ----
## get data ----
om_url <- paste0("https://api.open-meteo.com/v1/forecast?latitude=",champaign_lat,"&longitude=",champaign_lon,"&hourly=snowfall&temperature_unit=fahrenheit&windspeed_unit=mph&precipitation_unit=inch&timeformat=unixtime&past_days=1&forecast_days=16&timezone=America%2FChicago&models=ecmwf_ifs04,cma_grapes_global,bom_access_global,gfs_seamless,jma_seamless,icon_seamless,gem_seamless,meteofrance_seamless")
om <- rio::import(om_url, format = "json")
om_snow_hourly <- as_tibble( om$hourly) |> 
  mutate(datetime = as_datetime(time, tz = "America/Chicago")) |> 
  filter(time > now(tzone = "America/Chicago")-days(1)) |> 
  mutate(ECMWF = snowfall_ecmwf_ifs04) |> 
  select(!snowfall_ecmwf_ifs04) |> 
  mutate(CMA = snowfall_cma_grapes_global) |> 
  select(!snowfall_cma_grapes_global) |> 
  mutate(BOM = snowfall_bom_access_global) |> 
  select(!snowfall_bom_access_global) |> 
  mutate(GFS = snowfall_gfs_seamless) |> 
  select(!snowfall_gfs_seamless) |> 
  mutate(JMA = snowfall_jma_seamless) |> 
  select(!snowfall_jma_seamless) |> 
  mutate(DWD = snowfall_icon_seamless) |> 
  select(!snowfall_icon_seamless) |> 
  mutate(GEM = snowfall_gem_seamless) |> 
  select(!snowfall_gem_seamless) |> 
  mutate(MeteoFrance = snowfall_meteofrance_seamless) |> 
  select(!snowfall_meteofrance_seamless) |> 
  pivot_longer(!c(time,datetime)) 

om_snow_two_days <- om_snow_hourly |> 
  filter(time > now(tzone = "America/Chicago")) |> 
  filter(time < now(tzone = "America/Chicago")+hours(48)) |> 
  group_by(name) |> 
  mutate(two_day_snow = sum(value)) |> 
  ungroup() |> 
  select(name,two_day_snow) |> 
  distinct() |> 
  drop_na()

max_snow <- max(om_snow_two_days$two_day_snow)

## interactive ----
fig <- highchart() |> 
  hc_add_series(data = om_snow_two_days, 
                type = "bar",
                dataLabels = list(
                  enabled = TRUE,
                  format = "{point.y:,.2f}″"
                ),
                dataSorting = list(
                  enabled = TRUE
                ),
                color = "#8AA5F1",
                groupPadding = 0,
                hcaes(x = name,
                      y = two_day_snow)) |> 
  hc_xAxis(type = "category",
           lineColor = "lightgray",
           lineWidth = 0.5,
           tickLength = 0) |> 
  hc_tooltip(enabled = FALSE) |> 
  hc_yAxis(softMax = .25,
           visible = FALSE) |> 
  hc_add_theme(
    hc_theme_bloom()
  ) |>
  hc_credits(
    enabled = TRUE,
    text = paste("Source: Open-Meteo. Latest data:",now_formatted),
    href = "https://open-meteo.com") |> 
  hc_legend(enabled = FALSE) 
fig
saveWidget(widget = fig, file = "interactive/champaign_snow_forecasts.html",
           selfcontained = FALSE,
           libdir = "interactive")

# rain ----
## get data ----
om_url <- paste0("https://api.open-meteo.com/v1/forecast?latitude=",champaign_lat,"&longitude=",champaign_lon,"&hourly=rain,showers&temperature_unit=fahrenheit&windspeed_unit=mph&precipitation_unit=inch&timeformat=unixtime&past_days=1&forecast_days=16&timezone=America%2FChicago&models=ecmwf_ifs04,cma_grapes_global,bom_access_global,gfs_seamless,jma_seamless,icon_seamless,gem_seamless,meteofrance_seamless")
om <- rio::import(om_url, format = "json")
om_rain_hourly <- as_tibble( om$hourly) |> 
  mutate(datetime = as_datetime(time, tz = "America/Chicago")) |> 
  filter(time > now(tzone = "America/Chicago")-days(1)) |> 
  mutate(ECMWF = rain_ecmwf_ifs04 ) |> 
  select(!c(rain_ecmwf_ifs04)) |> 
  mutate(CMA = rain_cma_grapes_global + showers_cma_grapes_global) |> 
  select(!c(rain_cma_grapes_global,showers_cma_grapes_global)) |> 
  mutate(BOM = rain_bom_access_global + showers_bom_access_global) |> 
  select(!c(rain_bom_access_global,showers_bom_access_global)) |> 
  mutate(GFS = rain_gfs_seamless + showers_gfs_seamless) |> 
  select(!c(rain_gfs_seamless,showers_gfs_seamless)) |> 
  mutate(DWD = rain_icon_seamless + showers_icon_seamless) |> 
  select(!c(rain_icon_seamless,showers_icon_seamless)) |> 
  mutate(GEM = rain_gem_seamless + showers_gem_seamless) |> 
  select(!c(rain_gem_seamless,showers_gem_seamless)) |> 
  mutate(MeteoFrance = rain_meteofrance_seamless + showers_meteofrance_seamless) |> 
  select(!c(rain_meteofrance_seamless,showers_meteofrance_seamless)) |> 
  pivot_longer(!c(time,datetime)) 

om_rain_two_days <- om_rain_hourly |> 
  filter(time > now(tzone = "America/Chicago")) |> 
  filter(time < now(tzone = "America/Chicago")+hours(48)) |> 
  group_by(name) |> 
  mutate(two_day_rain = sum(value)) |> 
  ungroup() |> 
  select(name,two_day_rain) |> 
  distinct() |> 
  drop_na()

max_rain <- max(om_rain_two_days$two_day_rain)

## interactive ----
fig <- highchart() |> 
  hc_add_series(data = om_rain_two_days, 
                type = "bar",
                dataLabels = list(
                  enabled = TRUE,
                  format = "{point.y:,.2f}″"
                ),
                dataSorting = list(
                  enabled = TRUE
                ),
                color = "#b0dcf0",
                groupPadding = 0,
                hcaes(x = name,
                      y = two_day_rain)) |> 
  hc_xAxis(type = "category",
           lineColor = "lightgray",
           lineWidth = 0.5,
           tickLength = 0) |> 
  hc_tooltip(enabled = FALSE) |> 
  hc_yAxis(softMax = .25,
           visible = FALSE) |> 
  hc_add_theme(
    hc_theme_bloom()
  ) |>
  hc_credits(
    enabled = TRUE,
    text = paste("Source: Open-Meteo. Latest data:",now_formatted),
    href = "https://open-meteo.com") |> 
  hc_legend(enabled = FALSE) 
fig
saveWidget(widget = fig, file = "interactive/champaign_rain_forecasts.html",
           selfcontained = FALSE,
           libdir = "interactive")



# web ----
snow_web <- if_else(max_snow > 0,
                    paste0(
                      "## Two-Day Snow Forecasts

<iframe src=\"/interactive/champaign_snow_forecasts.html\" width=\"100%\" height=\"300\"> 
</iframe>
"
                    ),
""
)

rain_web <- if_else(max_rain > 0,
                    paste0(
                      "## Two-Day Rain Forecasts

<iframe src=\"/interactive/champaign_rain_forecasts.html\" width=\"100%\" height=\"300\"> 
</iframe>
"
                    ),
""
)

## make web page ----
cat(
  "---
layout: page
title: Weather Forecast Models
permalink: /projects/weather/forecasts
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

### Compare Weather Forecast Models for Champaign–Urbana

",now_html,"

## Temperature

<iframe src=\"/interactive/champaign_temp_forecasts.html\" width=\"100%\" height=\"300\"> 
</iframe>

",snow_web,"

",rain_web,"

## Weather Models:

ECMWF: European Centre for Medium-Range Weather Forecasts IFS  
CMA: China Meteorological Administration GFS GRAPES  
BOM: Australian Bureau of Meteorology ACCESS-G  
GFS: National Oceanic and Atmospheric Administration GFS & HRRR  
JMA: Japan Meteorological Agency MSM & GSM  
DWD: German Meteorological Service ICON  
GEM: Canadian Weather Service GEM  
MeteoFrance: MeteoFrance Arpege & Arome

",
file = "projects/weather/forecasts.md",
sep = ""
)
