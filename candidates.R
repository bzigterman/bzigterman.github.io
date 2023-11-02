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
  mutate(active = if_else(end == today(tzone = "America/Chicago"),
                          TRUE,
                          FALSE)) |> 
  mutate(party_active = case_when(
    party == "Republican" & active == TRUE ~ "Republican_active",
    party == "Republican" & active == FALSE ~ "Republican_inactive",
    party == "Democrat" & active == TRUE ~ "dem_active",
    party == "Democrat" & active == FALSE ~ "dem_inactive",
    party == "Independent" & active == TRUE ~ "independent_active",
    party == "Independent" & active == FALSE ~ "independent_inactive",
    party == "Libertarian" & active == TRUE ~ "Libertarian_active",
    party == "Libertarian" & active == FALSE ~ "Libertarian_inactive",
  )) |> 
  mutate(party_active = factor(party_active
  )) |> 
  mutate(party_active = fct_relevel(
    party_active,c("dem_active","dem_inactive",
                   "independent_active","independent_inactive",
                   "Libertarian_active","Libertarian_inactive",
                   "Republican_active","Republican_inactive")
  )) |> 
  arrange(start) |> 
  arrange(desc(end))

candidate_count <- count(candidates_2024)$n*23

# make charts ----
candidate_chart <- hchart(candidates_2024,
                          "columnrange",
                          hcaes(
                            x = candidate,
                            low = 1000*as.numeric( start),
                            high = 1000*as.numeric(end),
                            group = party_active,
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
    startOnTick = FALSE,
    endOnTick = FALSE,
    type = "datetime") |> 
  hc_chart(
    inverted = TRUE
  ) |> 
  hc_add_theme(
    hc_theme_bloom()
  ) |>
  hc_colors(
    colors = c("#0000FF","#ccccff",
               "#808080",#"#e5e5e5"
               "#FFA500",#"#ffedcc",
               "#FF0000","#ffcccc")
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
candidate_count,"\"> 
</iframe>

",
sep = ""
)

write_lines(web_text,"projects/candidates.md")



