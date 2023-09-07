library(tidyverse)
library(httr)
library(htmlwidgets)
library(data.table)
library(highcharter)

url <- "https://data.giss.nasa.gov/gistemp/tabledata_v4/GLB.Ts+dSST.csv"
GISTEMP <- fread(input = url,
                 na.strings = "***") |> 
  janitor::clean_names() 


annual_url <- "https://data.giss.nasa.gov/gistemp/graphs_v4/graph_data/Global_Mean_Estimates_based_on_Land_and_Ocean_Data/graph.csv"
annual <- GISTEMP |> 
  select(year, j_d)

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
    text = "Source: GISS",
    href = "https://data.giss.nasa.gov/gistemp/") %>%
  hc_xAxis(title = list(text = NULL)) %>%
  hc_yAxis(title = list(text = ""),
           endOnTick = FALSE,
           startOnTick = FALSE) |> 
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

## Global Mean Estimates based on Land and Ocean Data

<iframe src=\"/interactive/climate_temp_anomaly.html\" width=\"100%\" height=\"400\"> 
</iframe>

",
sep = ""
)

write_lines(web_text,"projects/climate.md")


