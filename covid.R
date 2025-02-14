library(httr)
library(rio)
library(tidyverse)
library(lubridate)
library(zoo)
library(jsonlite)
library(highcharter)
library(rvest)
library(xml2)
library(RColorBrewer)
library(htmlwidgets)

# interactives ----
## Champaign ----

iwss_download_url <- "https://iwss.uillinois.edu/wastewater-treatment-plant/download/159/"
iwss_download <- content(GET(iwss_download_url))

iwss <- iwss_download %>%
  mutate(Date = ymd(sample_collect_date)) %>%
  filter(method == 1) |> 
  select(Date, sars_cov_2, method) |> 
  mutate(sars_cov_2_avg = zoo::rollmean(sars_cov_2,
                                        k = 4,
                                        fill = NA,
                                        align = "right")) 

combined <- iwss |> 
  arrange(Date) |> 
  #fill(avg_hospitalized,.direction = "down") |> 
  fill(sars_cov_2_avg,.direction = "down")

fig <- hchart(combined,
              type = "line", 
              hcaes(x = Date,
                    y = sars_cov_2_avg),
              states = list(
                inactive = list(
                  enabled = FALSE
                )
              ),
              tooltip = list(valueDecimals = 0),
              connectNulls = TRUE,
              name = "Gene Copies Per Liter (w/ Moving Avg.)",
              label = list(
                format = "Wastewater",
                enabled = TRUE),
              color = "#4e79a7",
              yAxis = 0) %>%
  hc_yAxis_multiples(create_axis(naxis = 1, 
                                 #heights = c(1,1),
                                 endOnTick = FALSE,
                                 title = list(text = NULL))) %>%
  hc_add_series(
    data = combined,
    hcaes(x = Date,
          y = sars_cov_2),
    name = "Gene Copies Per Liter",
    color = "#c9d6e4",
    borderWidth = 0,
    states = list(
      inactive = list(
        enabled = FALSE
      )
    ),
    groupPadding = 0,
    pointPadding = 0,
    pointWidth = 2,
    enableMouseTracking = FALSE,
    zIndex = -3,
    type = "column",
    yAxis = 0)  %>%
  hc_credits(
    enabled = TRUE,
    text = "Source: CDC and IWSS",
    href = "https://bzigterman.com/interactive/champaign_covid.html") %>%
  hc_xAxis(title = list(text = NULL)) %>%
  hc_tooltip(shared = TRUE) %>%
  hc_add_theme(
    hc_theme_bloom()
  ) %>%
  hc_rangeSelector(enabled = TRUE,
                   buttons = list(
                     list(type = 'month', count = 3, text = '3m'),
                     list(type = 'month', count = 6, text = '6m'),
                     list(type = 'year', count = 1, text = '1y'),
                     list(type = 'year', count = 2, text = '2y'),
                     list(type = 'all', text = 'All')),
                   selected = 2)

fig
saveWidget(widget = fig, file = "interactive/champaign_covid.html",
           selfcontained = FALSE,
           libdir = "interactive")

## set variables ----
sarscov_latest <- tail(iwss, n = 1)$sars_cov_2

## usa ----
cdc_url <- "https://covid.cdc.gov/covid-data-tracker/COVIDData/getAjaxData?id=us_trend_by_USA_v2"
cdc_json <- rio::import(cdc_url, format = "json")
cdc_usa <- cdc_json$us_trend_by_Geography_v2 |> 
  mutate(Date = as_date(week_ending_date)) |> 
  select(Date,
         COVID_deaths_weekly,percent_pos)

cdc_latest_deaths <- tail(cdc_usa, n = 1)$COVID_deaths_weekly

fig <- hchart(cdc_usa,
              type = "line", 
              hcaes(x = Date,
                    y = COVID_deaths_weekly),
              states = list(
                inactive = list(
                  enabled = FALSE
                )
              ),
              tooltip = list(valueDecimals = 0),
              connectNulls = TRUE,
              name = "Avg. Deaths",
              label = list(
                enabled = TRUE),
              color = "black",
              yAxis = 0) %>%
  hc_yAxis_multiples(create_axis(naxis = 2, 
                                 heights = c(1,1),
                                 endOnTick = FALSE,
                                 title = list(text = NULL))) %>%
  hc_add_series(
    data = cdc_usa,
    connectNulls = TRUE,
    hcaes(x = Date,
          y = percent_pos),
    label = list(
      #format = "Wastewater",
      enabled = TRUE),
    states = list(
      inactive = list(
        enabled = FALSE
      )
    ),
    tooltip = list(valueDecimals = 0,
                   valueSuffix = "{value}%"),
    name = "Test Positivity",
    color = "#35978f",
    type = "line",
    yAxis = 1) %>%
  hc_credits(
    enabled = TRUE,
    text = "Source: CDC",
    href = "https://bzigterman.com/interactive/usa_covid.html") %>%
  hc_xAxis(title = list(text = NULL)) %>%
  hc_tooltip(shared = TRUE) %>%
  hc_add_theme(
    hc_theme_bloom()
  ) %>%
  hc_rangeSelector(enabled = TRUE,
                   buttons = list(
                     list(type = 'month', count = 3, text = '3m'),
                     list(type = 'month', count = 6, text = '6m'),
                     list(type = 'year', count = 1, text = '1y'),
                     list(type = 'year', count = 2, text = '2y'),
                     list(type = 'all', text = 'All')),
                   selected = 2)

fig
saveWidget(widget = fig, file = "interactive/usa_covid.html",
           selfcontained = FALSE,
           libdir = "interactive")

## world ----
#### cases & deaths ----
owid_url <- "https://github.com/owid/covid-19-data/raw/master/public/data/cases_deaths/new_cases.csv"
owid_url <- "https://catalog.ourworldindata.org/garden/covid/latest/cases_deaths/cases_deaths.csv"

owid_data <- rio::import(owid_url, format = "csv")

owid_new_cases_deaths_world <- owid_data |>
  filter(country == "World") |> 
  select(date,weekly_cases,weekly_deaths,
         weekly_pct_growth_cases,weekly_pct_growth_deaths) |> 
  mutate(avg_new_cases = weekly_cases) |> 
  mutate(avg_new_deaths = weekly_deaths) |> 
  mutate(pct_change_new_cases = weekly_pct_growth_cases) |> 
  mutate(pct_change_new_deaths = weekly_pct_growth_deaths) |> 
  mutate(Date = ymd(date)) |> 
  mutate(date = as_date(Date)) |> 
  mutate(location = "World") 

owid_latest_cases <- tail(owid_new_cases_deaths_world, n = 1)$weekly_cases
owid_latest_deaths <- tail(owid_new_cases_deaths_world, n = 1)$weekly_deaths

fig <- hchart(owid_new_cases_deaths_world,
              type = "line", 
              hcaes(x = Date,
                    y = avg_new_cases),
              states = list(
                inactive = list(
                  enabled = FALSE
                )
              ),
              tooltip = list(valueDecimals = 0),
              connectNulls = TRUE,
              name = "Avg. Cases",
              label = list(
                enabled = TRUE),
              color = "#B45F06",
              yAxis = 0) %>%
  hc_yAxis_multiples(create_axis(naxis = 2, 
                                 heights = c(1,1),
                                 endOnTick = FALSE,
                                 title = list(text = NULL))) %>%
  hc_add_series(
    data = owid_new_cases_deaths_world,
    connectNulls = TRUE,
    hcaes(x = Date,
          y = avg_new_deaths),
    label = list(
      #format = "Avg. New Deaths",
      enabled = TRUE),
    states = list(
      inactive = list(
        enabled = FALSE
      )
    ),
    tooltip = list(valueDecimals = 0),
    name = "Avg. Deaths",
    color = "#000000",
    type = "line",
    yAxis = 1) %>%
  hc_credits(
    enabled = TRUE,
    text = "Source: WHO",
    href = "https://bzigterman.com/interactive/world_covid.html") %>%
  hc_xAxis(title = list(text = NULL)) %>%
  hc_tooltip(shared = TRUE) %>%
  hc_add_theme(
    hc_theme_bloom()
  ) %>%
  hc_rangeSelector(enabled = TRUE,
                   buttons = list(
                     list(type = 'month', count = 3, text = '3m'),
                     list(type = 'month', count = 6, text = '6m'),
                     list(type = 'year', count = 1, text = '1y'),
                     list(type = 'year', count = 2, text = '2y'),
                     list(type = 'all', text = 'All')),
                   selected = 2)

fig
saveWidget(widget = fig, file = "interactive/world_covid.html",
           selfcontained = FALSE,
           libdir = "interactive")

# make web text ----
## covid ----
web_text <- paste(
  "---
layout: page
title: COVID-19
permalink: /projects/covid
imageurl: https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/Champaign_facet.png
webappicon: /covid.png
---

## Champaign County

<iframe src=\"/interactive/champaign_covid.html\" width=\"100%\" height=\"300\"> 
</iframe>

Charts for Champaign County are posted weekly on Mastodon <a rel=\"me\" href=\"https://mastodon.social/@ChampaignCovid\">@ChampaignCovid@mastodon.social</a>.

More information about wastewater surveillance is available from the [Illinois Wastewater Surveillance System](https://iwss.uillinois.edu/wastewater-treatment-plant/159/).

## United States

<iframe src=\"/interactive/usa_covid.html\" width=\"100%\" height=\"400\"> 
</iframe>

## World

<iframe src=\"/interactive/world_covid.html\" width=\"100%\" height=\"400\"> 
</iframe>

",
sep = ""
)

if (sarscov_latest >= 0 && 
    cdc_latest_deaths >= 0 && 
    owid_latest_cases >= 0 && 
    owid_latest_deaths >= 0 
) {
  write_lines(web_text,"projects/covid.md")
}
