library(tidyverse)
library(highcharter)
library(htmlwidgets)

# 2024 ----
## get data ----
candidates_2024 <- read_csv(
  "data/presidential_candidates.csv",
  col_types = "cncTT") |> 
  filter(party == "Republican" | party == "Democrat") |> 
  mutate(active = case_when(
    end == as.Date("2024-11-05") ~ TRUE,
    is.na(end) ~ TRUE,
    .default = FALSE
  )) |> 
  mutate(end = if_else(is.na(end),
                       today(tzone = "America/Chicago"),
                       end)) |> 
  filter(year == 2024) |>
  mutate(party_active = case_when(
    party == "Republican" & active == TRUE ~ "Republican_active",
    party == "Republican" & active == FALSE ~ "Republican_inactive",
    party == "Democrat" & active == TRUE ~ "dem_active",
    party == "Democrat" & active == FALSE ~ "dem_inactive"#,
    # party == "Independent" & active == TRUE ~ "independent_active",
    # party == "Independent" & active == FALSE ~ "independent_inactive",
    # party == "Libertarian" & active == TRUE ~ "Libertarian_active",
    # party == "Libertarian" & active == FALSE ~ "Libertarian_inactive",
  )) |> 
  mutate(party_active = factor(party_active
  )) |> 
  mutate(party_active = fct_relevel(
    party_active,c("dem_active","dem_inactive",
                   #"independent_active","independent_inactive",
                   #"Libertarian_active","Libertarian_inactive",
                   "Republican_active","Republican_inactive")
  )) |> 
  arrange(start) |> 
  arrange(desc(end))

candidate_2024_count <- count(candidates_2024)$n*15+20

## make charts ----
candidate_chart <- hchart(candidates_2024,
                          "columnrange",
                          hcaes(
                            x = candidate,
                            low = 1000*as.numeric( start),
                            high = 1000*as.numeric(end),
                            group = party_active
                          ),
                          states = list(
                            inactive = list(
                              enabled = FALSE
                            )
                          ),
                          grouping = FALSE,
                          groupPadding = 0,
                          #enableMouseTracking = FALSE,
                          tooltip = list(
                            pointFormat = "{point.party}"
                          ),
                          pointPadding= 0) |> 
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
    plotLines = list(
      list(
        label = list(text = "Today"),
        color = "#595959",
        width = 1,
        zIndex = 2,
        value = as.numeric( now(tzone = "America/Chicago"))*1000
      ),
      list(
        label = list(text = "Election Day"),
        color = "#595959",
        width = 1,
        zIndex = 2,
        value = as.numeric(as_datetime("2024-11-05"))*1000
      )
      
    ),
    max = 1000*as.numeric(as_datetime("2024-12-05")),
    type = "datetime") |> 
  hc_chart(
    inverted = TRUE
  ) |> 
  hc_add_theme(
    hc_theme_bloom()
  ) |>
  hc_colors(
    colors = c("#1A43C1","#d1d9f2",
               #"#808080",#"#e5e5e5"
               #"#F7D348",#"#fdf6da",
               "#D53630","#f6d6d5")
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

# 2020 ----
## get data ----
candidates_2020 <- read_csv(
  "data/presidential_candidates.csv",
  col_types = "cncTT") |> 
  mutate(active = case_when(
    end == as.Date("2020-11-03") ~ TRUE,
    is.na(end) ~ TRUE,
    .default = FALSE
  )) |> 
  mutate(end = if_else(is.na(end),
                       today(tzone = "America/Chicago"),
                       end)) |> 
  filter(year == 2020) |>
  mutate(party_active = case_when(
    party == "Republican" & active == TRUE ~ "Republican_active",
    party == "Republican" & active == FALSE ~ "Republican_inactive",
    party == "Democrat" & active == TRUE ~ "dem_active",
    party == "Democrat" & active == FALSE ~ "dem_inactive"#,
    # party == "Independent" & active == TRUE ~ "independent_active",
    # party == "Independent" & active == FALSE ~ "independent_inactive",
    # party == "Libertarian" & active == TRUE ~ "Libertarian_active",
    # party == "Libertarian" & active == FALSE ~ "Libertarian_inactive",
  )) |> 
  mutate(party_active = factor(party_active
  )) |> 
  mutate(party_active = fct_relevel(
    party_active,c("dem_active","dem_inactive",
                   #"independent_active","independent_inactive",
                   #"Libertarian_active","Libertarian_inactive",
                   "Republican_active","Republican_inactive")
  )) |> 
  arrange(start) |> 
  arrange(desc(end))

candidate_2020_count <- count(candidates_2020)$n*15+20

## make charts ----
candidate_chart <- hchart(candidates_2020,
                          "columnrange",
                          hcaes(
                            x = candidate,
                            low = 1000*as.numeric( start),
                            high = 1000*as.numeric(end),
                            group = party_active
                          ),
                          states = list(
                            inactive = list(
                              enabled = FALSE
                            )
                          ),
                          grouping = FALSE,
                          groupPadding = 0,
                          #enableMouseTracking = FALSE,
                          tooltip = list(
                            pointFormat = "{point.party}"
                          ),
                          pointPadding= 0) |> 
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
    plotLines = list(
      list(
        label = list(text = "Election Day"),
        color = "#595959",
        width = 1,
        zIndex = 2,
        value = as.numeric(as_datetime("2020-11-03"))*1000
      )
    ),
    max = 1000*as.numeric(as_datetime("2020-12-03")),
    type = "datetime") |> 
  hc_chart(
    inverted = TRUE
  ) |> 
  hc_add_theme(
    hc_theme_bloom()
  ) |>
  hc_colors(
    colors = c("#1A43C1","#d1d9f2",
               # "#808080",#"#e5e5e5"
               # "#F7D348",#"#fdf6da",
               "#D53630","#f6d6d5")
  ) |> 
  hc_credits(
    enabled = TRUE,
    text = "Source: Ballotpedia",
    href = "https://ballotpedia.org/Presidential_candidates,_2024")
candidate_chart
saveWidget(widget = candidate_chart, 
           file = "interactive/2020candidates.html",
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
candidate_2024_count,"\"> 
</iframe>

# 2020

<iframe src=\"/interactive/2020candidates.html\" width=\"100%\" height=\"",
candidate_2020_count,"\"> 
</iframe>


",
sep = ""
)

write_lines(web_text,"projects/candidates.md")



