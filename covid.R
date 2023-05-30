library(httr)
library(rio)
library(tidyverse)
library(lubridate)
library(zoo)
library(jsonlite)
library(highcharter)
library(rvest)
library(xml2)
library(RColorBrewer)
library(htmlwidgets)

# interactives ----
## Champaign ----
### hhs hospitalizations ----
hospitalizations_url <- "https://healthdata.gov/resource/anag-cw7u.json?zip=61801"
hospitalizations <- rio::import(hospitalizations_url,
                                format = "json") %>% 
  mutate(Date = ymd(ymd_hms(collection_week))) %>%
  mutate(total_adult = as.double(total_adult_patients_hospitalized_confirmed_and_suspected_covid_7_day_sum)) %>%
  mutate(total_pediatric = as.double(total_pediatric_patients_hospitalized_confirmed_and_suspected_covid_7_day_sum)) %>%
  select(Date,hospital_name,total_adult,total_pediatric) %>%
  pivot_longer(cols = c(total_adult,total_pediatric),
               names_to = "names",
               values_to = "values") %>%
  filter(values >= 0) 

hospitalizations_by_date <- hospitalizations %>%
  group_by(Date,hospital_name) %>%
  summarise(total = sum(values)) %>%
  group_by(Date) %>%
  summarise(sum_hospitalized = sum(total)) %>%
  mutate(avg_hospitalized = sum_hospitalized/7) 

iwss_download_url <- "https://iwss.uillinois.edu/wastewater-treatment-plant/download/159/"
iwss_download <- content(GET(iwss_download_url))

iwss <- iwss_download %>%
  mutate(Date = ymd(sample_collect_date)) %>%
  filter(method == 1) |> 
  select(Date, sars_cov_2, method) |> 
  mutate(sars_cov_2_avg = zoo::rollmean(sars_cov_2,
                                        k = 4,
                                        fill = NA,
                                        align = "right")) 

combined <- full_join(hospitalizations_by_date,iwss) |> 
  arrange(Date) |> 
  fill(avg_hospitalized,.direction = "down") |> 
  fill(sars_cov_2_avg,.direction = "down")

fig <- hchart(combined,
              type = "line", 
              hcaes(x = Date,
                    y = avg_hospitalized),
              states = list(
                inactive = list(
                  enabled = FALSE
                )
              ),
              tooltip = list(valueDecimals = 0),
              connectNulls = TRUE,
              name = "Avg. Hospitalized",
              label = list(
                enabled = TRUE),
              color = "#d90000",
              yAxis = 0) %>%
  hc_yAxis_multiples(create_axis(naxis = 2, 
                                 heights = c(1,1),
                                 endOnTick = FALSE,
                                 title = list(text = NULL))) %>%
  hc_add_series(
    data = combined,
    connectNulls = TRUE,
    hcaes(x = Date,
          y = sars_cov_2_avg),
    label = list(
      format = "Wastewater",
      enabled = TRUE),
    states = list(
      inactive = list(
        enabled = FALSE
      )
    ),
    tooltip = list(valueDecimals = 0),
    name = "Gene Copies Per Liter (w/ Moving Avg.)",
    color = "#4e79a7",
    type = "line",
    yAxis = 1) %>%
  hc_add_series(
    data = combined,
    hcaes(x = Date,
          y = sars_cov_2),
    name = "Gene Copies Per Liter",
    color = "#c9d6e4",
    borderWidth = 0,
    states = list(
      inactive = list(
        enabled = FALSE
      )
    ),
    groupPadding = 0,
    pointPadding = 0,
    pointWidth = 2,
    enableMouseTracking = FALSE,
    zIndex = -3,
    type = "column",
    yAxis = 1)  %>%
hc_credits(
  enabled = TRUE,
  text = "Source: CDC and IWSS",
  href = "https://bzigterman.com/interactive/champaign_covid.html") %>%
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
                     list(type = 'year', count = 2, text = '2y'),
                     list(type = 'all', text = 'All')),
                   selected = 2)

fig
saveWidget(widget = fig, file = "interactive/champaign_covid.html",
           selfcontained = FALSE,
           libdir = "interactive")

## set variables ----
champaign_avg_hospitalized <- format(round(signif(tail(hospitalizations_by_date$avg_hospitalized,1),3)),big.mark=",")
champaign_month_ago_hospitalized <- 
  format(round(signif(tail(lag(hospitalizations_by_date$avg_hospitalized,2),1),3)),big.mark=",")

# case acceleration ----
### get data ----

#### World  ----
owid_url <- "https://github.com/owid/covid-19-data/raw/master/public/data/cases_deaths/new_cases.csv"
owid_new_cases_world <- rio::import(owid_url, format = "csv") |> 
  select(date,World) |> 
  mutate(new_cases = World) |> 
  mutate(avg_new_cases = rollmean(new_cases, k = 7, 
                                  fill = NA, align = "right")) |> 
  mutate(pct_change_new_cases = 
           ((avg_new_cases - lag(avg_new_cases,14))/lag(avg_new_cases,14))) %>%
  mutate(Date = ymd(date)) %>%
  mutate(date = as_date(Date)) %>%
  mutate(location = "World")

owid_new_cases_usa <- rio::import(owid_url, format = "csv") |> 
  janitor::clean_names() |> 
  select(date,united_states) |> 
  mutate(new_cases = united_states) |> 
  mutate(avg_new_cases = rollmean(new_cases, k = 7, 
                                  fill = NA, align = "right")) |> 
  mutate(pct_change_new_cases = 
           ((avg_new_cases - lag(avg_new_cases,14))/lag(avg_new_cases,14))) %>%
  mutate(Date = ymd(date)) %>%
  mutate(date = as_date(Date)) %>%
  mutate(location = "United States")

### merge data ----
combined_cases <- full_join(owid_new_cases_usa, owid_new_cases_world) |> 
  select(location, Date,pct_change_new_cases)

### set variables ----
acceleration_weekday <- wday(tail(owid_new_cases_world$Date,1), label = TRUE, abbr = FALSE)
acceleration_usa <- round(100*tail(owid_new_cases_usa$pct_change_new_cases,1), digits = 0)
acceleration_world <- round(100*tail(owid_new_cases_world$pct_change_new_cases,1), digits = 0)

### text ----
acceleration_text <- paste(
  "As of ",acceleration_weekday,", the 14-day percent change in average new cases was:
  
",
"- ",acceleration_usa,"% in the United States
",
"- ",acceleration_world,"% worldwide",
"
",
sep = ""
)

# death_acceleration_text ----
## Illinois ----
### get data ----

#### World ----
owid_url <- "https://github.com/owid/covid-19-data/raw/master/public/data/cases_deaths/new_deaths.csv"
owid_new_deaths_world <- rio::import(owid_url, format = "csv") |> 
  select(date,World) |> 
  mutate(new_deaths = World) |> 
  mutate(avg_new_deaths = rollmean(new_deaths, k = 7, 
                                   fill = NA, align = "right")) |> 
  mutate(pct_change_new_deaths = 
           ((avg_new_deaths - lag(avg_new_deaths,14))/lag(avg_new_deaths,14))) %>%
  mutate(Date = ymd(date)) %>%
  mutate(date = as_date(Date)) %>%
  mutate(location = "World")
owid_new_cases_usa <- rio::import(owid_url, format = "csv") |> 
  janitor::clean_names() |> 
  select(date,united_states) |> 
  mutate(new_deaths = united_states) |> 
  mutate(avg_new_deaths = rollmean(new_deaths, k = 7, 
                                  fill = NA, align = "right")) |> 
  mutate(pct_change_new_deaths = 
           ((avg_new_deaths - lag(avg_new_deaths,14))/lag(avg_new_deaths,14))) %>%
  mutate(Date = ymd(date)) %>%
  mutate(date = as_date(Date)) %>%
  mutate(location = "United States")

### merge data ----
combined_deaths <- full_join(owid_new_cases_usa, owid_new_deaths_world) %>%
  select(location, Date,pct_change_new_deaths)

acceleration_weekday <- wday(tail(owid_new_deaths_world$Date,1), label = TRUE, abbr = FALSE)
acceleration_usa <- round(100*tail(owid_new_cases_usa$pct_change_new_deaths,1), digits = 0)
acceleration_world <- round(100*tail(owid_new_deaths_world$pct_change_new_deaths,1), digits = 0)

### text ----
death_acceleration_text <- paste(
  "As of ",acceleration_weekday,", the 14-day percent change in average new deaths was:
  
",
"- ",acceleration_usa,"% in the United States
",
"- ",acceleration_world,"% worldwide",
"
",
sep = ""
)

# make web text ----
## covid ----
web_text <- paste(
  "---
layout: page
title: COVID-19
permalink: /projects/covid
imageurl: https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/Champaign_facet.png
webappicon: /covid.png
---

## Champaign County

<iframe src=\"/interactive/champaign_covid.html\" width=\"100%\" height=\"400\"> 
</iframe>

Charts for Champaign County are posted weekly on Mastodon <a rel=\"me\" href=\"https://mastodon.social/@ChampaignCovid\">@ChampaignCovid@mastodon.social</a>.

More information about wastewater surveillance available from the [CDC](https://covid.cdc.gov/covid-data-tracker/#wastewater-surveillance) and the [Illinois Wastewater Surveillance System](https://iwss.uillinois.edu/wastewater-treatment-plant/159/).

## Illinois

<picture>
  <source srcset=\"https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/IL_facet.png\"
          media=\"(min-width: 750px)\">
  <img src=\"https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/IL_facet_mobile.png\" alt=\"\" />
</picture>

## United States

<picture>
  <source srcset=\"https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/US_facet.png\"
          media=\"(min-width: 750px)\">
  <img src=\"https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/US_facet_mobile.png\" alt=\"\" />
</picture>

## World

<picture>
  <source srcset=\"https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/world_facet.png\"
          media=\"(min-width: 750px)\">
  <img src=\"https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/world_facet_mobile.png\" alt=\"\" />
</picture>

## Case Acceleration

",acceleration_text,
"
<picture>
  <source srcset=\"https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/new_cases_change_facet.png\"
          media=\"(min-width: 750px)\">
  <img src=\"https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/new_cases_change_facet_mobile.png\" alt=\"\" />
</picture>

This chart measures how quickly the average number of new cases is changing, or roughly, the slope of the new-cases charts above. If the case acceleration is positive, then the average number of new cases is increasing. If it is negative, then the average number of new cases is decreasing.
","
## Death Acceleration

",death_acceleration_text,
"
<picture>
  <source srcset=\"https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/new_deaths_change_facet.png\"
          media=\"(min-width: 750px)\">
  <img src=\"https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/new_deaths_change_facet_mobile.png\" alt=\"\" />
</picture>

This chart measures how quickly the average number of new deaths is changing, or roughly, the slope of the new-deaths charts above. If the death acceleration is positive, then the average number of new deaths is increasing. If it is negative, then the average number of new deaths is decreasing.

### Sources

[Champaign-Urbana Public Health District](https://www.c-uphd.org/champaign-urbana-illinois-coronavirus-information.html), [University of Illinois](https://go.illinois.edu/COVIDTestingData), [Illinois Department of Public Health](http://www.dph.illinois.gov/covid19), [Centers for Disease Control and Prevention](https://covid.cdc.gov/covid-data-tracker/), [U.S. Department of Health and Human Services](https://healthdata.gov/Hospital/COVID-19-Reported-Patient-Impact-and-Hospital-Capa/anag-cw7u), [The New York Times](https://github.com/nytimes/covid-19-data), [Our World in Data](https://github.com/owid/covid-19-data/tree/master/public/data) and the [COVID-19 Data Repository by the Center for Systems Science and Engineering (CSSE) at Johns Hopkins University](https://github.com/CSSEGISandData/COVID-19).

",
sep = ""
)

if (champaign_avg_hospitalized >= 0 && 
    champaign_month_ago_hospitalized >= 0 
) {
  write_lines(web_text,"projects/covid.md")
}
