library(tidyverse)
library(highcharter)
library(htmlwidgets)

# get data ----
candidates_2024 <- read_csv(
  "data/presidential_candidates.csv",
  col_types = "cncTT") |> 
  mutate(end = if_else(is.na(end),
                       today(tzone = "America/Chicago"),
                       end)) |> 
  filter(year == 2024) |> 
  arrange(start) |> 
  arrange(desc(end)) |>
  mutate(active = if_else(end == today(tzone = "America/Chicago"),
                          FALSE,
                          TRUE))
candidates <- count(candidates_2024)$n*23

republicans <- candidates_2024 |> 
  filter(party == "Republican") 
gop_candidates <- count(republicans)$n*20
democrats <- candidates_2024 |> 
  filter(party == "Democrat")
dem_candidates <- count(democrats)$n*26

# make charts ----
candidate_chart <- hchart(candidates_2024,
              "columnrange",
              hcaes(
                x = candidate,
                low = 1000*as.numeric( start),
                high = 1000*as.numeric(end),
                group = party,
              ),
              grouping = FALSE,
              groupPadding = 0,
              enableMouseTracking = FALSE,
              pointPadding= 0
) |> 
  # hc_tooltip(
  #   enabled = FALSE
  # ) |> 
  hc_legend(
    enabled = FALSE
  ) |> 
  hc_xAxis(
    lineWidth = 0,
    tickLength = 0,
    title = list(
      enabled = FALSE
    )
  )|> 
  hc_yAxis(
    endOnTick = FALSE,
    min = 1000*as.numeric( min(candidates_2024$start)),
    type = "datetime") |> 
  hc_chart(
    inverted = TRUE
  ) |> 
  hc_add_theme(
    hc_theme_bloom()
  ) |>
  hc_colors(
    colors = c("blue","gray","green","red")
  ) |> 
  hc_credits(
    enabled = TRUE,
    text = "Source: Ballotpedia",
    href = "https://ballotpedia.org/Presidential_candidates,_2024")
candidate_chart
saveWidget(widget = candidate_chart, 
           file = "interactive/2024candidates.html",
           selfcontained = FALSE,
           libdir = "interactive")

# make web text ----
web_text <- paste(
  "---
layout: page
title: Presidential Candidates
permalink: /projects/candidates
---

# 2024

<iframe src=\"/interactive/2024candidates.html\" width=\"100%\" height=\"",
candidates,"\"> 
</iframe>

",
sep = ""
)

write_lines(web_text,"projects/candidates.md")



