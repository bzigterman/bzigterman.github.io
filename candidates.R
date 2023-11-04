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
    party_active,c("dem_inactive","dem_active",
                   #"independent_active","independent_inactive",
                   #"Libertarian_active","Libertarian_inactive",
                   "Republican_active","Republican_inactive")
  )) |> 
  arrange(if_else(party == "Democrat",
                  desc(start),
                  NA)) |> 
  arrange(if_else(party == "Republican",
                  start,
                  NA)) |> 
  arrange(if_else(party == "Democrat",
                  end,
                  NA)) |> 
  arrange(if_else(party == "Republican",
                  desc(end),
                  NA)) |> 
  mutate(clean_start = paste(month(start, label = TRUE, abbr = TRUE),
                             year(start))) |> 
  mutate(clean_end = if_else(active == TRUE,
                             "present",
           paste(month(end, label = TRUE, abbr = TRUE),
                             year(end))))

candidate_2024_count <- count(candidates_2024)$n*18+20

## make charts ----
candidate_chart <- hchart(candidates_2024,
                          animation = FALSE,
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
                            pointFormat = "{point.clean_start} — {point.clean_end}"
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
    min = 1000*as.numeric(as_datetime("2022-10-05")),
    max = 1000*as.numeric(as_datetime("2024-12-05")),
    type = "datetime") |> 
  hc_chart(
    inverted = TRUE
  ) |> 
  hc_add_theme(
    hc_theme_bloom()
  ) |>
  hc_colors(
    colors = c("#d1d9f2","#1A43C1",
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
    party_active,c("dem_inactive","dem_active",
                   #"independent_active","independent_inactive",
                   #"Libertarian_active","Libertarian_inactive",
                   "Republican_active","Republican_inactive")
  )) |> 
  arrange(if_else(party == "Democrat",
                  desc(start),
                  NA)) |> 
  arrange(if_else(party == "Republican",
                  start,
                  NA)) |> 
  arrange(if_else(party == "Democrat",
                  end,
                  NA)) |> 
  arrange(if_else(party == "Republican",
                  desc(end),
                  NA)) |> 
  mutate(clean_start = paste(month(start, label = TRUE, abbr = TRUE),
                             year(start))) |> 
  mutate(clean_end = paste(month(end, label = TRUE, abbr = TRUE),
                                   year(end)))

candidate_2020_count <- count(candidates_2020)$n*18+20

## make charts ----
candidate_chart <- hchart(candidates_2020,
                          animation = FALSE,
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
                            pointFormat = "{point.clean_start} — {point.clean_end}"
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
    min = 1000*as.numeric(as_datetime("2018-10-03")),
    max = 1000*as.numeric(as_datetime("2020-12-03")),
    type = "datetime") |> 
  hc_chart(
    inverted = TRUE
  ) |> 
  hc_add_theme(
    hc_theme_bloom()
  ) |>
  hc_colors(
    colors = c("#d1d9f2","#1A43C1",
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

# 2016 ----
## get data ----
candidates_2016 <- read_csv(
  "data/presidential_candidates.csv",
  col_types = "cncTT") |> 
  mutate(active = case_when(
    end == as.Date("2016-11-08") ~ TRUE,
    is.na(end) ~ TRUE,
    .default = FALSE
  )) |> 
  mutate(end = if_else(is.na(end),
                       today(tzone = "America/Chicago"),
                       end)) |> 
  filter(year == 2016) |>
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
    party_active,c("dem_inactive","dem_active",
                   #"independent_active","independent_inactive",
                   #"Libertarian_active","Libertarian_inactive",
                   "Republican_active","Republican_inactive")
  )) |> 
  arrange(if_else(party == "Democrat",
                  desc(start),
                  NA)) |> 
  arrange(if_else(party == "Republican",
                  start,
                  NA)) |> 
  arrange(if_else(party == "Democrat",
                  end,
                  NA)) |> 
  arrange(if_else(party == "Republican",
                  desc(end),
                  NA)) |> 
  mutate(clean_start = paste(month(start, label = TRUE, abbr = TRUE),
                             year(start))) |> 
  mutate(clean_end = paste(month(end, label = TRUE, abbr = TRUE),
                           year(end)))

candidate_2016_count <- count(candidates_2016)$n*18+20

## make charts ----
candidate_chart <- hchart(candidates_2016,
                          animation = FALSE,
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
                            pointFormat = "{point.clean_start} — {point.clean_end}"
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
        value = as.numeric(as_datetime("2016-11-08"))*1000
      )
    ),
    min = 1000*as.numeric(as_datetime("2014-10-08")),
    max = 1000*as.numeric(as_datetime("2016-12-08")),
    type = "datetime") |> 
  hc_chart(
    inverted = TRUE
  ) |> 
  hc_add_theme(
    hc_theme_bloom()
  ) |>
  hc_colors(
    colors = c("#d1d9f2","#1A43C1",
               # "#808080",#"#e5e5e5"
               # "#F7D348",#"#fdf6da",
               "#D53630","#f6d6d5")
  ) |> 
  hc_credits(
    enabled = TRUE,
    text = "Source: Wikipedia",
    href = "https://en.wikipedia.org/wiki/2016_United_States_presidential_election")
candidate_chart
saveWidget(widget = candidate_chart, 
           file = "interactive/2016candidates.html",
           selfcontained = FALSE,
           libdir = "interactive")

# 2012 ----
## get data ----
candidates_2012 <- read_csv(
  "data/presidential_candidates.csv",
  col_types = "cncTT") |> 
  mutate(active = case_when(
    end == as.Date("2012-11-06") ~ TRUE,
    is.na(end) ~ TRUE,
    .default = FALSE
  )) |> 
  mutate(end = if_else(is.na(end),
                       today(tzone = "America/Chicago"),
                       end)) |> 
  filter(year == 2012) |>
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
    party_active,c("dem_inactive","dem_active",
                   #"independent_active","independent_inactive",
                   #"Libertarian_active","Libertarian_inactive",
                   "Republican_active","Republican_inactive")
  )) |> 
  arrange(if_else(party == "Democrat",
                  desc(start),
                  NA)) |> 
  arrange(if_else(party == "Republican",
                  start,
                  NA)) |> 
  arrange(if_else(party == "Democrat",
                  end,
                  NA)) |> 
  arrange(if_else(party == "Republican",
                  desc(end),
                  NA)) |> 
  mutate(clean_start = paste(month(start, label = TRUE, abbr = TRUE),
                             year(start))) |> 
  mutate(clean_end = paste(month(end, label = TRUE, abbr = TRUE),
                           year(end)))

candidate_2012_count <- count(candidates_2012)$n*18+20

## make charts ----
candidate_chart <- hchart(candidates_2012,
                          animation = FALSE,
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
                            pointFormat = "{point.clean_start} — {point.clean_end}"
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
        value = as.numeric(as_datetime("2012-11-06"))*1000
      )
    ),
    min = 1000*as.numeric(as_datetime("2010-10-06")),
    max = 1000*as.numeric(as_datetime("2012-12-06")),
    type = "datetime") |> 
  hc_chart(
    inverted = TRUE
  ) |> 
  hc_add_theme(
    hc_theme_bloom()
  ) |>
  hc_colors(
    colors = c(#"#d1d9f2",
               "#1A43C1",
               # "#808080",#"#e5e5e5"
               # "#F7D348",#"#fdf6da",
               "#D53630","#f6d6d5")
  ) |> 
  hc_credits(
    enabled = TRUE,
    text = "Source: Wikipedia",
    href = "https://en.wikipedia.org/wiki/2012_United_States_presidential_election")
candidate_chart
saveWidget(widget = candidate_chart, 
           file = "interactive/2012candidates.html",
           selfcontained = FALSE,
           libdir = "interactive")

# 2008 ----
## get data ----
candidates_2008 <- read_csv(
  "data/presidential_candidates.csv",
  col_types = "cncTT") |> 
  mutate(active = case_when(
    end == as.Date("2008-11-04") ~ TRUE,
    is.na(end) ~ TRUE,
    .default = FALSE
  )) |> 
  mutate(end = if_else(is.na(end),
                       today(tzone = "America/Chicago"),
                       end)) |> 
  filter(year == 2008) |>
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
    party_active,c("dem_inactive","dem_active",
                   #"independent_active","independent_inactive",
                   #"Libertarian_active","Libertarian_inactive",
                   "Republican_active","Republican_inactive")
  )) |> 
  arrange(if_else(party == "Democrat",
                  desc(start),
                  NA)) |> 
  arrange(if_else(party == "Republican",
                  start,
                  NA)) |> 
  arrange(if_else(party == "Democrat",
                  end,
                  NA)) |> 
  arrange(if_else(party == "Republican",
                  desc(end),
                  NA)) |> 
  mutate(clean_start = paste(month(start, label = TRUE, abbr = TRUE),
                             year(start))) |> 
  mutate(clean_end = paste(month(end, label = TRUE, abbr = TRUE),
                           year(end)))

candidate_2008_count <- count(candidates_2008)$n*18+20

## make charts ----
candidate_chart <- hchart(candidates_2008,
                          animation = FALSE,
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
                            pointFormat = "{point.clean_start} — {point.clean_end}"
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
        value = as.numeric(as_datetime("2008-11-04"))*1000
      )
    ),
    min = 1000*as.numeric(as_datetime("2006-10-04")),
    max = 1000*as.numeric(as_datetime("2008-12-04")),
    type = "datetime") |> 
  hc_chart(
    inverted = TRUE
  ) |> 
  hc_add_theme(
    hc_theme_bloom()
  ) |>
  hc_colors(
    colors = c("#d1d9f2","#1A43C1",
      # "#808080",#"#e5e5e5"
      # "#F7D348",#"#fdf6da",
      "#D53630","#f6d6d5")
  ) |> 
  hc_credits(
    enabled = TRUE,
    text = "Source: Wikipedia",
    href = "https://en.wikipedia.org/wiki/2008_United_States_presidential_election")
candidate_chart
saveWidget(widget = candidate_chart, 
           file = "interactive/2008candidates.html",
           selfcontained = FALSE,
           libdir = "interactive")

# 2004 ----
## get data ----
candidates_2004 <- read_csv(
  "data/presidential_candidates.csv",
  col_types = "cncTT") |> 
  mutate(active = case_when(
    end == as.Date("2004-11-02") ~ TRUE,
    is.na(end) ~ TRUE,
    .default = FALSE
  )) |> 
  mutate(end = if_else(is.na(end),
                       today(tzone = "America/Chicago"),
                       end)) |> 
  filter(year == 2004) |>
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
    party_active,c("dem_inactive","dem_active",
                   #"independent_active","independent_inactive",
                   #"Libertarian_active","Libertarian_inactive",
                   "Republican_active","Republican_inactive")
  )) |> 
  arrange(if_else(party == "Democrat",
                  desc(start),
                  NA)) |> 
  arrange(if_else(party == "Republican",
                  start,
                  NA)) |> 
  arrange(if_else(party == "Democrat",
                  end,
                  NA)) |> 
  arrange(if_else(party == "Republican",
                  desc(end),
                  NA)) |> 
  mutate(clean_start = paste(month(start, label = TRUE, abbr = TRUE),
                             year(start))) |> 
  mutate(clean_end = paste(month(end, label = TRUE, abbr = TRUE),
                           year(end)))

candidate_2004_count <- count(candidates_2004)$n*18+20

## make charts ----
candidate_chart <- hchart(candidates_2004,
                          animation = FALSE,
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
                            pointFormat = "{point.clean_start} — {point.clean_end}"
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
        value = as.numeric(as_datetime("2004-11-02"))*1000
      )
    ),
    min = 1000*as.numeric(as_datetime("2002-10-02")),
    max = 1000*as.numeric(as_datetime("2004-12-02")),
    type = "datetime") |> 
  hc_chart(
    inverted = TRUE
  ) |> 
  hc_add_theme(
    hc_theme_bloom()
  ) |>
  hc_colors(
    colors = c("#d1d9f2","#1A43C1",
               # "#808080",#"#e5e5e5"
               # "#F7D348",#"#fdf6da",
               "#D53630"#,"#f6d6d5"
               )
  ) |> 
  hc_credits(
    enabled = TRUE,
    text = "Source: Wikipedia",
    href = "https://en.wikipedia.org/wiki/2004_United_States_presidential_election")
candidate_chart
saveWidget(widget = candidate_chart, 
           file = "interactive/2004candidates.html",
           selfcontained = FALSE,
           libdir = "interactive")

# 2000 ----
## get data ----
candidates_2000 <- read_csv(
  "data/presidential_candidates.csv",
  col_types = "cncTT") |> 
  mutate(active = case_when(
    end == as.Date("2000-11-07") ~ TRUE,
    is.na(end) ~ TRUE,
    .default = FALSE
  )) |> 
  mutate(end = if_else(is.na(end),
                       today(tzone = "America/Chicago"),
                       end)) |> 
  filter(year == 2000) |>
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
    party_active,c("dem_inactive","dem_active",
                   #"independent_active","independent_inactive",
                   #"Libertarian_active","Libertarian_inactive",
                   "Republican_active","Republican_inactive")
  )) |> 
  arrange(if_else(party == "Democrat",
                  desc(start),
                  NA)) |> 
  arrange(if_else(party == "Republican",
                  start,
                  NA)) |> 
  arrange(if_else(party == "Democrat",
                  end,
                  NA)) |> 
  arrange(if_else(party == "Republican",
                  desc(end),
                  NA)) |> 
  mutate(clean_start = paste(month(start, label = TRUE, abbr = TRUE),
                             year(start))) |> 
  mutate(clean_end = paste(month(end, label = TRUE, abbr = TRUE),
                           year(end)))

candidate_2000_count <- count(candidates_2000)$n*18+20

## make charts ----
candidate_chart <- hchart(candidates_2000,
                          animation = FALSE,
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
                            pointFormat = "{point.clean_start} — {point.clean_end}"
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
        value = as.numeric(as_datetime("2000-11-07"))*1000
      )
    ),
    min = 1000*as.numeric(as_datetime("1998-10-07")),
    max = 1000*as.numeric(as_datetime("2000-12-07")),
    type = "datetime") |> 
  hc_chart(
    inverted = TRUE
  ) |> 
  hc_add_theme(
    hc_theme_bloom()
  ) |>
  hc_colors(
    colors = c("#d1d9f2","#1A43C1",
               # "#808080",#"#e5e5e5"
               # "#F7D348",#"#fdf6da",
               "#D53630","#f6d6d5"
    )
  ) |> 
  hc_credits(
    enabled = TRUE,
    text = "Source: Wikipedia",
    href = "https://en.wikipedia.org/wiki/2000_United_States_presidential_election")
candidate_chart
saveWidget(widget = candidate_chart, 
           file = "interactive/2000candidates.html",
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

# 2016

<iframe src=\"/interactive/2016candidates.html\" width=\"100%\" height=\"",
candidate_2016_count,"\"> 
</iframe>

# 2012

<iframe src=\"/interactive/2012candidates.html\" width=\"100%\" height=\"",
candidate_2012_count,"\"> 
</iframe>

# 2008

<iframe src=\"/interactive/2008candidates.html\" width=\"100%\" height=\"",
candidate_2008_count,"\"> 
</iframe>

# 2004

<iframe src=\"/interactive/2004candidates.html\" width=\"100%\" height=\"",
candidate_2004_count,"\"> 
</iframe>

# 2000

<iframe src=\"/interactive/2000candidates.html\" width=\"100%\" height=\"",
candidate_2000_count,"\"> 
</iframe>

",
sep = ""
)

write_lines(web_text,"projects/candidates.md")



