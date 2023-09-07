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

monthly <- GISTEMP |> 
  select(year,jan,feb,mar,apr,may,jun,jul,aug,sep,oct,nov,dec) |> 
  pivot_longer(!year) |> 
  mutate(date = mdy(paste0(name," 01, ",year))) |> 
  select(date,year,value)

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
  drop_na()

fig <- hchart(annual,
              type = "column", 
              hcaes(x = year,
                    y = j_d),
              label = list(
                enabled = TRUE),
              tooltip = list(valueSuffix = "°C"),
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
    text = "Source: GISS. Note: Latest year includes average of past 12 months.",
    href = "https://data.giss.nasa.gov/gistemp/") %>%
  hc_xAxis(title = list(text = NULL)) %>%
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
  )

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

<iframe src=\"/interactive/climate_temp_anomaly.html\" width=\"100%\" height=\"400\"> 
</iframe>

",
sep = ""
)

write_lines(web_text,"projects/climate.md")


