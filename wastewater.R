library(tidyverse)
library(httr)
library(highcharter)
library(htmlwidgets)

iwss_download_url <- "https://iwss.uillinois.edu/wastewater-treatment-plant/download/159/"
iwss_download <- content(GET(iwss_download_url))

iwss <- iwss_download %>%
  mutate(Date = ymd(sample_collect_date)) %>%
  filter(method == 1) 

fig <- hchart(iwss,
              type = "column", 
              hcaes(x = Date,
                    y = sars_cov_2),
              name = "SARS-CoV-2",
              states = list(
                inactive = list(
                  enabled = FALSE
                )
              ),
              color = "#B45F06",
              yAxis = 0) %>%
  hc_yAxis_multiples(create_axis(naxis = 2, 
                                 heights = c(1,1),
                                 title = list(text = NULL),
                                 endOnTick = FALSE,
                                 startOnTick = FALSE,
                                 max = c(NA,
                                         NA
                                 ),
                                 min = c(0,
                                         0
                                 ))) %>%
  hc_add_series(
    data = iwss,
    hcaes(x = Date,
          y = influenza_a),
    states = list(
      inactive = list(
        enabled = FALSE
      )
    ),
    name = "Influenza A",
    color = "black",
    type = "column",
    yAxis = 1) %>%
  hc_add_series(
    data = iwss,
    hcaes(x = Date,
          y = influenza_b),
    name = "Influenza B",
    color = "#4e79a7",
    states = list(
      inactive = list(
        enabled = FALSE
      )
    ),
    type = "column",
    yAxis = 1) %>%
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



