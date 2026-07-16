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

# temperature ----
## get data ----
om_url <-
  paste0(
    "https://ensemble-api.open-meteo.com/v1/ensemble?latitude=",
    champaign_lat,
    "&longitude=",
    champaign_lon,
    "&hourly=temperature_2m,snowfall,rain&models=ncep_gefs_ensemble_mean_seamless,ncep_aigefs025_ensemble_mean,ukmo_global_ensemble_mean_20km,dwd_icon_eps_ensemble_mean_seamless,ecmwf_ifs025_ensemble_mean,ecmwf_aifs025_ensemble_mean,cmc_gem_geps_ensemble_mean,bom_access_global_ensemble_mean,google_weathernext2_ensemble_mean&timezone=auto&past_days=1&forecast_days=21&timeformat=unixtime&precipitation_unit=inch&temperature_unit=fahrenheit"
  )

om <- rio::import(om_url, format = "json")
om_temp_hourly <- as_tibble(om$hourly) |>
  mutate(datetime = as_datetime(time, tz = "America/Chicago")) |>
  filter(time > now(tzone = "America/Chicago") - days(1)) |>
  # only keep columns with temperature data
  select(time, datetime, contains("temperature")) |>
  mutate(WeatherNext = temperature_2m_google_weathernext2_ensemble_mean) |>
  select(!temperature_2m_google_weathernext2_ensemble_mean) |>
  mutate(DWD = temperature_2m_dwd_icon_eps_ensemble_mean_seamless) |>
  select(!temperature_2m_dwd_icon_eps_ensemble_mean_seamless) |>
  mutate(UKMO = temperature_2m_ukmo_global_ensemble_mean_20km) |>
  select(!temperature_2m_ukmo_global_ensemble_mean_20km) |>
  mutate(CMC = temperature_2m_cmc_gem_geps_ensemble_mean) |>
  select(!temperature_2m_cmc_gem_geps_ensemble_mean) |>
  mutate(ECMWF = temperature_2m_ecmwf_ifs025_ensemble_mean) |>
  select(!temperature_2m_ecmwf_ifs025_ensemble_mean) |>
  mutate(AIFS = temperature_2m_ecmwf_aifs025_ensemble_mean) |>
  select(!temperature_2m_ecmwf_aifs025_ensemble_mean) |>
  mutate(NOAA = temperature_2m_ncep_gefs_ensemble_mean_seamless) |>
  select(!temperature_2m_ncep_gefs_ensemble_mean_seamless) |>
  mutate(AIGEFS = temperature_2m_ncep_aigefs025_ensemble_mean) |>
  select(!temperature_2m_ncep_aigefs025_ensemble_mean) |>
  mutate(ABOM = temperature_2m_bom_access_global_ensemble_mean) |>
  select(!temperature_2m_bom_access_global_ensemble_mean) |>
  pivot_longer(!c(time, datetime)) |>
  drop_na() |>
  mutate(name = as_factor(name))

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
    color = "black",
    marker = list(enabled = FALSE),
    connectNulls = TRUE,
    tooltip = list(valueSuffix = "°", headerFormat = "", valueDecimals = 0),
    hcaes(x = time * 1000, y = value, group = name)
  ) |>
  hc_tooltip(
    shared = TRUE,
    borderWidth = 0,
    padding = 4,
    split = TRUE,
    crosshairs = TRUE
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
        value = as.numeric(now(tzone = "America/Chicago")) * 1000
      )
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
  hc_legend(
    floating = TRUE,
    verticalAlign = "bottom",
    layout = "vertical",
    align = "right"
  ) |>
  hc_chart(
    scrollablePlotArea = list(
      minWidth = 700
    )
  )
fig
saveWidget(
  widget = fig,
  file = "interactive/champaign_temp_forecasts.html",
  selfcontained = FALSE,
  libdir = "interactive"
)

# snow ----
## get data ----
om_snow_hourly <- as_tibble(om$hourly) |>
  mutate(datetime = as_datetime(time, tz = "America/Chicago")) |>
  filter(time > now(tzone = "America/Chicago") - days(1)) |>
  select(time, datetime, contains("snowfall")) |>
  mutate(ECMWF = snowfall_ecmwf_ifs025_ensemble_mean) |>
  select(!snowfall_ecmwf_ifs025_ensemble_mean) |>
  mutate(AIFS = snowfall_ecmwf_aifs025_ensemble_mean) |>
  select(!snowfall_ecmwf_aifs025_ensemble_mean) |>
  mutate(CMC = snowfall_cmc_gem_geps_ensemble_mean) |>
  select(!snowfall_cmc_gem_geps_ensemble_mean) |>
  mutate(ABOM = snowfall_bom_access_global_ensemble_mean) |>
  select(!snowfall_bom_access_global_ensemble_mean) |>
  mutate(NOAA = snowfall_ncep_gefs_ensemble_mean_seamless) |>
  select(!snowfall_ncep_gefs_ensemble_mean_seamless) |>
  mutate(AIGEFS = snowfall_ncep_aigefs025_ensemble_mean) |>
  select(!snowfall_ncep_aigefs025_ensemble_mean) |>
  mutate(WeatherNext = snowfall_google_weathernext2_ensemble_mean) |>
  select(!snowfall_google_weathernext2_ensemble_mean) |>
  mutate(DWD = snowfall_dwd_icon_eps_ensemble_mean_seamless) |>
  select(!snowfall_dwd_icon_eps_ensemble_mean_seamless) |>
  mutate(UKMO = snowfall_ukmo_global_ensemble_mean_20km) |>
  select(!snowfall_ukmo_global_ensemble_mean_20km) |>
  pivot_longer(!c(time, datetime)) |>
  drop_na() |>
  mutate(name = as_factor(name))

om_snow_two_days <- om_snow_hourly |>
  filter(time > now(tzone = "America/Chicago")) |>
  filter(time < now(tzone = "America/Chicago") + hours(48)) |>
  group_by(name) |>
  mutate(two_day_snow = sum(value)) |>
  ungroup() |>
  select(name, two_day_snow) |>
  distinct() |>
  drop_na() |>
  filter(two_day_snow >= 0)

max_snow <- max(om_snow_two_days$two_day_snow)

## interactive ----
fig <- highchart() |>
  hc_add_series(
    data = om_snow_two_days,
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
    hcaes(x = name, y = two_day_snow)
  ) |>
  hc_xAxis(
    type = "category",
    lineColor = "lightgray",
    lineWidth = 0.5,
    tickLength = 0
  ) |>
  hc_tooltip(enabled = FALSE) |>
  hc_yAxis(softMax = 2, visible = FALSE) |>
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
  file = "interactive/champaign_snow_forecasts.html",
  selfcontained = FALSE,
  libdir = "interactive"
)

# rain ----
## get data ----
om_rain_hourly <- as_tibble(om$hourly) |>
  mutate(datetime = as_datetime(time, tz = "America/Chicago")) |>
  filter(time > now(tzone = "America/Chicago") - days(1)) |>
  select(time, datetime, contains("rain")) |>
  mutate(ECMWF = rain_ecmwf_ifs025_ensemble_mean) |>
  select(!rain_ecmwf_ifs025_ensemble_mean) |>
  mutate(AIFS = rain_ecmwf_aifs025_ensemble_mean) |>
  select(!rain_ecmwf_aifs025_ensemble_mean) |>
  mutate(CMC = rain_cmc_gem_geps_ensemble_mean) |>
  select(!rain_cmc_gem_geps_ensemble_mean) |>
  mutate(ABOM = rain_bom_access_global_ensemble_mean) |>
  select(!rain_bom_access_global_ensemble_mean) |>
  mutate(NOAA = rain_ncep_gefs_ensemble_mean_seamless) |>
  select(!rain_ncep_gefs_ensemble_mean_seamless) |>
  mutate(AIGEFS = rain_ncep_aigefs025_ensemble_mean) |>
  select(!rain_ncep_aigefs025_ensemble_mean) |>
  mutate(WeatherNext = rain_google_weathernext2_ensemble_mean) |>
  select(!rain_google_weathernext2_ensemble_mean) |>
  mutate(DWD = rain_dwd_icon_eps_ensemble_mean_seamless) |>
  select(!rain_dwd_icon_eps_ensemble_mean_seamless) |>
  mutate(UKMO = rain_ukmo_global_ensemble_mean_20km) |>
  select(!rain_ukmo_global_ensemble_mean_20km) |>
  pivot_longer(!c(time, datetime)) |>
  drop_na() |>
  mutate(name = as_factor(name))

om_rain_two_days <- om_rain_hourly |>
  filter(time > now(tzone = "America/Chicago")) |>
  filter(time < now(tzone = "America/Chicago") + hours(48)) |>
  group_by(name) |>
  mutate(two_day_rain = sum(value)) |>
  ungroup() |>
  select(name, two_day_rain) |>
  distinct() |>
  drop_na() |>
  filter(two_day_rain >= 0)

max_rain <- max(om_rain_two_days$two_day_rain)

## interactive ----
fig <- highchart() |>
  hc_add_series(
    data = om_rain_two_days,
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
    hcaes(x = name, y = two_day_rain)
  ) |>
  hc_xAxis(
    type = "category",
    lineColor = "lightgray",
    lineWidth = 0.5,
    tickLength = 0
  ) |>
  hc_tooltip(enabled = FALSE) |>
  hc_yAxis(softMax = .5, visible = FALSE) |>
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
  file = "interactive/champaign_rain_forecasts.html",
  selfcontained = FALSE,
  libdir = "interactive"
)


# web ----
snow_web <- if_else(
  max_snow > 0,
  paste0(
    "## Two-Day Snow Forecasts

<iframe src=\"/interactive/champaign_snow_forecasts.html\" width=\"100%\" height=\"300\"> 
</iframe>
"
  ),
  ""
)

rain_web <- if_else(
  max_rain > 0,
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

",
  now_html,
  "

## Temperature

<iframe src=\"/interactive/champaign_temp_forecasts.html\" width=\"100%\" height=\"300\"> 
</iframe>

",
  snow_web,
  "

",
  rain_web,
  "

## Weather Models:

ECMWF: European Centre for Medium-Range Weather Forecasts IFS  
AIFS: [European Centre for Medium-Range Weather Forecasts AIFS](https://openmeteo.substack.com/p/artificial-intelligence-weather-model)  
NOAA: National Oceanic and Atmospheric Administration GFS & HRRR  
AIGEFS: NOAA GEFS with AI post-processing
DWD: German Meteorological Service ICON  
WeatherNext: Google WeatherNext 2
UKMO: UK Met Office Global Model
CMC: Canadian Meteorological Centre GEM GEPS


",
  file = "projects/weather/forecasts.md",
  sep = ""
)
