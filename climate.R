library(tidyverse)
library(httr)
library(htmlwidgets)
library(data.table)
library(highcharter)
library(zoo)

url <- "https://data.giss.nasa.gov/gistemp/tabledata_v4/GLB.Ts+dSST.csv"
GISTEMP <- fread(input = url,
                 na.strings = "***") |> 
  janitor::clean_names() 

url <- "https://www.ncei.noaa.gov/pub/data/paleo/pages2k/neukom2019temp/recons/Full_ensemble_median_and_95pct_range.txt"
# historical <- rio::import(url, format = "tsv")|> 
#   janitor::clean_names() |> 
#   mutate(j_d = full_ensemble_median+0.4368) |> 
#   select(year, j_d) |> 
#   filter(year < 1880) |> 
#   mutate(j_d = round(rollmean(j_d, k = 25, 
#                               fill = NA, align = "right"),
#                      digits = 2)) 

monthly <- GISTEMP |> 
  select(year,jan,feb,mar,apr,may,jun,jul,aug,sep,oct,nov,dec) |> 
  pivot_longer(!year) |> 
  mutate(date = mdy(paste0(name," 01, ",year))) |> 
  mutate(this_year = mdy(paste0(name," 01, 2020"))) |> 
  select(date,year,value, this_year) %>%
  mutate(short_date = paste(lubridate::month(date, label = TRUE, abbr = FALSE)))

past_year <- monthly |> 
  mutate(j_d = round(rollmean(value, k = 12, 
                              fill = NA, align = "right"),
                     digits = 2)) |> 
  drop_na() |> 
  tail(1) |> 
  select(year,j_d)

annual_url <- "https://data.giss.nasa.gov/gistemp/graphs_v4/graph_data/Global_Mean_Estimates_based_on_Land_and_Ocean_Data/graph.csv"
annual <- GISTEMP |> 
  select(year, j_d) |> 
  full_join(past_year) |> 
  drop_na() |> 
  mutate(j_d = j_d+.26) |> 
  #full_join(historical) |> 
  mutate(date = make_date(year = year,
                          month = 1,
                          day = 1)) |> 
  arrange(date) |> 
  drop_na()

fig <- hchart(annual,
              type = "column", 
              hcaes(x = date,
                    y = j_d),
              tooltip = list(valueSuffix = "°C",
                             valueDecimals = 2,
                             xDateFormat = "%Y"),
              name = "Anomaly",
              states = list(
                inactive = list(
                  enabled = FALSE
                )
              ),
              pointPadding = 0,
              borderWidth = 0,
              groupPadding = 0,
              color = "#b32704",
              negativeColor = "#199fa8",
              threshold = 0) |> 
  hc_credits(
    enabled = TRUE,
    text = "Source: GISS. Note: Latest year includes average of past 12 months. Anomaly compared to pre-industrial levels.",
    href = "https://data.giss.nasa.gov/gistemp/") %>%
  hc_xAxis(title = list(text = NULL),
           type = "datetime") %>%
  hc_yAxis(title = list(text = ""),
           softMax = 2.1,
           endOnTick = FALSE,
           startOnTick = FALSE,
           plotLines = list(
             list(
               label = list(text = "Paris Agreement Goal",
                            align = "left"),
               color = "#999999",
               #width = 1.5,
               value = 2,
               zIndex = 1),
             list(
               label = list(text = "Paris Agreement Stretch Goal",
                            align = "left"),
               color = "#999999",
               #width = 1.5,
               value = 1.5,
               zIndex = 1))) |> 
  hc_add_theme(
    hc_theme_bloom()
  )# |> 
  # hc_rangeSelector(enabled = TRUE,
  #                  #inputEnabled = FALSE,
  #                  buttons = list(
  #                    list(type = 'year', count = 150, text = '150y'),
  #                    list(type = 'all', text = '2000y')),
  #                  selected = 0)

fig

saveWidget(widget = fig, file = "interactive/climate_temp_anomaly.html",
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

## Global Average Temperature

<iframe src=\"https://cdn.climatechangetracker.org/embedding/yearly-average-temperature-anomaly?tempunit=c&shadow=false&br=false\" scrolling=\"no\" frameBorder=\"0\" style=\"width:100%; height:400px\"></iframe>

<iframe src=\"https://cdn.climatechangetracker.org/embedding/human-induced-and-observed-global-warming?tempunit=c&shadow=false&br=false\" scrolling=\"no\" frameBorder=\"0\" style=\"width:100%; height:400px\"></iframe>


",
sep = ""
)

write_lines(web_text,"projects/climate.md")


