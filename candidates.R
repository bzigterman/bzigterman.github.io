library(tidyverse)
library(highcharter)
library(htmlwidgets)

# 2028 ----
## get data ----
candidates_2024 <- read_csv(
  "data/presidential_candidates.csv",
  col_types = "cncTT"
) |>
  filter(party == "Republican" | party == "Democrat") |>
  mutate(
    active = case_when(
      end == as.Date("2024-11-05") ~ TRUE,
      is.na(end) ~ TRUE,
      .default = FALSE
    )
  ) |>
  mutate(end = if_else(is.na(end), today(tzone = "America/Chicago"), end)) |>
  filter(year == 2024) |>
  mutate(
    party_active = case_when(
      party == "Republican" & active == TRUE ~ "Republican_active",
      party == "Republican" & active == FALSE ~ "Republican_inactive",
      party == "Democrat" & active == TRUE ~ "dem_active",
      party == "Democrat" & active == FALSE ~ "dem_inactive" #,
      # party == "Independent" & active == TRUE ~ "independent_active",
      # party == "Independent" & active == FALSE ~ "independent_inactive",
      # party == "Libertarian" & active == TRUE ~ "Libertarian_active",
      # party == "Libertarian" & active == FALSE ~ "Libertarian_inactive",
    )
  ) |>
  mutate(party_active = factor(party_active)) |>
  mutate(
    party_active = fct_relevel(
      party_active,
      c(
        "dem_inactive",
        "dem_active",
        #"independent_active","independent_inactive",
        #"Libertarian_active","Libertarian_inactive",
        "Republican_active",
        "Republican_inactive"
      )
    )
  ) |>
  arrange(if_else(party == "Democrat", desc(start), NA)) |>
  arrange(if_else(party == "Republican", start, NA)) |>
  arrange(if_else(party == "Democrat", end, NA)) |>
  arrange(if_else(party == "Republican", desc(end), NA)) |>
  mutate(
    election_over_checker = today(tzone = "America/Chicago") >
      as_date("2024-11-05")
  ) |>
  mutate(
    clean_start = paste(month(start, label = TRUE, abbr = TRUE), year(start))
  ) |>
  mutate(
    clean_end = if_else(
      election_over_checker != TRUE,
      "present",
      paste(month(end, label = TRUE, abbr = TRUE), year(end))
    )
  )

candidate_2024_count <- count(candidates_2024)$n * 18 + 20

today_location_checker <- between(
  today(tzone = "America/Chicago"),
  as_date("2024-11-05") - months(1),
  as_date("2024-11-05") + months(1)
)
election_over_checker <- today(tzone = "America/Chicago") >
  as_date("2024-11-05")

## make charts ----
candidate_chart <- hchart(
  candidates_2024,
  animation = FALSE,
  "columnrange",
  hcaes(
    x = candidate,
    low = 1000 * as.numeric(start),
    high = 1000 * as.numeric(end),
    group = party_active
  ),
  states = list(
    inactive = list(
      enabled = FALSE
    )
  ),
  grouping = FALSE,
  borderWidth = 0,
  borderRadius = "1%",
  #enableMouseTracking = FALSE,
  tooltip = list(
    pointFormat = "{point.clean_start} — {point.clean_end}"
  ),
  pointPadding = 0
) |>
  hc_legend(
    enabled = FALSE
  ) |>
  hc_xAxis(
    lineWidth = 0,
    labels = list(
      x = 10,
      align = "left"
    ),
    tickLength = 0,
    title = list(
      enabled = FALSE
    )
  ) |>
  hc_yAxis(
    startOnTick = FALSE,
    endOnTick = FALSE,
    plotLines = list(
      list(
        label = list(
          text = "Today",
          y = if_else(today_location_checker, -40, 10),
          verticalAlign = if_else(today_location_checker, "bottom", "top")
        ),
        color = "#595959",
        width = 1,
        zIndex = 2,
        value = if_else(
          election_over_checker,
          as.numeric(as_datetime(
            today(tzone = "America/Chicago")
          )) *
            1000000,
          as.numeric(as_datetime(
            today(tzone = "America/Chicago")
          )) *
            1000
        )
      ),
      list(
        label = list(text = "Super Tuesday"),
        color = "#595959",
        width = 1,
        zIndex = 2,
        value = as.numeric(as_datetime("2024-03-05")) * 1000
      ),
      list(
        label = list(text = "Election Day"),
        color = "#595959",
        width = 1,
        zIndex = 2,
        value = as.numeric(as_datetime("2024-11-05")) * 1000
      )
    ),
    plotBands = list(
      list(
        label = list(text = "Primaries", y = -16),
        color = hex_to_rgba("gray", 0.2),
        zIndex = 2,
        from = as.numeric(as_datetime("2024-01-15")) * 1000,
        to = as.numeric(as_datetime("2024-06-08")) * 1000
      )
    ),
    min = 1000 * as.numeric(as_datetime("2022-10-05")),
    max = 1000 * as.numeric(as_datetime("2024-12-05")),
    type = "datetime"
  ) |>
  hc_chart(
    inverted = TRUE
  ) |>
  hc_add_theme(
    hc_theme_bloom()
  ) |>
  hc_colors(
    colors = c(
      "#d1d9f2",
      "#1A43C1",
      #"#808080",#"#e5e5e5"
      #"#F7D348",#"#fdf6da",
      "#D53630",
      "#f6d6d5"
    )
  ) |>
  hc_credits(
    enabled = TRUE,
    text = "Source: Ballotpedia",
    href = "https://ballotpedia.org/Presidential_candidates,_2024"
  )
candidate_chart
# saveWidget(widget = candidate_chart,
#            file = "interactive/2024candidates.html",
#            selfcontained = FALSE,
#            libdir = "interactive")

# 2024 ----
## get data ----
candidates_2024 <- read_csv(
  "data/presidential_candidates.csv",
  col_types = "cncTT"
) |>
  filter(party == "Republican" | party == "Democrat") |>
  mutate(
    active = case_when(
      end == as.Date("2024-11-05") ~ TRUE,
      is.na(end) ~ TRUE,
      .default = FALSE
    )
  ) |>
  mutate(end = if_else(is.na(end), today(tzone = "America/Chicago"), end)) |>
  filter(year == 2024) |>
  mutate(
    party_active = case_when(
      party == "Republican" & active == TRUE ~ "Republican_active",
      party == "Republican" & active == FALSE ~ "Republican_inactive",
      party == "Democrat" & active == TRUE ~ "dem_active",
      party == "Democrat" & active == FALSE ~ "dem_inactive" #,
      # party == "Independent" & active == TRUE ~ "independent_active",
      # party == "Independent" & active == FALSE ~ "independent_inactive",
      # party == "Libertarian" & active == TRUE ~ "Libertarian_active",
      # party == "Libertarian" & active == FALSE ~ "Libertarian_inactive",
    )
  ) |>
  mutate(party_active = factor(party_active)) |>
  mutate(
    party_active = fct_relevel(
      party_active,
      c(
        "dem_inactive",
        "dem_active",
        #"independent_active","independent_inactive",
        #"Libertarian_active","Libertarian_inactive",
        "Republican_active",
        "Republican_inactive"
      )
    )
  ) |>
  arrange(if_else(party == "Democrat", desc(start), NA)) |>
  arrange(if_else(party == "Republican", start, NA)) |>
  arrange(if_else(party == "Democrat", end, NA)) |>
  arrange(if_else(party == "Republican", desc(end), NA)) |>
  mutate(
    clean_start = paste(month(start, label = TRUE, abbr = TRUE), year(start))
  ) |>
  mutate(clean_end = paste(month(end, label = TRUE, abbr = TRUE), year(end)))

candidate_2024_count <- count(candidates_2024)$n * 18 + 20

today_location_checker <- between(
  today(tzone = "America/Chicago"),
  as_date("2024-11-05") - months(1),
  as_date("2024-11-05") + months(1)
)
election_over_checker <- today(tzone = "America/Chicago") >
  as_date("2024-11-05")

## make charts ----
candidate_chart <- hchart(
  candidates_2024,
  animation = FALSE,
  "columnrange",
  hcaes(
    x = candidate,
    low = 1000 * as.numeric(start),
    high = 1000 * as.numeric(end),
    group = party_active
  ),
  states = list(
    inactive = list(
      enabled = FALSE
    )
  ),
  grouping = FALSE,
  borderWidth = 0,
  borderRadius = "1%",
  #enableMouseTracking = FALSE,
  tooltip = list(
    pointFormat = "{point.clean_start} — {point.clean_end}"
  ),
  pointPadding = 0
) |>
  hc_legend(
    enabled = FALSE
  ) |>
  hc_xAxis(
    lineWidth = 0,
    labels = list(
      x = 10,
      align = "left"
    ),
    tickLength = 0,
    title = list(
      enabled = FALSE
    )
  ) |>
  hc_yAxis(
    startOnTick = FALSE,
    endOnTick = FALSE,
    plotLines = list(
      list(
        label = list(
          text = "Today",
          y = if_else(today_location_checker, -40, 10),
          verticalAlign = if_else(today_location_checker, "bottom", "top")
        ),
        color = "#595959",
        width = 1,
        zIndex = 2,
        value = if_else(
          election_over_checker,
          as.numeric(as_datetime(
            today(tzone = "America/Chicago")
          )) *
            1000000,
          as.numeric(as_datetime(
            today(tzone = "America/Chicago")
          )) *
            1000
        )
      ),
      list(
        label = list(text = "Super Tuesday"),
        color = "#595959",
        width = 1,
        zIndex = 2,
        value = as.numeric(as_datetime("2024-03-05")) * 1000
      ),
      list(
        label = list(text = "Election Day"),
        color = "#595959",
        width = 1,
        zIndex = 2,
        value = as.numeric(as_datetime("2024-11-05")) * 1000
      )
    ),
    plotBands = list(
      list(
        label = list(text = "Primaries", y = -16),
        color = hex_to_rgba("gray", 0.2),
        zIndex = 2,
        from = as.numeric(as_datetime("2024-01-15")) * 1000,
        to = as.numeric(as_datetime("2024-06-08")) * 1000
      )
    ),
    min = 1000 * as.numeric(as_datetime("2022-10-05")),
    max = 1000 * as.numeric(as_datetime("2024-12-05")),
    type = "datetime"
  ) |>
  hc_chart(
    inverted = TRUE
  ) |>
  hc_add_theme(
    hc_theme_bloom()
  ) |>
  hc_colors(
    colors = c(
      "#d1d9f2",
      "#1A43C1",
      #"#808080",#"#e5e5e5"
      #"#F7D348",#"#fdf6da",
      "#D53630",
      "#f6d6d5"
    )
  ) |>
  hc_credits(
    enabled = TRUE,
    text = "Source: Ballotpedia",
    href = "https://ballotpedia.org/Presidential_candidates,_2024"
  )
candidate_chart
saveWidget(
  widget = candidate_chart,
  file = "interactive/2024candidates.html",
  selfcontained = FALSE,
  libdir = "interactive"
)

# 2020 ----
## get data ----
candidates_2020 <- read_csv(
  "data/presidential_candidates.csv",
  col_types = "cncTT"
) |>
  mutate(
    active = case_when(
      end == as.Date("2020-11-03") ~ TRUE,
      is.na(end) ~ TRUE,
      .default = FALSE
    )
  ) |>
  mutate(end = if_else(is.na(end), today(tzone = "America/Chicago"), end)) |>
  filter(year == 2020) |>
  mutate(
    party_active = case_when(
      party == "Republican" & active == TRUE ~ "Republican_active",
      party == "Republican" & active == FALSE ~ "Republican_inactive",
      party == "Democrat" & active == TRUE ~ "dem_active",
      party == "Democrat" & active == FALSE ~ "dem_inactive" #,
      # party == "Independent" & active == TRUE ~ "independent_active",
      # party == "Independent" & active == FALSE ~ "independent_inactive",
      # party == "Libertarian" & active == TRUE ~ "Libertarian_active",
      # party == "Libertarian" & active == FALSE ~ "Libertarian_inactive",
    )
  ) |>
  mutate(party_active = factor(party_active)) |>
  mutate(
    party_active = fct_relevel(
      party_active,
      c(
        "dem_inactive",
        "dem_active",
        #"independent_active","independent_inactive",
        #"Libertarian_active","Libertarian_inactive",
        "Republican_active",
        "Republican_inactive"
      )
    )
  ) |>
  arrange(if_else(party == "Democrat", desc(start), NA)) |>
  arrange(if_else(party == "Republican", start, NA)) |>
  arrange(if_else(party == "Democrat", end, NA)) |>
  arrange(if_else(party == "Republican", desc(end), NA)) |>
  mutate(
    clean_start = paste(month(start, label = TRUE, abbr = TRUE), year(start))
  ) |>
  mutate(clean_end = paste(month(end, label = TRUE, abbr = TRUE), year(end)))

candidate_2020_count <- count(candidates_2020)$n * 18 + 20

## make charts ----
candidate_chart <- hchart(
  candidates_2020,
  animation = FALSE,
  "columnrange",
  hcaes(
    x = candidate,
    low = 1000 * as.numeric(start),
    high = 1000 * as.numeric(end),
    group = party_active
  ),
  states = list(
    inactive = list(
      enabled = FALSE
    )
  ),
  grouping = FALSE,
  borderWidth = 0,
  borderRadius = "1%",
  #enableMouseTracking = FALSE,
  tooltip = list(
    pointFormat = "{point.clean_start} — {point.clean_end}"
  ),
  pointPadding = 0
) |>
  hc_legend(
    enabled = FALSE
  ) |>
  hc_xAxis(
    lineWidth = 0,
    labels = list(
      x = 10,
      align = "left"
    ),
    tickLength = 0,
    title = list(
      enabled = FALSE
    )
  ) |>
  hc_yAxis(
    startOnTick = FALSE,
    endOnTick = FALSE,
    plotLines = list(
      list(
        label = list(text = "Super Tuesday"),
        color = "#595959",
        width = 1,
        zIndex = 2,
        value = as.numeric(as_datetime("2020-03-03")) * 1000
      ),
      list(
        label = list(text = "Election Day"),
        color = "#595959",
        width = 1,
        zIndex = 2,
        value = as.numeric(as_datetime("2020-11-03")) * 1000
      )
    ),
    min = 1000 * as.numeric(as_datetime("2018-10-03")),
    max = 1000 * as.numeric(as_datetime("2020-12-03")),
    type = "datetime"
  ) |>
  hc_chart(
    inverted = TRUE
  ) |>
  hc_add_theme(
    hc_theme_bloom()
  ) |>
  hc_colors(
    colors = c(
      "#d1d9f2",
      "#1A43C1",
      # "#808080",#"#e5e5e5"
      # "#F7D348",#"#fdf6da",
      "#D53630",
      "#f6d6d5"
    )
  ) |>
  hc_credits(
    enabled = TRUE,
    text = "Source: Ballotpedia",
    href = "https://ballotpedia.org/Presidential_candidates,_2024"
  )
candidate_chart
saveWidget(
  widget = candidate_chart,
  file = "interactive/2020candidates.html",
  selfcontained = FALSE,
  libdir = "interactive"
)

# 2016 ----
## get data ----
candidates_2016 <- read_csv(
  "data/presidential_candidates.csv",
  col_types = "cncTT"
) |>
  mutate(
    active = case_when(
      end == as.Date("2016-11-08") ~ TRUE,
      is.na(end) ~ TRUE,
      .default = FALSE
    )
  ) |>
  mutate(end = if_else(is.na(end), today(tzone = "America/Chicago"), end)) |>
  filter(year == 2016) |>
  mutate(
    party_active = case_when(
      party == "Republican" & active == TRUE ~ "Republican_active",
      party == "Republican" & active == FALSE ~ "Republican_inactive",
      party == "Democrat" & active == TRUE ~ "dem_active",
      party == "Democrat" & active == FALSE ~ "dem_inactive" #,
      # party == "Independent" & active == TRUE ~ "independent_active",
      # party == "Independent" & active == FALSE ~ "independent_inactive",
      # party == "Libertarian" & active == TRUE ~ "Libertarian_active",
      # party == "Libertarian" & active == FALSE ~ "Libertarian_inactive",
    )
  ) |>
  mutate(party_active = factor(party_active)) |>
  mutate(
    party_active = fct_relevel(
      party_active,
      c(
        "dem_inactive",
        "dem_active",
        #"independent_active","independent_inactive",
        #"Libertarian_active","Libertarian_inactive",
        "Republican_active",
        "Republican_inactive"
      )
    )
  ) |>
  arrange(if_else(party == "Democrat", desc(start), NA)) |>
  arrange(if_else(party == "Republican", start, NA)) |>
  arrange(if_else(party == "Democrat", end, NA)) |>
  arrange(if_else(party == "Republican", desc(end), NA)) |>
  mutate(
    clean_start = paste(month(start, label = TRUE, abbr = TRUE), year(start))
  ) |>
  mutate(clean_end = paste(month(end, label = TRUE, abbr = TRUE), year(end)))

candidate_2016_count <- count(candidates_2016)$n * 18 + 20

## make charts ----
candidate_chart <- hchart(
  candidates_2016,
  animation = FALSE,
  "columnrange",
  hcaes(
    x = candidate,
    low = 1000 * as.numeric(start),
    high = 1000 * as.numeric(end),
    group = party_active
  ),
  states = list(
    inactive = list(
      enabled = FALSE
    )
  ),
  grouping = FALSE,
  borderWidth = 0,
  borderRadius = "1%",
  #enableMouseTracking = FALSE,
  tooltip = list(
    pointFormat = "{point.clean_start} — {point.clean_end}"
  ),
  pointPadding = 0
) |>
  hc_legend(
    enabled = FALSE
  ) |>
  hc_xAxis(
    lineWidth = 0,
    labels = list(
      x = 10,
      align = "left"
    ),
    tickLength = 0,
    title = list(
      enabled = FALSE
    )
  ) |>
  hc_yAxis(
    startOnTick = FALSE,
    endOnTick = FALSE,
    plotLines = list(
      list(
        label = list(text = "Super Tuesday"),
        color = "#595959",
        width = 1,
        zIndex = 2,
        value = as.numeric(as_datetime("2016-03-01")) * 1000
      ),
      list(
        label = list(text = "Election Day"),
        color = "#595959",
        width = 1,
        zIndex = 2,
        value = as.numeric(as_datetime("2016-11-08")) * 1000
      )
    ),
    min = 1000 * as.numeric(as_datetime("2014-10-08")),
    max = 1000 * as.numeric(as_datetime("2016-12-08")),
    type = "datetime"
  ) |>
  hc_chart(
    inverted = TRUE
  ) |>
  hc_add_theme(
    hc_theme_bloom()
  ) |>
  hc_colors(
    colors = c(
      "#d1d9f2",
      "#1A43C1",
      # "#808080",#"#e5e5e5"
      # "#F7D348",#"#fdf6da",
      "#D53630",
      "#f6d6d5"
    )
  ) |>
  hc_credits(
    enabled = TRUE,
    text = "Source: Wikipedia",
    href = "https://en.wikipedia.org/wiki/2016_United_States_presidential_election"
  )
candidate_chart
saveWidget(
  widget = candidate_chart,
  file = "interactive/2016candidates.html",
  selfcontained = FALSE,
  libdir = "interactive"
)

# 2012 ----
## get data ----
candidates_2012 <- read_csv(
  "data/presidential_candidates.csv",
  col_types = "cncTT"
) |>
  mutate(
    active = case_when(
      end == as.Date("2012-11-06") ~ TRUE,
      is.na(end) ~ TRUE,
      .default = FALSE
    )
  ) |>
  mutate(end = if_else(is.na(end), today(tzone = "America/Chicago"), end)) |>
  filter(year == 2012) |>
  mutate(
    party_active = case_when(
      party == "Republican" & active == TRUE ~ "Republican_active",
      party == "Republican" & active == FALSE ~ "Republican_inactive",
      party == "Democrat" & active == TRUE ~ "dem_active",
      party == "Democrat" & active == FALSE ~ "dem_inactive" #,
      # party == "Independent" & active == TRUE ~ "independent_active",
      # party == "Independent" & active == FALSE ~ "independent_inactive",
      # party == "Libertarian" & active == TRUE ~ "Libertarian_active",
      # party == "Libertarian" & active == FALSE ~ "Libertarian_inactive",
    )
  ) |>
  mutate(party_active = factor(party_active)) |>
  mutate(
    party_active = fct_relevel(
      party_active,
      c(
        "dem_inactive",
        "dem_active",
        #"independent_active","independent_inactive",
        #"Libertarian_active","Libertarian_inactive",
        "Republican_active",
        "Republican_inactive"
      )
    )
  ) |>
  arrange(if_else(party == "Democrat", desc(start), NA)) |>
  arrange(if_else(party == "Republican", start, NA)) |>
  arrange(if_else(party == "Democrat", end, NA)) |>
  arrange(if_else(party == "Republican", desc(end), NA)) |>
  mutate(
    clean_start = paste(month(start, label = TRUE, abbr = TRUE), year(start))
  ) |>
  mutate(clean_end = paste(month(end, label = TRUE, abbr = TRUE), year(end)))

candidate_2012_count <- count(candidates_2012)$n * 18 + 20

## make charts ----
candidate_chart <- hchart(
  candidates_2012,
  animation = FALSE,
  "columnrange",
  hcaes(
    x = candidate,
    low = 1000 * as.numeric(start),
    high = 1000 * as.numeric(end),
    group = party_active
  ),
  states = list(
    inactive = list(
      enabled = FALSE
    )
  ),
  grouping = FALSE,
  borderWidth = 0,
  borderRadius = "1%",
  #enableMouseTracking = FALSE,
  tooltip = list(
    pointFormat = "{point.clean_start} — {point.clean_end}"
  ),
  pointPadding = 0
) |>
  hc_legend(
    enabled = FALSE
  ) |>
  hc_xAxis(
    lineWidth = 0,
    labels = list(
      x = 10,
      align = "left"
    ),
    tickLength = 0,
    title = list(
      enabled = FALSE
    )
  ) |>
  hc_yAxis(
    startOnTick = FALSE,
    endOnTick = FALSE,
    plotLines = list(
      list(
        label = list(text = "Super Tuesday"),
        color = "#595959",
        width = 1,
        zIndex = 2,
        value = as.numeric(as_datetime("2012-03-06")) * 1000
      ),
      list(
        label = list(text = "Election Day"),
        color = "#595959",
        width = 1,
        zIndex = 2,
        value = as.numeric(as_datetime("2012-11-06")) * 1000
      )
    ),
    min = 1000 * as.numeric(as_datetime("2010-10-06")),
    max = 1000 * as.numeric(as_datetime("2012-12-06")),
    type = "datetime"
  ) |>
  hc_chart(
    inverted = TRUE
  ) |>
  hc_add_theme(
    hc_theme_bloom()
  ) |>
  hc_colors(
    colors = c(
      #"#d1d9f2",
      "#1A43C1",
      # "#808080",#"#e5e5e5"
      # "#F7D348",#"#fdf6da",
      "#D53630",
      "#f6d6d5"
    )
  ) |>
  hc_credits(
    enabled = TRUE,
    text = "Source: Wikipedia",
    href = "https://en.wikipedia.org/wiki/2012_United_States_presidential_election"
  )
candidate_chart
saveWidget(
  widget = candidate_chart,
  file = "interactive/2012candidates.html",
  selfcontained = FALSE,
  libdir = "interactive"
)

# 2008 ----
## get data ----
candidates_2008 <- read_csv(
  "data/presidential_candidates.csv",
  col_types = "cncTT"
) |>
  mutate(
    active = case_when(
      end == as.Date("2008-11-04") ~ TRUE,
      is.na(end) ~ TRUE,
      .default = FALSE
    )
  ) |>
  mutate(end = if_else(is.na(end), today(tzone = "America/Chicago"), end)) |>
  filter(year == 2008) |>
  mutate(
    party_active = case_when(
      party == "Republican" & active == TRUE ~ "Republican_active",
      party == "Republican" & active == FALSE ~ "Republican_inactive",
      party == "Democrat" & active == TRUE ~ "dem_active",
      party == "Democrat" & active == FALSE ~ "dem_inactive" #,
      # party == "Independent" & active == TRUE ~ "independent_active",
      # party == "Independent" & active == FALSE ~ "independent_inactive",
      # party == "Libertarian" & active == TRUE ~ "Libertarian_active",
      # party == "Libertarian" & active == FALSE ~ "Libertarian_inactive",
    )
  ) |>
  mutate(party_active = factor(party_active)) |>
  mutate(
    party_active = fct_relevel(
      party_active,
      c(
        "dem_inactive",
        "dem_active",
        #"independent_active","independent_inactive",
        #"Libertarian_active","Libertarian_inactive",
        "Republican_active",
        "Republican_inactive"
      )
    )
  ) |>
  arrange(if_else(party == "Democrat", desc(start), NA)) |>
  arrange(if_else(party == "Republican", start, NA)) |>
  arrange(if_else(party == "Democrat", end, NA)) |>
  arrange(if_else(party == "Republican", desc(end), NA)) |>
  mutate(
    clean_start = paste(month(start, label = TRUE, abbr = TRUE), year(start))
  ) |>
  mutate(clean_end = paste(month(end, label = TRUE, abbr = TRUE), year(end)))

candidate_2008_count <- count(candidates_2008)$n * 18 + 20

## make charts ----
candidate_chart <- hchart(
  candidates_2008,
  animation = FALSE,
  "columnrange",
  hcaes(
    x = candidate,
    low = 1000 * as.numeric(start),
    high = 1000 * as.numeric(end),
    group = party_active
  ),
  states = list(
    inactive = list(
      enabled = FALSE
    )
  ),
  grouping = FALSE,
  borderWidth = 0,
  borderRadius = "1%",
  #enableMouseTracking = FALSE,
  tooltip = list(
    pointFormat = "{point.clean_start} — {point.clean_end}"
  ),
  pointPadding = 0
) |>
  hc_legend(
    enabled = FALSE
  ) |>
  hc_xAxis(
    lineWidth = 0,
    labels = list(
      x = 10,
      align = "left"
    ),
    tickLength = 0,
    title = list(
      enabled = FALSE
    )
  ) |>
  hc_yAxis(
    startOnTick = FALSE,
    endOnTick = FALSE,
    plotLines = list(
      list(
        label = list(text = "Super Tuesday"),
        color = "#595959",
        width = 1,
        zIndex = 2,
        value = as.numeric(as_datetime("2008-02-05")) * 1000
      ),
      list(
        label = list(text = "Election Day"),
        color = "#595959",
        width = 1,
        zIndex = 2,
        value = as.numeric(as_datetime("2008-11-04")) * 1000
      )
    ),
    min = 1000 * as.numeric(as_datetime("2006-10-04")),
    max = 1000 * as.numeric(as_datetime("2008-12-04")),
    type = "datetime"
  ) |>
  hc_chart(
    inverted = TRUE
  ) |>
  hc_add_theme(
    hc_theme_bloom()
  ) |>
  hc_colors(
    colors = c(
      "#d1d9f2",
      "#1A43C1",
      # "#808080",#"#e5e5e5"
      # "#F7D348",#"#fdf6da",
      "#D53630",
      "#f6d6d5"
    )
  ) |>
  hc_credits(
    enabled = TRUE,
    text = "Source: Wikipedia",
    href = "https://en.wikipedia.org/wiki/2008_United_States_presidential_election"
  )
candidate_chart
saveWidget(
  widget = candidate_chart,
  file = "interactive/2008candidates.html",
  selfcontained = FALSE,
  libdir = "interactive"
)

# 2004 ----
## get data ----
candidates_2004 <- read_csv(
  "data/presidential_candidates.csv",
  col_types = "cncTT"
) |>
  mutate(
    active = case_when(
      end == as.Date("2004-11-02") ~ TRUE,
      is.na(end) ~ TRUE,
      .default = FALSE
    )
  ) |>
  mutate(end = if_else(is.na(end), today(tzone = "America/Chicago"), end)) |>
  filter(year == 2004) |>
  mutate(
    party_active = case_when(
      party == "Republican" & active == TRUE ~ "Republican_active",
      party == "Republican" & active == FALSE ~ "Republican_inactive",
      party == "Democrat" & active == TRUE ~ "dem_active",
      party == "Democrat" & active == FALSE ~ "dem_inactive" #,
      # party == "Independent" & active == TRUE ~ "independent_active",
      # party == "Independent" & active == FALSE ~ "independent_inactive",
      # party == "Libertarian" & active == TRUE ~ "Libertarian_active",
      # party == "Libertarian" & active == FALSE ~ "Libertarian_inactive",
    )
  ) |>
  mutate(party_active = factor(party_active)) |>
  mutate(
    party_active = fct_relevel(
      party_active,
      c(
        "dem_inactive",
        "dem_active",
        #"independent_active","independent_inactive",
        #"Libertarian_active","Libertarian_inactive",
        "Republican_active",
        "Republican_inactive"
      )
    )
  ) |>
  arrange(if_else(party == "Democrat", desc(start), NA)) |>
  arrange(if_else(party == "Republican", start, NA)) |>
  arrange(if_else(party == "Democrat", end, NA)) |>
  arrange(if_else(party == "Republican", desc(end), NA)) |>
  mutate(
    clean_start = paste(month(start, label = TRUE, abbr = TRUE), year(start))
  ) |>
  mutate(clean_end = paste(month(end, label = TRUE, abbr = TRUE), year(end)))

candidate_2004_count <- count(candidates_2004)$n * 18 + 20

## make charts ----
candidate_chart <- hchart(
  candidates_2004,
  animation = FALSE,
  "columnrange",
  hcaes(
    x = candidate,
    low = 1000 * as.numeric(start),
    high = 1000 * as.numeric(end),
    group = party_active
  ),
  states = list(
    inactive = list(
      enabled = FALSE
    )
  ),
  grouping = FALSE,
  borderWidth = 0,
  borderRadius = "1%",
  #enableMouseTracking = FALSE,
  tooltip = list(
    pointFormat = "{point.clean_start} — {point.clean_end}"
  ),
  pointPadding = 0
) |>
  hc_legend(
    enabled = FALSE
  ) |>
  hc_xAxis(
    lineWidth = 0,
    labels = list(
      x = 10,
      align = "left"
    ),
    tickLength = 0,
    title = list(
      enabled = FALSE
    )
  ) |>
  hc_yAxis(
    startOnTick = FALSE,
    endOnTick = FALSE,
    plotLines = list(
      list(
        label = list(text = "Super Tuesday"),
        color = "#595959",
        width = 1,
        zIndex = 2,
        value = as.numeric(as_datetime("2004-02-03")) * 1000
      ),
      list(
        label = list(text = "Election Day"),
        color = "#595959",
        width = 1,
        zIndex = 2,
        value = as.numeric(as_datetime("2004-11-02")) * 1000
      )
    ),
    min = 1000 * as.numeric(as_datetime("2002-10-02")),
    max = 1000 * as.numeric(as_datetime("2004-12-02")),
    type = "datetime"
  ) |>
  hc_chart(
    inverted = TRUE
  ) |>
  hc_add_theme(
    hc_theme_bloom()
  ) |>
  hc_colors(
    colors = c(
      "#d1d9f2",
      "#1A43C1",
      # "#808080",#"#e5e5e5"
      # "#F7D348",#"#fdf6da",
      "#D53630" #,"#f6d6d5"
    )
  ) |>
  hc_credits(
    enabled = TRUE,
    text = "Source: Wikipedia",
    href = "https://en.wikipedia.org/wiki/2004_United_States_presidential_election"
  )
candidate_chart
saveWidget(
  widget = candidate_chart,
  file = "interactive/2004candidates.html",
  selfcontained = FALSE,
  libdir = "interactive"
)

# 2000 ----
## get data ----
candidates_2000 <- read_csv(
  "data/presidential_candidates.csv",
  col_types = "cncTT"
) |>
  mutate(
    active = case_when(
      end == as.Date("2000-11-07") ~ TRUE,
      is.na(end) ~ TRUE,
      .default = FALSE
    )
  ) |>
  mutate(end = if_else(is.na(end), today(tzone = "America/Chicago"), end)) |>
  filter(year == 2000) |>
  mutate(
    party_active = case_when(
      party == "Republican" & active == TRUE ~ "Republican_active",
      party == "Republican" & active == FALSE ~ "Republican_inactive",
      party == "Democrat" & active == TRUE ~ "dem_active",
      party == "Democrat" & active == FALSE ~ "dem_inactive" #,
      # party == "Independent" & active == TRUE ~ "independent_active",
      # party == "Independent" & active == FALSE ~ "independent_inactive",
      # party == "Libertarian" & active == TRUE ~ "Libertarian_active",
      # party == "Libertarian" & active == FALSE ~ "Libertarian_inactive",
    )
  ) |>
  mutate(party_active = factor(party_active)) |>
  mutate(
    party_active = fct_relevel(
      party_active,
      c(
        "dem_inactive",
        "dem_active",
        #"independent_active","independent_inactive",
        #"Libertarian_active","Libertarian_inactive",
        "Republican_active",
        "Republican_inactive"
      )
    )
  ) |>
  arrange(if_else(party == "Democrat", desc(start), NA)) |>
  arrange(if_else(party == "Republican", start, NA)) |>
  arrange(if_else(party == "Democrat", end, NA)) |>
  arrange(if_else(party == "Republican", desc(end), NA)) |>
  mutate(
    clean_start = paste(month(start, label = TRUE, abbr = TRUE), year(start))
  ) |>
  mutate(clean_end = paste(month(end, label = TRUE, abbr = TRUE), year(end)))

candidate_2000_count <- count(candidates_2000)$n * 18 + 20

## make charts ----
candidate_chart <- hchart(
  candidates_2000,
  animation = FALSE,
  "columnrange",
  hcaes(
    x = candidate,
    low = 1000 * as.numeric(start),
    high = 1000 * as.numeric(end),
    group = party_active
  ),
  states = list(
    inactive = list(
      enabled = FALSE
    )
  ),
  grouping = FALSE,
  borderWidth = 0,
  borderRadius = "1%",
  #enableMouseTracking = FALSE,
  tooltip = list(
    pointFormat = "{point.clean_start} — {point.clean_end}"
  ),
  pointPadding = 0
) |>
  hc_legend(
    enabled = FALSE
  ) |>
  hc_xAxis(
    lineWidth = 0,
    labels = list(
      x = 10,
      align = "left"
    ),
    tickLength = 0,
    title = list(
      enabled = FALSE
    )
  ) |>
  hc_yAxis(
    startOnTick = FALSE,
    endOnTick = FALSE,
    plotLines = list(
      list(
        label = list(text = "Super Tuesday"),
        color = "#595959",
        width = 1,
        zIndex = 2,
        value = as.numeric(as_datetime("2000-03-07")) * 1000
      ),
      list(
        label = list(text = "Election Day"),
        color = "#595959",
        width = 1,
        zIndex = 2,
        value = as.numeric(as_datetime("2000-11-07")) * 1000
      )
    ),
    min = 1000 * as.numeric(as_datetime("1998-10-07")),
    max = 1000 * as.numeric(as_datetime("2000-12-07")),
    type = "datetime"
  ) |>
  hc_chart(
    inverted = TRUE
  ) |>
  hc_add_theme(
    hc_theme_bloom()
  ) |>
  hc_colors(
    colors = c(
      "#d1d9f2",
      "#1A43C1",
      # "#808080",#"#e5e5e5"
      # "#F7D348",#"#fdf6da",
      "#D53630",
      "#f6d6d5"
    )
  ) |>
  hc_credits(
    enabled = TRUE,
    text = "Source: Wikipedia",
    href = "https://en.wikipedia.org/wiki/2000_United_States_presidential_election"
  )
candidate_chart
saveWidget(
  widget = candidate_chart,
  file = "interactive/2000candidates.html",
  selfcontained = FALSE,
  libdir = "interactive"
)

# plain text ----

# A function to return a plain-text chart string for a given year
generate_noscript_chart <- function(TARGET_YEAR, candidate_df) {
  # 1. Filter for the specific year
  df_year <- candidate_df %>%
    filter(year == TARGET_YEAR) %>%
    mutate(
      start = as.Date(start),
      end = as.Date(end)
    )

  if (nrow(df_year) == 0) return("")

  # 2. Timeline Boundaries & Configuration
  timeline_start <- as.Date(paste0(TARGET_YEAR - 1, "-01-01"))
  timeline_end <- as.Date(paste0(TARGET_YEAR, "-11-05"))
  days_per_char <- 10

  date_to_pos <- function(date) {
    as.numeric(date - timeline_start) %/% days_per_char
  }

  # Global name padding length across both parties for perfect vertical alignment
  global_max_name_len <- max(nchar(df_year$candidate)) + 2

  # Helper to generate a single party's text block
  build_party_block <- function(party_name) {
    party_df <- df_year %>%
      filter(party == party_name) %>%
      arrange(end) # Chronological dropout sorting

    if (nrow(party_df) == 0) return(NULL)

    lines <- c(paste0("#### ", party_name, "s\n"))

    for (i in 1:nrow(party_df)) {
      name <- party_df$candidate[i]
      s_dt <- party_df$start[i]
      e_dt <- party_df$end[i]

      s_dt_padded <- str_pad(format(s_dt, "%b %Y"), width = 9, side = "right")
      e_dt_formatted <- format(e_dt, "%b %Y")

      calc_start <- max(timeline_start, s_dt)
      calc_end <- min(timeline_end, e_dt)

      start_pos <- date_to_pos(calc_start)
      end_pos <- date_to_pos(calc_end)
      bar_len <- max(1, end_pos - start_pos)

      name_padded <- str_pad(name, width = global_max_name_len, side = "right")
      leading_spaces <- str_dup(" ", start_pos)
      timeline_bar <- str_dup("-", bar_len)

      line_str <- paste0(
        name_padded,
        " ",
        s_dt_padded,
        "  ",
        leading_spaces,
        timeline_bar,
        " ",
        e_dt_formatted
      )
      lines <- c(lines, line_str)
    }

    # Add time markers below the data
    total_width <- date_to_pos(timeline_end)
    mid_point <- date_to_pos(as.Date(paste0(TARGET_YEAR, "-01-01")))
    label_year_prior <- paste0("| ", TARGET_YEAR - 1)
    label_year_elect <- paste0("| ", TARGET_YEAR)

    axis_labels <- paste0(
      str_pad(label_year_prior, width = mid_point, side = "right"),
      str_pad(label_year_elect, width = total_width - mid_point, side = "right")
    )

    axis_padding <- str_dup(" ", global_max_name_len + 13)
    lines <- c(lines, paste0(axis_padding, axis_labels), "\n")

    return(paste(lines, collapse = "\n"))
  }

  dem_block <- build_party_block("Democrat")
  rep_block <- build_party_block("Republican")

  full_text_chart <- paste(compact(list(dem_block, rep_block)), collapse = "\n")

  # Wrap the entire text chart in a noscript block with a monospace code layout
  noscript_wrapper <- paste0(
    "<noscript>\n",
    "  <pre><code style=\"font-family: monospace; font-size: 0.75em;\">\n",
    full_text_chart,
    "  </code></pre>\n",
    "</noscript>"
  )

  return(noscript_wrapper)
}

# Load your master dataset once
raw_candidates_data <- read_csv("data/presidential_candidates.csv")

# Define the years you track
election_years <- c(2024, 2020, 2016, 2012, 2008, 2004, 2000)


# Build the front matter header block ----
front_matter <- "---
layout: page
title: Presidential Candidates
permalink: /projects/candidates
---

"

# Generate sections dynamically for each year
sections <- map_chr(election_years, function(yr) {
  # Calculate dynamic pixel heights for the javascript frames based on record count
  candidate_count <- raw_candidates_data %>%
    filter(year == yr) %>%
    filter(party == "Democrat" | party == "Republican") %>%
    nrow()
  frame_height <- paste0(max(200, candidate_count * 18 + 20))

  # Call our universal function to generate the fallback text block
  plain_text_fallback <- generate_noscript_chart(yr, raw_candidates_data)

  # Return the fully compiled year block
  paste0(
    "# ",
    yr,
    "\n\n",
    '<iframe src="/interactive/',
    yr,
    'candidates.html" width="100%" height="',
    frame_height,
    '"> 
</iframe>\n',
    plain_text_fallback,
    "\n\n"
  )
})

# Combine everything together cleanly
web_text <- paste0(front_matter, paste(sections, collapse = ""))

# Write the fresh output file
write_lines(web_text, "projects/candidates.md")
