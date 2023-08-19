library(tidyverse)
library(httr)
library(highcharter)
library(htmlwidgets)

iwss_download_url <- "https://iwss.uillinois.edu/wastewater-treatment-plant/download/159/"
iwss_download <- content(GET(iwss_download_url))

iwss <- iwss_download %>%
  mutate(Date = ymd(sample_collect_date)) %>%
  filter(method == 1) |> 
  mutate(sars_cov_2_avg = zoo::rollmean(sars_cov_2,
                                        k = 5,
                                        fill = NA,
                                        align = "right")) |> 
  mutate(influenza_a_avg = zoo::rollmean(influenza_a,
                                         k = 5,
                                         fill = NA,
                                         align = "right")) |> 
  mutate(influenza_b_avg = zoo::rollmean(influenza_b,
                                         k = 5,
                                         fill = NA,
                                         align = "right")) |> 
  mutate(rsv_avg = zoo::rollmean(rsv,
                                 k = 5,
                                 fill = NA,
                                 align = "right"))


fig <- hchart(iwss,
              type = "line", 
              hcaes(x = Date,
                    y = sars_cov_2_avg),
              label = list(
                enabled = TRUE),
              name = "SARS-CoV-2",
              states = list(
                inactive = list(
                  enabled = FALSE
                )
              ),
              color = "#B45F06",
              yAxis = 0) %>%
  hc_yAxis(title = list(text = "Gene Copies Per Liter (w/ Moving Avg.)"),
           endOnTick = FALSE,
           startOnTick = FALSE) |> 
  # hc_yAxis_multiples(create_axis(naxis = 2,
  #                                heights = c(1,1),
  #                                title = list(text = NULL),
  #                                endOnTick = FALSE,
  #                                startOnTick = FALSE,
  #                                max = c(NA,
  #                                        NA
  #                                ),
  #                                min = c(0,
  #                                        0
  #                                ))) %>%
hc_add_series(
  data = iwss,
  label = list(
    enabled = TRUE),
  hcaes(x = Date,
        y = influenza_a_avg),
  states = list(
    inactive = list(
      enabled = FALSE
    )
  ),
  name = "Influenza A",
  color = "blue",
  type = "line",
  yAxis = 0) %>%
  hc_add_series(
    data = iwss,
    label = list(
      enabled = TRUE),
    hcaes(x = Date,
          y = influenza_b_avg),
    name = "Influenza B",
    color = "purple",
    states = list(
      inactive = list(
        enabled = FALSE
      )
    ),
    type = "line",
    yAxis = 0) %>%
  hc_add_series(
    data = iwss,
    zIndex = -1,
    hcaes(x = Date,
          y = sars_cov_2),
    states = list(
      inactive = list(
        enabled = FALSE
      )
    ),
    name = "SARS-CoV-2",
    color = "#f0dfcd",
    enableMouseTracking = FALSE,
    type = "line",
    yAxis = 0) %>%
  hc_add_series(
    data = iwss,
    hcaes(x = Date,
          y = influenza_a),
    zIndex = -1,
    name = "Influenza A",
    enableMouseTracking = FALSE,
    color = "#e5e5ff",
    states = list(
      inactive = list(
        enabled = FALSE
      )
    ),
    type = "line",
    yAxis = 0) %>%
  hc_add_series(
    data = iwss,
    zIndex = -1,
    hcaes(x = Date,
          y = influenza_b),
    enableMouseTracking = FALSE,
    name = "Influenza B",
    color = "#f2e5f2",
    states = list(
      inactive = list(
        enabled = FALSE
      )
    ),
    type = "line",
    yAxis = 0) %>%
  hc_add_series(
    data = iwss,
    label = list(
      enabled = TRUE),
    hcaes(x = Date,
          y = rsv_avg),
    name = "RSV",
    color = "black",
    states = list(
      inactive = list(
        enabled = FALSE
      )
    ),
    type = "line",
    yAxis = 0) %>%
  hc_add_series(
    data = iwss,
    zIndex = -1,
    hcaes(x = Date,
          y = rsv),
    enableMouseTracking = FALSE,
    name = "RSV",
    color = "gray",
    states = list(
      inactive = list(
        enabled = FALSE
      )
    ),
    type = "line",
    yAxis = 0) %>%
  hc_credits(
    enabled = TRUE,
    text = "Source: IWSS",
    href = "http://www.dph.illinois.gov/covid19") %>%
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
                     #list(type = 'year', count = 2, text = '2y'),
                     list(type = 'all', text = 'All')),
                   selected = 2) 

fig
saveWidget(widget = fig, file = "interactive/wastewater.html",
           selfcontained = FALSE,
           libdir = "interactive")


# make web text ----
## covid ----
web_text <- paste(
  "---
layout: page
title: Wastewater
permalink: /projects/wastewater
imageurl: https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/Champaign_facet.png
---

## Champaign County Wastewater Surveillance

<iframe src=\"/interactive/wastewater.html\" width=\"100%\" height=\"400\"> 
</iframe>

More information available from the [CDC](https://covid.cdc.gov/covid-data-tracker/#wastewater-surveillance) and the [Illinois Wastewater Surveillance System](https://iwss.uillinois.edu/wastewater-treatment-plant/159/).

",
sep = ""
)

write_lines(web_text,"projects/wastewater.md")



