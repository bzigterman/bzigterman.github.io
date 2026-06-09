library(tidyverse)
library(highcharter)
library(rvest)
library(httr)
library(janitor)
library(readr)
library(httr)
library(lubridate)
library(rio)
library(htmlwidgets)
library(jsonlite)
library(txtplot)

# get data ----

## lake mead ----
mead_records <- read_csv(file = "data/mead.csv")

latest_mead <- tail(mead_records, 1)$elevation
latest_mead_text <- format(
  round(tail(mead_records, 1)$elevation),
  big.mark = ","
)

year_ago_mead <- head(tail(mead_records, 365), 1)$elevation
year_ago_mead_text <-
  format(round(head(tail(mead_records, 365), 1)$elevation), big.mark = ",")
year_change_mead <- round(
  (100 * (latest_mead - year_ago_mead) / year_ago_mead),
  1
)
year_change_mead_text <-
  if (year_change_mead > 0) {
    paste(", or +", year_change_mead, "%,", sep = "")
  } else if (year_change_mead == 0) {
    paste("", sep = "")
  } else {
    paste(", or ", year_change_mead, "%,", sep = "")
  }
year_change_mead_elevation <- elevation <- latest_mead - year_ago_mead
year_change_mead_elevation_text <-
  if (round(year_change_mead_elevation) > 0) {
    paste(
      "up ",
      format(round(year_change_mead_elevation), big.mark = ","),
      "",
      sep = ""
    )
  } else if (round(year_change_mead_elevation) == 0) {
    paste("unchanged", sep = "")
  } else {
    paste(
      "down ",
      format(round(-1 * year_change_mead_elevation), big.mark = ","),
      "",
      sep = ""
    )
  }

ten_year_ago_mead <- head(tail(mead_records, 3652), 1)$elevation
ten_year_ago_mead_text <-
  format(round(head(tail(mead_records, 3652), 1)$elevation), big.mark = ",")
ten_year_change_mead <- round(
  (100 * (latest_mead - ten_year_ago_mead) / ten_year_ago_mead),
  1
)
ten_year_change_mead_text <-
  if (ten_year_change_mead > 0) {
    paste(", or +", ten_year_change_mead, "%,", sep = "")
  } else if (ten_year_change_mead == 0) {
    paste("", sep = "")
  } else {
    paste(", or ", ten_year_change_mead, "%,", sep = "")
  }
ten_year_change_mead_elevation <- elevation <- latest_mead - ten_year_ago_mead
ten_year_change_mead_elevation_text <-
  if (round(ten_year_change_mead_elevation) > 0) {
    paste(
      "up ",
      format(round(ten_year_change_mead_elevation), big.mark = ","),
      "",
      sep = ""
    )
  } else if (round(ten_year_change_mead_elevation) == 0) {
    paste("unchanged", sep = "")
  } else {
    paste(
      "down ",
      format(round(-1 * ten_year_change_mead_elevation), big.mark = ","),
      "",
      sep = ""
    )
  }

full_pool_mead <- 1229 - tail(mead_records, 1)$elevation
full_pool_mead_text <- format(round(full_pool_mead), big.mark = ",")
dead_pool_mead <- tail(mead_records, 1)$elevation - 895
dead_pool_mead_text <- format(round(dead_pool_mead), big.mark = ",")

## lake powell -----
powell_records <- read_csv(file = "data/powell.csv")

latest_powell <- tail(powell_records, 1)$elevation
latest_powell_text <- format(
  round(tail(powell_records, 1)$elevation),
  big.mark = ","
)
year_ago_powell <- head(tail(powell_records, 365), 1)$elevation
year_ago_powell_text <-
  format(round(head(tail(powell_records, 365), 1)$elevation), big.mark = ",")
year_change_powell <- round(
  (100 * (latest_powell - year_ago_powell) / year_ago_powell),
  1
)
year_change_powell_text <-
  if (year_change_powell > 0) {
    paste(", or +", year_change_powell, "%,", sep = "")
  } else if (year_change_powell == 0) {
    paste("", sep = "")
  } else {
    paste(", or ", year_change_powell, "%,", sep = "")
  }
year_change_powell_elevation <- elevation <- latest_powell - year_ago_powell
year_change_powell_elevation_text <-
  if (round(year_change_powell_elevation) > 0) {
    paste(
      "up ",
      format(round(year_change_powell_elevation), big.mark = ","),
      "",
      sep = ""
    )
  } else if (round(year_change_powell_elevation) == 0) {
    paste("unchanged", sep = "")
  } else {
    paste(
      "down ",
      format(round(-1 * year_change_powell_elevation), big.mark = ","),
      "",
      sep = ""
    )
  }
ten_year_ago_powell <- head(tail(powell_records, 3652), 1)$elevation
ten_year_ago_powell_text <-
  format(round(head(tail(powell_records, 3652), 1)$elevation), big.mark = ",")
ten_year_change_powell <- round(
  (100 * (latest_powell - ten_year_ago_powell) / ten_year_ago_powell),
  1
)
ten_year_change_powell_text <-
  if (ten_year_change_powell > 0) {
    paste(", or +", ten_year_change_powell, "%,", sep = "")
  } else if (ten_year_change_powell == 0) {
    paste("", sep = "")
  } else {
    paste(", or ", ten_year_change_powell, "%,", sep = "")
  }
ten_year_change_powell_elevation <- elevation <- latest_powell -
  ten_year_ago_powell
ten_year_change_powell_elevation_text <-
  if (round(ten_year_change_powell_elevation) > 0) {
    paste(
      "up ",
      format(round(ten_year_change_powell_elevation), big.mark = ","),
      "",
      sep = ""
    )
  } else if (round(ten_year_change_powell_elevation) == 0) {
    paste("unchanged", sep = "")
  } else {
    paste(
      "down ",
      format(round(-1 * ten_year_change_powell_elevation), big.mark = ","),
      "",
      sep = ""
    )
  }

full_pool_powell <- 3708.34 - tail(powell_records, 1)$elevation
full_pool_powell_text <- format(round(full_pool_powell), big.mark = ",")
dead_pool_powell <- tail(powell_records, 1)$elevation - 3370
dead_pool_powell_text <- format(round(dead_pool_powell), big.mark = ",")

# charts ----
## mead ----
fig <- highchart() |>
  hc_add_series(
    mead_records,
    "line",
    hcaes(x = date, y = elevation),
    color = "#199fa8",
    yAxis = 0,
    animation = FALSE,
    name = "Elevation"
  ) %>%
  hc_add_series(
    mead_records,
    "line",
    hcaes(x = date, y = volume),
    color = "red",
    animation = FALSE,
    yAxis = 1,
    name = "Volume"
  ) |>
  hc_yAxis_multiples(create_axis(
    naxis = 2,
    heights = c(1, 1),
    title = list(text = NULL),
    endOnTick = FALSE,
    startOnTick = FALSE,
    plotLines = list(
      list(
        list(
          label = list(text = "Min", align = "right", x = -5),
          color = "#808080",
          width = 1.5,
          value = 895,
          zIndex = 1
        ),
        list(
          label = list(text = "Max", align = "right", x = -5),
          color = "#808080",
          width = 1.5,
          value = 1229,
          zIndex = 1
        )
      ),
      NA
    )
  )) |>
  hc_xAxis(title = "", type = "datetime") %>%
  hc_tooltip(shared = TRUE, split = TRUE) |>
  hc_add_theme(
    hc_theme_bloom()
  ) %>%
  hc_rangeSelector(
    enabled = TRUE,
    buttons = list(
      list(type = 'year', count = 2, text = '2y'),
      list(type = 'year', count = 10, text = '10y'),
      list(type = 'year', count = 30, text = '30y'),
      list(type = 'all', text = 'All')
    ),
    selected = 3
  )
fig
saveWidget(
  widget = fig,
  file = "interactive/lake_mead_water_level.html",
  selfcontained = FALSE,
  libdir = "interactive"
)
fallback_data <- mead_records %>% filter(date >= (max(date) - years(20)))
numeric_years <- decimal_date(fallback_data$date)

ascii_text <- capture.output(
  txtplot(
    x = numeric_years,
    y = fallback_data$elevation,
    width = 80,
    height = 15
  )
)
ascii_text
# Format a clean fallback snippet
ascii_text <- paste(ascii_text, collapse = "\n")
mead_fallback_html <- paste0(
  "<noscript>\n",
  "<p>Lake Powell Elevation</p>\n",
  "<pre><code style=\"font-family: monospace; font-size: 0.75em;\">", # Removed \n here
  ascii_text,
  "</code></pre>\n", # Removed \n here
  "</noscript>"
)

## powell ----
fig <- highchart() |>
  hc_add_series(
    powell_records,
    "line",
    hcaes(x = date, y = elevation),
    color = "#199fa8",
    yAxis = 0,
    animation = FALSE,
    name = "Elevation"
  ) %>%
  hc_add_series(
    powell_records,
    "line",
    hcaes(x = date, y = volume),
    color = "red",
    animation = FALSE,
    yAxis = 1,
    name = "Volume"
  ) |>
  hc_yAxis_multiples(create_axis(
    naxis = 2,
    heights = c(1, 1),
    title = list(text = NULL),
    endOnTick = FALSE,
    #startOnTick = FALSE,
    plotLines = list(
      list(
        list(
          label = list(text = "Min", align = "right", x = -5),
          color = "#808080",
          width = 1.5,
          value = 3370,
          zIndex = 1
        ),
        list(
          label = list(text = "Max", align = "right", x = -5),
          color = "#808080",
          width = 1.5,
          value = 3708.34,
          zIndex = 1
        )
      ),
      NA
    )
  )) |>
  hc_xAxis(title = "", type = "datetime") %>%
  hc_tooltip(shared = TRUE, split = TRUE) |>
  hc_add_theme(
    hc_theme_bloom()
  ) %>%
  hc_rangeSelector(
    enabled = TRUE,
    buttons = list(
      list(type = 'year', count = 2, text = '2y'),
      list(type = 'year', count = 10, text = '10y'),
      list(type = 'year', count = 30, text = '30y'),
      list(type = 'all', text = 'All')
    ),
    selected = 3
  )
fig
saveWidget(
  widget = fig,
  file = "interactive/lake_powell_water_level.html",
  selfcontained = FALSE,
  libdir = "interactive"
)
fallback_data <- powell_records %>% filter(date >= (max(date) - years(20)))
numeric_years <- decimal_date(fallback_data$date)

ascii_text <- capture.output(
  txtplot(
    x = numeric_years,
    y = fallback_data$elevation,
    width = 80,
    height = 15
  )
)
ascii_text
# Format a clean fallback snippet
ascii_text <- paste(ascii_text, collapse = "\n")
powell_fallback_html <- paste0(
  "<noscript>\n",
  "<p>Lake Powell Elevation</p>\n",
  "<pre><code style=\"font-family: monospace; font-size: 0.75em;\">", # Removed \n here
  ascii_text,
  "</code></pre>\n", # Removed \n here
  "</noscript>"
)

# text ----

cat(
  "---
layout: page
title: Water
permalink: /projects/water
---

## [Lake Mead](https://en.wikipedia.org/wiki/Lake_Mead)

<iframe src=\"/interactive/lake_mead_water_level.html\" width=\"100%\" height=\"450\"> 
</iframe>
",
  mead_fallback_html,
  "
Elevation:
- ",
  latest_mead_text,
  " feet
- ",
  dead_pool_mead_text,
  " feet above the minimum level
- ",
  full_pool_mead_text,
  " feet below the maximum level
- ",
  year_change_mead_elevation_text,
  " feet from a year ago
- ",
  ten_year_change_mead_elevation_text,
  " feet from ten years ago

## [Lake Powell](https://en.wikipedia.org/wiki/Lake_Powell)

<iframe src=\"/interactive/lake_powell_water_level.html\" width=\"100%\" height=\"450\"> 
</iframe>
",
  powell_fallback_html,
  "
Elevation:
- ",
  latest_powell_text,
  " feet
- ",
  dead_pool_powell_text,
  " feet above the minimum level
- ",
  full_pool_powell_text,
  " feet below the maximum level
- ",
  year_change_powell_elevation_text,
  " feet from a year ago
- ",
  ten_year_change_powell_elevation_text,
  " feet from ten years ago

<p class=\"updated_time\">Source: <a href=\"https://www.usbr.gov/lc/region/g4000/riverops/hourly7.html#t0\">U.S. Bureau of Reclamation</a>.</p> 



",
  file = "projects/water.md",
  sep = ""
)
