library(tidyverse)
library(httr)
library(htmlwidgets)

url <- "https://climate-api.open-meteo.com/v1/climate?latitude=40.11&longitude=-88.21&start_date=1950-01-01&end_date=2050-12-31&daily=temperature_2m_max,precipitation_sum&models=CMCC_CM2_VHR4,FGOALS_f3_H,HiRAM_SIT_HR,MRI_AGCM3_2_S,EC_Earth3P_HR,MPI_ESM1_2_XR,NICAM16_8S&temperature_unit=fahrenheit&windspeed_unit=mph&precipitation_unit=inch"
om <- as_tibble(rio::import(url, format = "json")$daily) |> 
  mutate(Date = ymd(time))

om_yearly <- om |> 
  mutate(year = year(Date)) |> 
  group_by(year) |> 
  mutate(CMCC_CM2_VHR4_mean = mean(temperature_2m_max_CMCC_CM2_VHR4)) |> 
  select(!temperature_2m_max_CMCC_CM2_VHR4) |> 
  mutate(FGOALS_f3_H_mean = mean(temperature_2m_max_FGOALS_f3_H)) |>
  select(!temperature_2m_max_FGOALS_f3_H) |> 
  mutate(HiRAM_SIT_HR_mean = mean(temperature_2m_max_HiRAM_SIT_HR)) |>
  select(!temperature_2m_max_HiRAM_SIT_HR) |> 
  mutate(MRI_AGCM3_2_S_mean = mean(temperature_2m_max_MRI_AGCM3_2_S)) |>
  select(!temperature_2m_max_MRI_AGCM3_2_S) |> 
  mutate(EC_Earth3P_HR_mean = mean(temperature_2m_max_EC_Earth3P_HR)) |>
  select(!temperature_2m_max_EC_Earth3P_HR) |> 
  mutate(MPI_ESM1_2_XR_mean = mean(temperature_2m_max_MPI_ESM1_2_XR)) |>
  select(!temperature_2m_max_MPI_ESM1_2_XR) |> 
  mutate(NICAM16_8S_mean = mean(temperature_2m_max_NICAM16_8S)) |>
  select(!temperature_2m_max_NICAM16_8S) |> 
  mutate(CMCC_CM2_VHR4_sum = sum(precipitation_sum_CMCC_CM2_VHR4)) |> 
  select(!precipitation_sum_CMCC_CM2_VHR4) |> 
  mutate(FGOALS_f3_H_sum = sum(precipitation_sum_FGOALS_f3_H)) |>
  select(!precipitation_sum_FGOALS_f3_H) |> 
  mutate(HiRAM_SIT_HR_sum = sum(precipitation_sum_HiRAM_SIT_HR)) |>
  select(!precipitation_sum_HiRAM_SIT_HR) |> 
  mutate(MRI_AGCM3_2_S_sum = sum(precipitation_sum_MRI_AGCM3_2_S)) |>
  select(!precipitation_sum_MRI_AGCM3_2_S) |> 
  mutate(EC_Earth3P_HR_sum = sum(precipitation_sum_EC_Earth3P_HR)) |>
  select(!precipitation_sum_EC_Earth3P_HR) |> 
  mutate(MPI_ESM1_2_XR_sum = sum(precipitation_sum_MPI_ESM1_2_XR)) |>
  select(!precipitation_sum_MPI_ESM1_2_XR) |> 
  mutate(NICAM16_8S_sum = sum(precipitation_sum_NICAM16_8S)) |>
  select(!precipitation_sum_NICAM16_8S) |> 
  ungroup() |> 
  select(!Date) |> 
  select(!time) |> 
  distinct() |> 
  mutate(Date = ymd(paste0(year,"-01-01")))

fig <- highchart() |> 
  hc_add_series(om_yearly,
                type = "line", 
                hcaes(x = Date,
                      y = CMCC_CM2_VHR4_mean),
                tooltip = list(valueDecimals = 0,
                               valueSuffix = "°"),
                label = list(
                  enabled = TRUE),
                name = "CMCC",
                states = list(
                  inactive = list(
                    enabled = FALSE
                  )
                )) |> 
  hc_add_series(om_yearly,
                type = "line", 
                tooltip = list(valueDecimals = 0,
                               valueSuffix = "°"),
                hcaes(x = Date,
                      y = FGOALS_f3_H_mean),
                label = list(
                  enabled = TRUE),
                name = "CAS",
                states = list(
                  inactive = list(
                    enabled = FALSE
                  )
                )) |> 
  hc_add_series(om_yearly,
                type = "line", 
                tooltip = list(valueDecimals = 0,
                               valueSuffix = "°"),
                hcaes(x = Date,
                      y = HiRAM_SIT_HR_mean),
                label = list(
                  enabled = TRUE),
                name = "AS-RCEC",
                states = list(
                  inactive = list(
                    enabled = FALSE
                  )
                )) |> 
  hc_add_series(om_yearly,
                type = "line", 
                tooltip = list(valueDecimals = 0,
                               valueSuffix = "°"),
                hcaes(x = Date,
                      y = MRI_AGCM3_2_S_mean),
                label = list(
                  enabled = TRUE),
                name = "MRI",
                states = list(
                  inactive = list(
                    enabled = FALSE
                  )
                )) |> 
  hc_add_series(om_yearly,
                type = "line", 
                tooltip = list(valueDecimals = 0,
                               valueSuffix = "°"),
                hcaes(x = Date,
                      y = EC_Earth3P_HR_mean),
                label = list(
                  enabled = TRUE),
                name = "EC-Earth",
                states = list(
                  inactive = list(
                    enabled = FALSE
                  )
                )) |> 
  hc_add_series(om_yearly,
                type = "line", 
                tooltip = list(valueDecimals = 0,
                               valueSuffix = "°"),
                hcaes(x = Date,
                      y = MPI_ESM1_2_XR_mean),
                label = list(
                  enabled = TRUE),
                name = "MPI",
                states = list(
                  inactive = list(
                    enabled = FALSE
                  )
                )) |> 
  hc_add_series(om_yearly,
                type = "line", 
                tooltip = list(valueDecimals = 0,
                               valueSuffix = "°"),
                hcaes(x = Date,
                      y = NICAM16_8S_mean),
                label = list(
                  enabled = TRUE),
                name = "MIROC",
                states = list(
                  inactive = list(
                    enabled = FALSE
                  )
                )) |> 
  hc_tooltip(split = TRUE) %>%
  hc_xAxis(type = "datetime",
           plotLines = list(
             list(
               label = list(text = "Today"),
               color = "#595959",
               width = 1,
               zIndex = 1,
               value = as.numeric( now(tzone = "America/Chicago"))*1000
             )),
           dateTimeLabelFormats = list(
             week = "%B %e"
           )) |> 
  hc_add_theme(
    hc_theme_538()
  )
fig

saveWidget(widget = fig, file = "interactive/climate_temperature.html",
           selfcontained = FALSE,
           libdir = "interactive")

fig <- highchart() |> 
  hc_add_series(om_yearly,
                type = "line", 
                hcaes(x = Date,
                      y = CMCC_CM2_VHR4_sum),
                tooltip = list(valueDecimals = 0,
                               valueSuffix = "°"),
                label = list(
                  enabled = TRUE),
                name = "CMCC",
                states = list(
                  inactive = list(
                    enabled = FALSE
                  )
                )) |> 
  hc_add_series(om_yearly,
                type = "line", 
                tooltip = list(valueDecimals = 0,
                               valueSuffix = "°"),
                hcaes(x = Date,
                      y = FGOALS_f3_H_sum),
                label = list(
                  enabled = TRUE),
                name = "CAS",
                states = list(
                  inactive = list(
                    enabled = FALSE
                  )
                )) |> 
  hc_add_series(om_yearly,
                type = "line", 
                tooltip = list(valueDecimals = 0,
                               valueSuffix = "°"),
                hcaes(x = Date,
                      y = HiRAM_SIT_HR_sum),
                label = list(
                  enabled = TRUE),
                name = "AS-RCEC",
                states = list(
                  inactive = list(
                    enabled = FALSE
                  )
                )) |> 
  hc_add_series(om_yearly,
                type = "line", 
                tooltip = list(valueDecimals = 0,
                               valueSuffix = "°"),
                hcaes(x = Date,
                      y = MRI_AGCM3_2_S_sum),
                label = list(
                  enabled = TRUE),
                name = "MRI",
                states = list(
                  inactive = list(
                    enabled = FALSE
                  )
                )) |> 
  hc_add_series(om_yearly,
                type = "line", 
                tooltip = list(valueDecimals = 0,
                               valueSuffix = "°"),
                hcaes(x = Date,
                      y = EC_Earth3P_HR_sum),
                label = list(
                  enabled = TRUE),
                name = "EC-Earth",
                states = list(
                  inactive = list(
                    enabled = FALSE
                  )
                )) |> 
  hc_add_series(om_yearly,
                type = "line", 
                tooltip = list(valueDecimals = 0,
                               valueSuffix = "°"),
                hcaes(x = Date,
                      y = MPI_ESM1_2_XR_sum),
                label = list(
                  enabled = TRUE),
                name = "MPI",
                states = list(
                  inactive = list(
                    enabled = FALSE
                  )
                )) |> 
  hc_add_series(om_yearly,
                type = "line", 
                tooltip = list(valueDecimals = 0,
                               valueSuffix = "°"),
                hcaes(x = Date,
                      y = NICAM16_8S_sum),
                label = list(
                  enabled = TRUE),
                name = "MIROC",
                states = list(
                  inactive = list(
                    enabled = FALSE
                  )
                )) |> 
  hc_tooltip(split = TRUE) %>%
  hc_xAxis(type = "datetime",
           plotLines = list(
             list(
               label = list(text = "Today"),
               color = "#595959",
               width = 1,
               zIndex = 1,
               value = as.numeric( now(tzone = "America/Chicago"))*1000
             )),
           dateTimeLabelFormats = list(
             week = "%B %e"
           )) |> 
  hc_add_theme(
    hc_theme_538()
  )
fig

saveWidget(widget = fig, file = "interactive/climate_precipitation.html",
           selfcontained = FALSE,
           libdir = "interactive")


# make web text ----
web_text <- paste(
  "---
layout: page
title: Climate
permalink: /projects/climate
imageurl: https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/Champaign_facet.png
---

## Annual Average High Temperature

<iframe src=\"/interactive/climate_temperature.html\" width=\"100%\" height=\"400\"> 
</iframe>

## Annual Precipitation

<iframe src=\"/interactive/climate_precipitation.html\" width=\"100%\" height=\"400\"> 
</iframe>

Source: CMIP6, via [Open-Meteo](https://open-meteo.com/en/docs/climate-api)

",
sep = ""
)

write_lines(web_text,"projects/climate.md")


