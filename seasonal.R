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

champaign_lat <- 40.11
champaign_lon <- -88.21

now <- as_datetime(now())
now_formatted <- strftime(
  x = now,
  tz = "US/Central",
  format = "%I:%M% %p CT, %B %d"
)

now_html <- paste(
  "<p class=\"updated_time\"> Latest data: ",
  now_formatted,
  "</p>",
  sep = ""
)

today <- strftime(x = now, tz = "US/Central", format = "%B %d")

## get data ----
om_url <- paste0(
  "https://seasonal-api.open-meteo.com/v1/seasonal?latitude=",
  champaign_lat,
  "&longitude=",
  champaign_lon,
  "&daily=snowfall_sum,rain_sum&hourly=temperature_2m&timeformat=unixtime&wind_speed_unit=mph&temperature_unit=fahrenheit&precipitation_unit=inch"
)
om <- rio::import(om_url, format = "json")
om_temp_hourly <- as_tibble(om$hourly) |>
  mutate(datetime = as_datetime(time, tz = "America/Chicago")) |>
  filter(time > now(tzone = "America/Chicago")) |>
  select(datetime, temperature_2m, time) |>
  rename(
    value = temperature_2m
  )

om_precip_daily <- as_tibble(om$daily) |>
  mutate(datetime = as_datetime(time, tz = "America/Chicago")) |>
  filter(time > now(tzone = "America/Chicago")) |>
  select(datetime, time, rain_sum, snowfall_sum) |>
  rename(
    rain = rain_sum,
    snow = snowfall_sum
  )

## interactive ----
offset <- 60 * (hour(now(tzone = "America/Chicago")) - hour(now(tzone = "UTC")))
global <- getOption("highcharter.global")
global$useUTC <- FALSE
global$timezoneOffset <- offset
options(highcharter.global = global)

fig <- highchart() |>
  hc_add_series(
    data = om_temp_hourly,
    animation = FALSE,
    name = "Temperature",
    type = "line",
    zones = list(
      c(value = 0, color = "#F8D4FC"),
      c(value = 5, color = "#E5A4EB"),
      c(value = 10, color = "#D392DD"),
      c(value = 15, color = "#C07ECC"),
      c(value = 20, color = "#9D63C2"),
      c(value = 25, color = "#794DB4"),
      c(value = 30, color = "#5B4FA6"),
      c(value = 32, color = "#527DC7"),
      c(value = 40, color = "#65C1DE"),
      c(value = 45, color = "#6EDAE0"),
      c(value = 50, color = "#6EDBA2"),
      c(value = 55, color = "#69C954"),
      c(value = 60, color = "#93D452"),
      c(value = 65, color = "#E3E65B"),
      c(value = 70, color = "#FFFF61"),
      c(value = 75, color = "#F8D456"),
      c(value = 80, color = "#ED9749"),
      c(value = 85, color = "#DC6641"),
      c(value = 90, color = "#CA593E"),
      c(value = 95, color = "#B6493B"),
      c(value = 200, color = "#A44139")
    ),
    label = list(
      enabled = TRUE
    ),
    color = "black",
    marker = list(enabled = FALSE),
    connectNulls = TRUE,
    tooltip = list(valueSuffix = "°", valueDecimals = 0),
    hcaes(x = time * 1000, y = value)
  ) |>
  hc_tooltip(
    shared = TRUE,
    split = TRUE,
    borderWidth = 0,
    padding = 4,
    crosshairs = TRUE,
    dateTimeLabelFormats = list(
      hour = "%A, %b %e, %l%P",
      minute = "%A, %b %e, %l%P",
      millisecond = "%A, %b %e, %l%P"
    )
  ) |>
  hc_yAxis(
    gridLineColor = "#D9D9D9",
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
    startOnTick = FALSE
  ) |>
  hc_xAxis(
    type = "datetime",
    gridLineColor = "#D9D9D9",
    gridLineWidth = .5,
    lineWidth = 0,
    opposite = TRUE,
    dateTimeLabelFormats = list(
      day = "%A"
    ),
    min = 1000 * min(om_temp_hourly$time),
    max = 1000 * max(om_temp_hourly$time)
  ) |>
  hc_add_theme(
    hc_theme_bloom()
  ) |>
  hc_credits(
    enabled = TRUE,
    text = paste("Source: Open-Meteo. Latest data:", now_formatted),
    href = "https://open-meteo.com"
  ) |>
  hc_legend(enabled = FALSE)

fig
saveWidget(
  widget = fig,
  file = "interactive/champaign_seasonal_forecast.html",
  selfcontained = FALSE,
  libdir = "interactive"
)

# web ----
## make web page ----
cat(
  "---
layout: page
title: Seasonal Forecast
permalink: /projects/weather/seasonal
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

### Seasonal Forecast for Champaign–Urbana

",
  now_html,
  "

<iframe src=\"/interactive/champaign_seasonal_forecast.html\" width=\"100%\" height=\"300\"> 
</iframe>

",
  file = "projects/weather/seasonal.md",
  sep = ""
)
