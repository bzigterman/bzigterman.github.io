library(tidyverse)
library(highcharter)
library(rvest)
library(httr)
library(janitor)
library(readr)
library(httr)
library(lubridate)
library(rio)
library(htmlwidgets)
library(jsonlite)

# get data ----

## lake mead ----
get_mead_records <- function(page) {
  url <- paste0("https://data.usbr.gov/rise/api/result?itemId=6123&itemsPerPage=10000&page=",page)
  powell <- GET(url,
                accept("application/vnd.api+json"))
  powell <- content(powell, as = "text")
  powell <-  fromJSON(powell, flatten = TRUE)
  powell <- powell$data %>%
    clean_names()
  powell_data <- powell %>%
    select(attributes_date_time, attributes_result) 
}
page_1 <- get_mead_records(1)
page_2 <- get_mead_records(2)
page_3 <- get_mead_records(3)
page_4 <- get_mead_records(4)
mead_records <- full_join(page_1,
                          page_2) %>%
  full_join(page_3) %>%
  full_join(page_4) %>%
  mutate(date = as_date( ymd_hms(attributes_date_time))) %>%
  mutate(value = attributes_result) %>%
  select(date, value)

## lake powell -----
get_powell_records <- function(page) {
  url <- paste0("https://data.usbr.gov/rise/api/result?itemId=508&itemsPerPage=10000&page=",page)
  powell <- GET(url,
                accept("application/vnd.api+json"))
  powell <- content(powell, as = "text")
  powell <-  fromJSON(powell, flatten = TRUE)
  powell <- powell$data %>%
    clean_names()
  powell_data <- powell %>%
    select(attributes_date_time, attributes_result) 
}
powell_1 <- get_powell_records(1)
powell_2 <- get_powell_records(2)
powell_3 <- get_powell_records(3)
powell_records <- full_join(powell_1,
                            powell_2) %>%
  full_join(powell_3) %>%
  mutate(date = as_date( ymd_hms(attributes_date_time))) %>%
  mutate(value = attributes_result) %>%
  select(date, value)

## charts ----
fig <- hchart(mead_records, "line", hcaes(x = date,
                                          y = value),
              color = "#199fa8",
              animation = FALSE,
              name = "Level") %>%
  hc_yAxis(title = "",
           plotLines = list(
             list(
               label = list(text = "Dead Pool",
                            align = "right",
                            x = -5),
               color = "#808080",
               width = 1.5,
               value = 895,
               zIndex = 1),
             list(
               label = list(text = "Full Pool",
                            align = "right",
                            x = -5),
               color = "#808080",
               width = 1.5,
               value = 1229,
               zIndex = 1))) %>%
  hc_xAxis(title = "") %>%
  hc_add_theme(
    hc_theme_bloom()
  ) %>%
  hc_rangeSelector(enabled = TRUE,
                   buttons = list(
                     list(type = 'year', count = 2, text = '2y'),
                     list(type = 'year', count = 10, text = '10y'),
                     list(type = 'year', count = 30, text = '30y'),
                     list(type = 'all', text = 'All')),
                   selected = 1)
fig
saveWidget(widget = fig, file = "interactive/lake_mead_water_level.html",
           selfcontained = FALSE,
           libdir = "interactive")

fig <- hchart(powell_records, "line", hcaes(x = date,
                                            y = value),
              color = "#199fa8",
              animation = FALSE,
              name = "Level") %>%
  hc_yAxis(title = "",
           plotLines = list(
             list(
               label = list(text = "Dead Pool",
                            align = "right",
                            x = -5),
               color = "#808080",
               width = 1.5,
               value = 3370,
               zIndex = 1),
             list(
               label = list(text = "Full Pool",
                            align = "right",
                            x = -5),
               color = "#808080",
               width = 1.5,
               value = 3708.34,
               zIndex = 1))) %>%
  hc_xAxis(title = "") %>%
  hc_add_theme(
    hc_theme_bloom()
  ) %>%
  hc_rangeSelector(enabled = TRUE,
                   buttons = list(
                     list(type = 'year', count = 2, text = '2y'),
                     list(type = 'year', count = 10, text = '10y'),
                     list(type = 'year', count = 30, text = '30y'),
                     list(type = 'all', text = 'All')),
                   selected = 1)
fig
saveWidget(widget = fig, file = "interactive/lake_powell_water_level.html",
           selfcontained = FALSE,
           libdir = "interactive")

