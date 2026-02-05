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
  "&monthly=temperature_2m_mean,temperature_max24h_2m_mean,temperature_min24h_2m_mean,precipitation_mean&weekly=temperature_max6h_2m_mean,temperature_min6h_2m_mean&daily=temperature_2m_max,temperature_2m_min,snowfall_sum,rain_sum&hourly=temperature_2m&timeformat=unixtime&wind_speed_unit=mph&temperature_unit=fahrenheit&precipitation_unit=inch"
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
om_weekly <- as_tibble(om$weekly) |>
  mutate(datetime = as_datetime(time)) |>
  mutate(date = as_date(datetime)) |>
  # filter(time > now(tzone = "America/Chicago")) |>
  select(
    datetime,
    date,
    temperature_max6h_2m_mean,
    temperature_min6h_2m_mean
  ) |>
  rename(
    forecast_max = temperature_max6h_2m_mean,
    forecast_min = temperature_min6h_2m_mean
  ) |>
  # extend data for entire week
  uncount(weights = 7) |>
  # add days to date
  group_by(date) |>
  mutate(day = row_number()) |>
  ungroup() |>
  mutate(date = date + days(day - 1)) |>
  select(-day) |>
  arrange(date)


om_monthly <- as_tibble(om$monthly) |>
  mutate(datetime = as_datetime(time)) |>
  mutate(date = as_date(datetime)) |>
  # filter(time > now(tzone = "America/Chicago")) |>
  # make date the first day of the month
  mutate(date = make_date(year = year(date), month = month(date), day = 1)) |>
  select(
    #datetime,
    date,
    #month_day,
    temperature_max24h_2m_mean,
    temperature_min24h_2m_mean,
    precipitation_mean
  ) |>
  rename(
    forecast_max = temperature_max24h_2m_mean,
    forecast_min = temperature_min24h_2m_mean,
    monthly_avg_precip = precipitation_mean
  ) |>
  # make a row for each day of the month
  uncount(weights = days_in_month(date)) |>
  # add days to date
  group_by(date) |>
  mutate(day = row_number()) |>
  ungroup() |>
  mutate(date = date + days(day - 1)) |>
  select(-day) |>
  arrange(date)

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
  select(date, month_day, Normal_min, Normal_max) |>
  # change the date to next year if the date has already passed this year, unless the month is this month
  mutate(
    date = if_else(
      date < today(tzone = "America/Chicago") &
        month(date) != month(today(tzone = "America/Chicago")),
      date + years(1),
      date
    )
  ) |>
  # just the next six months
  filter(
    date <=
      ymd(paste0(
        year(today(tzone = "America/Chicago")),
        "-",
        month(today(tzone = "America/Chicago")),
        "-",
        1
      )) +
        months(6)
  ) |>
  # arrange by date
  arrange(date)

normals_and_om_monthly <- right_join(normals, om_monthly, by = "date")

## interactive ----
fig <- highchart() |>
  hc_add_series(
    data = normals_and_om_monthly,
    animation = FALSE,
    name = "Normal",
    type = "arearange",
    hcaes(
      x = date,
      low = round(Normal_min),
      high = round(Normal_max)
    ),
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
  # line chart with the monthly average highs and lows
  hc_add_series(
    data = normals_and_om_monthly,
    name = "Monthly Forecast Avg. High",
    animation = FALSE,
    type = "line",
    step = "center",
    hcaes(x = date, y = round(forecast_max)),
    states = list(
      hover = list(
        enabled = TRUE,
        lineWidth = 2
      ),
      inactive = list(
        enabled = FALSE
      )
    ),
    marker = list(
      radius = 0
    ),
    lineWidth = 2,
    tooltip = list(valueSuffix = "°")
  ) |>
  hc_add_series(
    data = normals_and_om_monthly,
    animation = FALSE,
    name = "Monthly Forecast Avg. Low",
    type = "line",
    step = "center",
    hcaes(x = date, y = round(forecast_min)),
    states = list(
      hover = list(
        enabled = TRUE,
        lineWidth = 2
      ),
      inactive = list(
        enabled = FALSE
      )
    ),
    marker = list(
      radius = 0
    ),
    lineWidth = 2,
    tooltip = list(valueSuffix = "°")
  ) |>
  # add lines for weekly highs and lows
  hc_add_series(
    data = om_weekly,
    animation = FALSE,
    name = "Weekly Forecast Avg. High",
    type = "line",
    hcaes(x = date, y = round(forecast_max)),
    states = list(
      hover = list(
        enabled = TRUE,
        lineWidth = 2
      ),
      inactive = list(
        enabled = FALSE
      )
    ),
    marker = list(
      radius = 0
    ),
    lineWidth = 2,
    tooltip = list(valueSuffix = "°")
  ) |>
  hc_add_series(
    data = om_weekly,
    animation = FALSE,
    name = "Weekly Forecast Avg. Low",
    type = "line",
    hcaes(x = date, y = round(forecast_min)),
    states = list(
      hover = list(
        enabled = TRUE,
        lineWidth = 2
      ),
      inactive = list(
        enabled = FALSE
      )
    ),
    marker = list(
      radius = 0
    ),
    lineWidth = 2,
    tooltip = list(valueSuffix = "°")
  ) |>
  hc_xAxis(
    type = "datetime",
    gridLineColor = "#D9D9D9",
    gridLineWidth = .5,
    lineWidth = 0,
    plotLines = list(
      list(
        label = list(text = "Today"),
        color = "#595959",
        width = 1,
        zIndex = 1,
        value = as.numeric(as_datetime(
          today(tzone = "America/Chicago")
        )) *
          1000
      )
    ),
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
    split = TRUE,
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
  hc_colors(c(
    "lightgray",
    "brown",
    "purple",
    "brown",
    "purple",
  ))
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
