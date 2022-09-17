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

url <- "https://www.usbr.gov/lc/region/g4000/riverops/webreports/hourlyweb.json"
json <- rio::import(url,
                    format = "json")
data <- json$Series[[10]][[8]] %>%
  mutate(date = mdy_hms(t)) %>%
  mutate(value = as.numeric(v)) %>%
  select(date, value) %>%
  drop_na() 

mead_data <- read_csv(file = "data/mead_elevation.csv") 
mead_data_update <- full_join(mead_data,data) %>%
  distinct(date, .keep_all = TRUE) %>%
  arrange(date)

write_csv(x = mead_data_update,
          file = "data/mead_elevation.csv")

fig <- hchart(mead_data_update, "line", hcaes(x = datetime_to_timestamp(date),
                                              y = value),
              name = "Water Level") %>%
  hc_title(text = "Water Level") %>%
  hc_credits(
    enabled = TRUE,
    text = "Source: U.S. Bureau of Reclamation",
    href = "https://www.usbr.gov/lc/region/g4000/riverops/hourly7.html#t0") %>%
  hc_yAxis(title = "") %>%
  hc_xAxis(title = "",
           type = "datetime") %>%
  hc_add_theme(
    hc_theme_bloom()
  ) %>%
  hc_rangeSelector(enabled = TRUE,
                   buttons = list(
                     list(type = 'month', count = 3, text = '3m'),
                     list(type = 'year', count = 1, text = '1y'),
                     list(type = 'year', count = 10, text = '5y'),
                     list(type = 'year', count = 25, text = '25y'),
                     list(type = 'all', text = 'All')),
                   selected = 2)
fig
saveWidget(widget = fig, file = "interactive/lake_mead_water_level.html",
           selfcontained = FALSE,
           libdir = "interactive")

