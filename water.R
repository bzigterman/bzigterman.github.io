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
              tooltip = list(valueSuffix = " ft",
                             dateTimeLabelFormats = list(
                               hour = "%b %e, %Y, %l %p"
                             )),
              color = "#199fa8",
              #negativeColor = "#b32704",
              #threshold = 895,
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
  hc_xAxis(title = "",
           type = "datetime") %>%
  hc_add_theme(
    hc_theme_bloom()
  ) %>%
  hc_rangeSelector(enabled = TRUE,
                   buttons = list(
                     list(type = 'year', count = 2, text = '2y'),
                     list(type = 'year', count = 10, text = '10y'),
                     list(type = 'year', count = 30, text = '30y'),
                     list(type = 'all', text = 'All')),
                   selected = 3)
fig
saveWidget(widget = fig, file = "interactive/lake_mead_water_level.html",
           selfcontained = FALSE,
           libdir = "interactive")

