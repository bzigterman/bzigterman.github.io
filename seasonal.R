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
  "&daily=temperature_2m_max,temperature_2m_min,snowfall_sum,rain_sum&hourly=temperature_2m&timeformat=unixtime&wind_speed_unit=mph&temperature_unit=fahrenheit&precipitation_unit=inch"
)
om <- rio::import(om_url, format = "json")
om_temp_hourly <- as_tibble(om$hourly) |>
  mutate(datetime = as_datetime(time, tz = "America/Chicago")) |>
  filter(time > now(tzone = "America/Chicago")) |>
  select(datetime, temperature_2m, time) |>
  rename(
    value = temperature_2m
  )

om_daily <- as_tibble(om$daily) |>
  mutate(datetime = as_datetime(time, tz = "America/Chicago")) |>
  mutate(date = as_date(datetime)) |>
  mutate(month_day = format(date, "%m-%d")) |>
  filter(time > now(tzone = "America/Chicago")) |>
  select(
    datetime,
    date,
    month_day,
    time,
    rain_sum,
    snowfall_sum,
    temperature_2m_max,
    temperature_2m_min
  ) |>
  rename(
    rain = rain_sum,
    snow = snowfall_sum,
    forecast_max = temperature_2m_max,
    forecast_min = temperature_2m_min
  )

## normals ----
normals <- read_csv("data/normals.csv") |>
  mutate(month_day = date) |>
  filter(date != "02-29") %>%
  mutate(
    date = ymd(paste0(year(today(tzone = "America/Chicago")), "-", date))
  ) %>%
  select(month_day, date, min, max) %>%
  mutate(Normal_min = min) %>%
  mutate(Normal_max = max) %>%
  select(date, month_day, Normal_min, Normal_max)

# normals and forecast temps ----
om_daily_normals <- om_daily %>%
  left_join(normals, by = "month_day") %>%
  select(
    date.x,
    forecast_max,
    forecast_min,
    Normal_min,
    Normal_max
  ) |>
  clean_names() |>
  rename(date = date_x) |>
  pivot_longer(
    !c(date),
    names_to = c("type", "min_max"),
    names_sep = "_"
  ) %>%
  pivot_wider(names_from = min_max, values_from = value) %>%
  select(date, type, max, min)
om_daily_normals$type <- factor(
  om_daily_normals$type,
  level = c("normal", "forecast")
)
## interactive ----
offset <- 60 *
  (hour(now(tzone = "America/Chicago")) - hour(now(tzone = "UTC")))
global <- getOption("highcharter.global")
global$useUTC <- FALSE
global$timezoneOffset <- offset
options(highcharter.global = global)


fig <- highchart() |>
  hc_add_series(
    data = om_daily_normals,
    animation = FALSE,
    type = "arearange",
    hcaes(x = date, low = round(min), high = round(max), group = type),
    step = "center",
    states = list(
      hover = list(
        enabled = FALSE
      ),
      inactive = list(
        enabled = FALSE
      )
    ),
    marker = list(
      radius = 1
    ),
    lineWidth = 0,
    fillOpacity = .8,
    tooltip = list(valueSuffix = "°")
  ) |>
  hc_xAxis(
    type = "datetime",
    gridLineColor = "#D9D9D9",
    gridLineWidth = .5,
    lineWidth = 0,
    opposite = TRUE,
    dateTimeLabelFormats = list(
      day = "%A"
    )
  ) |>
  hc_add_theme(
    hc_theme_bloom()
  ) |>
  hc_credits(
    enabled = TRUE,
    text = paste("Source: Open-Meteo. Latest data:", now_formatted),
    href = "https://open-meteo.com"
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
        color = "gray",
        width = 1,
        zIndex = 1,
        value = 32
      )
    ),
    endOnTick = FALSE,
    startOnTick = FALSE
  ) |>
  hc_tooltip(
    shared = TRUE,
    split = FALSE,
    borderWidth = 0,
    padding = 4,
    crosshairs = TRUE,
    dateTimeLabelFormats = list(
      hour = "%A, %b %e",
      minute = "%A, %b %e, %l%P",
      millisecond = "%A, %b %e, %l%P"
    )
  ) |>
  hc_legend(enabled = FALSE) %>%
  hc_colors(c("lightgray", "brown"))
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

<iframe src=\"/interactive/champaign_seasonal_forecast.html\" width=\"100%\" height=\"300\"> 
</iframe>

",
  file = "projects/weather/seasonal.md",
  sep = ""
)
