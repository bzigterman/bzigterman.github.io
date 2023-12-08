library(tidyverse)
library(lubridate)
library(scales)
library(fredr)
library(cowplot)
library(ggforce)
library(gt)
library(gtExtras)
library(zoo)
library(rvest)
library(highcharter)
library(htmlwidgets)
library(httr)

fredr_set_key(Sys.getenv("FRED_API_KEY"))

recent_year <- ymd((today() - years(1)))
recent_years <- ymd((today() - years(5)))
less_recent_years <- ymd((today() - years(6)))
past_ten_years <- ymd((today() - years(11)))

# usa ----

## initial unemployment claims ----
data <- fredr(series_id = "ICSA")
recent_data <- data %>%
  filter(date > recent_year) %>%
  mutate(short_date = paste(month(date, label = TRUE, abbr = TRUE),
                            day(date)))


fig <- hchart(data, "line", hcaes(x = date,
                                  y = value),
              animation = FALSE,
              name = "Claims") %>%
  hc_title(text = "Initial Unemployment Claims") %>%
  hc_credits(
    enabled = TRUE,
    text = paste("Source: U.S. Census Bureau. Latest data:",
                 tail(recent_data$short_date,1)),
    href = "https://fred.stlouisfed.org/series/ICSA") %>%
  hc_yAxis(title = "",
           min = 0,
           endOnTick = FALSE) %>%
  hc_xAxis(title = "") %>%
  hc_add_theme(
    hc_theme_bloom()
  )%>%
  hc_rangeSelector(enabled = TRUE,
                   buttons = list(
                     list(type = 'year', count = 1, text = '1y'),
                     list(type = 'year', count = 2, text = '2y'),
                     list(type = 'year', count = 5, text = '5y'),
                     list(type = 'year', count = 10, text = '10y'),
                     list(type = 'all', text = 'All')),
                   selected = 0)

fig
saveWidget(widget = fig, file = "interactive/initial_claims.html",
           selfcontained = FALSE,
           libdir = "interactive")

## unemployment rate ----
data <- fredr(series_id = "UNRATE")
recent_data <- data %>%
  filter(date > recent_years) %>%
  mutate(short_date = paste(month(date, label = TRUE, abbr = FALSE)))

fig <- hchart(data, "line", hcaes(x = date,
                                  y = value),
              name = "Rate",
              tooltip = list(valueSuffix = "%")) %>%
  hc_title(text = "Unemployment Rate") %>%
  hc_yAxis(title = "",
           min = 0,
           endOnTick = FALSE) %>%
  hc_xAxis(title = "") %>%
  hc_credits(
    enabled = TRUE,
    text = paste("Source: U.S. Bureau of Labor Statistics. Latest data:",
                 tail(recent_data$short_date,1)),
    href = "https://fred.stlouisfed.org/series/UNRATE") %>%
  hc_add_theme(
    hc_theme_bloom()
  )%>%
  hc_rangeSelector(enabled = TRUE,
                   buttons = list(
                     list(type = 'year', count = 1, text = '1y'),
                     list(type = 'year', count = 2, text = '2y'),
                     list(type = 'year', count = 5, text = '5y'),
                     list(type = 'year', count = 10, text = '10y'),
                     list(type = 'all', text = 'All')),
                   selected = 2)# %>%
#hc_navigator(enabled = TRUE) 
fig
saveWidget(widget = fig, file = "interactive/us_unemployment_rate.html",
           selfcontained = FALSE,
           libdir = "interactive")


## employment -----
data <- fredr(series_id = "PAYEMS")%>%
  mutate(change = value - lag(value))
recent_data <- data %>%
  filter(date > recent_years) %>%
  mutate(short_date = paste(month(date, label = TRUE, abbr = FALSE))) 

fig <- hchart(data,
              type = "line", 
              hcaes(x = date,
                    y = value*1000),
              name = "Total",
              color = "black",
              yAxis = 0) %>%
  hc_yAxis_multiples(create_axis(naxis = 2, heights = c(1, 1),
                                 crosshair = c(TRUE,FALSE),
                                 endOnTick = FALSE,
                                 startOnTick = FALSE,
                                 title = list(text = NULL))) %>%
  hc_add_series(
    data = data,
    hcaes(x = date,
          y = change*1000),
    name = "Change",
    type = "column",
    color = "#199fa8",
    negativeColor = "#b32704",
    yAxis = 1) %>%
  hc_title(text = "Nonfarm Payroll") %>%
  hc_credits(
    enabled = TRUE,
    text = paste("Source: U.S. Bureau of Labor Statistics. Latest data:",
                 tail(recent_data$short_date,1)),
    href = "https://fred.stlouisfed.org/series/PAYEMS") %>%
  hc_xAxis(title = list(text = NULL)) %>%
  hc_tooltip(
    shared = TRUE
  ) %>%
  hc_add_theme(
    hc_theme_bloom()
  ) %>%
  hc_rangeSelector(enabled = TRUE,
                   buttons = list(
                     list(type = 'year', count = 1, text = '1y'),
                     list(type = 'year', count = 2, text = '2y'),
                     list(type = 'year', count = 5, text = '5y'),
                     list(type = 'year', count = 10, text = '10y'),
                     list(type = 'all', text = 'All')),
                   selected = 2)

fig
saveWidget(widget = fig, file = "interactive/us_employment.html",
           selfcontained = FALSE,
           libdir = "interactive")

## Disposable Income ----
data <-fredr(series_id = "A229RX0")
recent_data <- data %>%
  filter(date > recent_years) %>%
  mutate(short_date = paste(month(date, label = TRUE, abbr = FALSE)))

fig <- hchart(data, "line", hcaes(x = date,
                                  y = value),
              name = "Income") %>%
  hc_title(text = "Real Disposable Personal Income: Per Capita") %>%
  hc_credits(
    enabled = TRUE,
    text = paste("Source: U.S. Bureau of Economic Analysis. Latest data:",
                 tail(recent_data$short_date,1)),
    href = "https://fred.stlouisfed.org/series/A229RX0") %>%
  hc_yAxis(title = list(text = ""),
           #min = 0,
           startOnTick = FALSE,
           endOnTick = FALSE) %>%
  hc_xAxis(title = list(text = NULL)) %>%
  hc_add_theme(
    hc_theme_bloom()
  )%>%
  hc_rangeSelector(enabled = TRUE,
                   buttons = list(
                     list(type = 'year', count = 1, text = '1y'),
                     list(type = 'year', count = 2, text = '2y'),
                     list(type = 'year', count = 5, text = '5y'),
                     list(type = 'year', count = 10, text = '10y'),
                     list(type = 'all', text = 'All')),
                   selected = 2)
fig
saveWidget(widget = fig, file = "interactive/disposable_income.html",
           selfcontained = FALSE,
           libdir = "interactive")

## labor productivity ----
data <-fredr(series_id = "OPHNFB") %>%
  mutate(change = round(100*(value - lag(value, 40))/lag(value, 40),1))
recent_data <- data %>%
  filter(date > recent_years) %>%
  mutate(short_date = paste0("Q",quarter(date)))

fig <- hchart(data, "line", hcaes(x = date,
                                  y = change),
              name = "Change",
              tooltip = list(valueSuffix = "%")) %>%
  hc_title(text = "10-Year Change in Labor Productivity") %>%
  hc_credits(
    enabled = TRUE,
    text = paste("Source: U.S. Bureau of Labor Statistics. Latest data:",
                 tail(recent_data$short_date,1)),
    href = "https://fred.stlouisfed.org/series/OPHNFB") %>%
  hc_yAxis(title = list(text = ""),
           softMin = 0,
           endOnTick = FALSE,
           startOnTick = FALSE) %>%
  hc_xAxis(title = list(text = NULL)) %>%
  hc_add_theme(
    hc_theme_bloom()
  )%>%
  hc_rangeSelector(enabled = TRUE,
                   buttons = list(
                     list(type = 'year', count = 10, text = '10y'),
                     list(type = 'year', count = 25, text = '25y'),
                     list(type = 'year', count = 50, text = '50y'),
                     list(type = 'all', text = 'All')),
                   selected = 2)
fig
saveWidget(widget = fig, file = "interactive/labor_productivity.html",
           selfcontained = FALSE,
           libdir = "interactive")

## real GDP ----
data <-fredr(series_id = "GDPC1")
recent_data <- data %>%
  filter(date > recent_years) %>%
  mutate(short_date = paste(month(date, label = TRUE, abbr = FALSE))) 

### real gdp growth ----
data <- fredr(series_id = "A191RL1Q225SBEA")
recent_data <- data %>%
  filter(date > recent_years) %>%
  mutate(short_date = paste0("Q",quarter(date)))

gdp_data <-fredr(series_id = "GDPC1")
gdp_growth <- fredr(series_id = "A191RL1Q225SBEA") %>%
  mutate(change = value) %>%
  select(date, change)

gdp_growth_forecast_atl <- fredr(series_id = "GDPNOW") %>%
  mutate(change = value) %>%
  select(date, change) 
gdp_growth_forecast_stl <- fredr(series_id = "STLENI") %>%
  mutate(change = value) %>%
  select(date, change) 
nyfed_url <- "https://www.newyorkfed.org/medialibrary/Research/Interactives/Data/NowCast/Downloads/New-York-Fed-Staff-Nowcast_download_data.xlsx"
gdp_growth_forecast_ny <- rio::import(nyfed_url,
                                      format = "xlsx",
                                      which = "Forecasts By Quarter") |> 
  janitor::row_to_names(row_number = 3) |> 
  janitor::clean_names() |> 
  select(!forecast_date) 
gdp_growth_forecast_ny <- 
  gdp_growth_forecast_ny[!(
    rowSums(is.na(
      gdp_growth_forecast_ny)) == ncol(gdp_growth_forecast_ny)), ]

gdp_growth_forecast_ny <- gdp_growth_forecast_ny |> 
  tail(1) |># remove_empty()  |> 
  pivot_longer(cols = everything()) |> 
  mutate(date = str_replace(name,"x", "")) |> 
  mutate(date = yq(date)) |> 
  mutate(change = as.numeric( value) )|> 
  select(date,change)



gdp_growth_forecasts <- full_join(gdp_growth_forecast_atl,
                                  gdp_growth_forecast_stl) |> 
  full_join(gdp_growth_forecast_ny) |> 
  group_by(date) |> 
  drop_na() |> 
  mutate(min = min(change))|> 
  mutate(max = max(change)) |> 
  ungroup() |> 
  select(date,min,max) |> 
  distinct()

gdp_growth_data <- full_join(gdp_growth_forecasts,gdp_growth,
                             join_by(date)) |> 
  mutate(min = if_else(is.na(change),
                       min,
                       NA))|>
  mutate(max = if_else(is.na(change),
                       max,
                       NA))|>
  mutate(min = round(min, digits = 1)) |>
  mutate(max = round(max, digits = 1)) |>
  select(date, change, min,max) 

data <- full_join(gdp_data, gdp_growth_data) %>%
  select(date, value, change, min,max) %>%
  mutate(short_date = paste0("Q",quarter(date))) %>%
  mutate(actual_value = value*1000000000)

fig <- hchart(data,
              type = "line", 
              hcaes(x = date,
                    y = actual_value),
              name = "Total",
              #tooltip = list(pointFormat = "{point.actual_value:,.0f}"),
              color = "black",
              yAxis = 0) %>%
  hc_yAxis_multiples(create_axis(naxis = 2, heights = c(1, 1),
                                 endOnTick = FALSE,
                                 startOnTick = FALSE,
                                 title = list(text = NULL))) %>%
  hc_add_series(
    data = data,
    grouping = FALSE,
    hcaes(x = date,
          y = change),
    name = "Change",
    states = list(
      inactive = list(
        enabled = FALSE
      )
    ),
    type = "column",
    tooltip = list(valueSuffix = "%"),
    color = "#199fa8",
    negativeColor = "#b32704",
    yAxis = 1) %>%
  hc_add_series(
    data = data,
    grouping = FALSE,
    hcaes(x = date,
          low = min,
          high = max),
    states = list(
      inactive = list(
        enabled = FALSE
      )
    ),
    borderWidth = 0,
    name = "Forecast",
    type = "columnrange",
    minPointLength = 3,
    tooltip = list(valueSuffix = "%"),
    color = "#8ccfd3",
    negativeColor = "#d99381",
    yAxis = 1) %>%
  hc_add_series(
    data = data,
    grouping = FALSE,
    hcaes(x = date,
          y = max),
    states = list(
      inactive = list(
        enabled = FALSE
      )
    ),
    name = "Forecast",
    type = "column",
    enableMouseTracking = FALSE,
    borderWidth = 0,
    #minPointLength = 3,
    tooltip = list(valueSuffix = "%"),
    color = "#e8f5f6",
    negativeColor = "#f7e9e5",
    zIndex = -1,
    yAxis = 1) %>%
  hc_title(text = "Real GDP") %>%
  hc_credits(
    enabled = TRUE,
    text = "Source: U.S. BEA, St. Louis Fed, Atlanta Fed, NY Fed",
    href = "https://fred.stlouisfed.org/series/GDPC1") %>%
  hc_xAxis(title = list(text = NULL),
           type = "datetime") %>%
  hc_tooltip(
    shared = TRUE
  ) %>%
  hc_add_theme(
    hc_theme_bloom()
  ) %>%
  hc_rangeSelector(enabled = TRUE,
                   buttons = list(
                     list(type = 'year', count = 2, text = '2y'),
                     list(type = 'year', count = 5, text = '5y'),
                     list(type = 'year', count = 10, text = '10y'),
                     list(type = 'year', count = 25, text = '25y'),
                     list(type = 'all', text = 'All')),
                   selected = 1)

fig
saveWidget(widget = fig, file = "interactive/gdp.html",
           selfcontained = FALSE,
           libdir = "interactive")

# ## combined employment and gdp ----
# us_employment_gdp_grid <- plot_grid(employment, gdp, employment_change, gdp_change,
#           align = "hv",
#           rel_heights = c(1,1))

## retail sales ---- 
data <- fredr(series_id = "RSAFS") %>%
  drop_na()
recent_data <- data %>%
  filter(date > recent_years) %>%
  mutate(short_date = paste(month(date, label = TRUE, abbr = FALSE)))

lang <- getOption("highcharter.lang")
lang$numericSymbols <- list("k", "M", "B", "T", "P", "E")
options(highcharter.lang = lang)

fig <- hchart(data, "line", hcaes(x = date,
                                  y = value*1000000),
              name = "Sales") %>%
  hc_title(text = "Retail Trade and Food Services") %>%
  hc_credits(
    enabled = TRUE,
    text = paste("Source: U.S. Census Bureau. Latest data:",
                 tail(recent_data$short_date,1)),
    href = "https://fred.stlouisfed.org/series/RSAFS") %>%
  hc_yAxis(title = list(text = ""),
           endOnTick = FALSE,
           startOnTick = FALSE) %>%
  hc_xAxis(title = list(text = NULL)) %>%
  hc_add_theme(
    hc_theme_bloom()
  )%>%
  hc_rangeSelector(enabled = TRUE,
                   buttons = list(
                     list(type = 'year', count = 1, text = '1y'),
                     list(type = 'year', count = 2, text = '2y'),
                     list(type = 'year', count = 5, text = '5y'),
                     list(type = 'year', count = 10, text = '10y'),
                     list(type = 'all', text = 'All')),
                   selected = 2)
fig
saveWidget(widget = fig, file = "interactive/retail_sales.html",
           selfcontained = FALSE,
           libdir = "interactive")

## durable goods ----
data <- fredr(series_id = "DGORDER") %>%
  drop_na()
recent_data <- data %>%
  filter(date > recent_years) %>%
  mutate(short_date = paste(month(date, label = TRUE, abbr = FALSE)))

lang <- getOption("highcharter.lang")
lang$numericSymbols <- list("k", "M", "B", "T", "P", "E")
options(highcharter.lang = lang)

fig <- hchart(data, "line", hcaes(x = date,
                                  y = value*1000000),
              name = "Orders") %>%
  hc_title(text = "Durable Goods Orders") %>%
  hc_credits(
    enabled = TRUE,
    text = paste("Source: U.S. Census Bureau. Latest data:",
                 tail(recent_data$short_date,1)),
    href = "https://fred.stlouisfed.org/series/DGORDER") %>%
  hc_yAxis(title = list(text = ""),
           endOnTick = FALSE,
           startOnTick = FALSE) %>%
  hc_xAxis(title = list(text = NULL)) %>%
  hc_add_theme(
    hc_theme_bloom()
  )%>%
  hc_rangeSelector(enabled = TRUE,
                   buttons = list(
                     list(type = 'year', count = 1, text = '1y'),
                     list(type = 'year', count = 2, text = '2y'),
                     list(type = 'year', count = 5, text = '5y'),
                     list(type = 'year', count = 10, text = '10y'),
                     list(type = 'all', text = 'All')),
                   selected = 2)
fig
saveWidget(widget = fig, file = "interactive/durable_goods.html",
           selfcontained = FALSE,
           libdir = "interactive")

## gini index ----

# data <- fredr(series_id = "SIPOVGINIUSA")
# recent_data <- data %>%
#   filter(date > recent_years) %>%
#   mutate(short_date = paste(year(date)))

## consumer sentiment ----
data <- fredr(series_id = "UMCSENT") %>%
  drop_na()
recent_data <- data %>%
  filter(date > recent_years) %>%
  mutate(short_date = paste(month(date, label = TRUE, abbr = FALSE))) 

fig <- hchart(data, "line", hcaes(x = date,
                                  y = value),
              name = "Index") %>%
  hc_title(text = "Consumer Sentiment Index") %>%
  hc_credits(
    enabled = TRUE,
    text = paste("Source: University of Michigan Consumer Survey. Latest data:",
                 tail(recent_data$short_date,1)),
    href = "https://fred.stlouisfed.org/series/UMCSENT") %>%
  hc_yAxis(title = list(text = ""),
           endOnTick = FALSE,
           startOnTick = FALSE) %>%
  hc_xAxis(title = list(text = NULL)) %>%
  hc_add_theme(
    hc_theme_bloom()
  )%>%
  hc_rangeSelector(enabled = TRUE,
                   buttons = list(
                     list(type = 'year', count = 1, text = '1y'),
                     list(type = 'year', count = 2, text = '2y'),
                     list(type = 'year', count = 5, text = '5y'),
                     list(type = 'year', count = 10, text = '10y'),
                     list(type = 'all', text = 'All')),
                   selected = 2)
fig
saveWidget(widget = fig, file = "interactive/consumer_sentiment.html",
           selfcontained = FALSE,
           libdir = "interactive")

## inflation ----
data <- fredr(series_id = "CPIAUCNS") %>%
  mutate(change = ((value - lag(value, 12))/lag(value, 12))) %>%
  mutate(series_id = "CPI") %>%
  drop_na()
recent_data <- data %>%
  filter(date > recent_years) %>%
  mutate(short_date = paste(month(date, label = TRUE, abbr = FALSE)))

core <- fredr(series_id = "CPILFENS") %>%
  mutate(change = ((value - lag(value, 12))/lag(value, 12))) %>%
  mutate(series_id = "Core CPI") %>%
  drop_na()

pce <- fredr(series_id = "PCEPI") %>%
  mutate(change = ((value - lag(value, 12))/lag(value, 12))) %>%
  mutate(series_id = "PCE") %>%
  drop_na()

core_pce <- fredr(series_id = "PCEPILFE") %>%
  mutate(change = ((value - lag(value, 12))/lag(value, 12))) %>%
  mutate(series_id = "Core PCE") %>%
  drop_na()

data2 <- full_join(data,core) %>%
  full_join(pce) %>% full_join(core_pce) %>%
  select(date,series_id,change) %>%
  pivot_longer(cols = c(change)) %>%
  select(date, series_id, value) %>%
  mutate(series_id = recode_factor(series_id,
                                   "CPI" = "CPI",
                                   "Core CPI" = "Core CPI",
                                   "PCE" = "PCE",
                                   "Core PCE" = "Core PCE"))

fig <- hchart(data2, "line", hcaes(x = date,
                                   y = round(value*100, digits = 1),
                                   group = series_id),
              animation = FALSE,
              tooltip = list(valueSuffix = "%")) %>%
  hc_title(text = "Inflation") %>%
  hc_colors(c("#1f78b4","#a6cee3","#A0090D","#d99c9e")) %>%
  hc_credits(
    enabled = TRUE,
    text = paste("Source: U.S. Bureaus of Labor Statistics and Economic Analysis. Latest data:",
                 tail(recent_data$short_date,1)),
    href = "https://fred.stlouisfed.org/series/CPIAUCNS") %>%
  hc_yAxis(title = list(text = ""),
           endOnTick = FALSE,
           startOnTick = FALSE) %>%
  hc_xAxis(title = list(text = NULL)) %>%
  hc_legend(floating = TRUE,
            layout = "vertical") %>%
  hc_tooltip(shared = TRUE,
             sort = TRUE) %>%
  hc_add_theme(
    hc_theme_bloom()
  )%>%
  hc_rangeSelector(enabled = TRUE,
                   buttons = list(
                     list(type = 'year', count = 5, text = '5y'),
                     list(type = 'year', count = 10, text = '10y'),
                     list(type = 'year', count = 25, text = '25y'),
                     list(type = 'year', count = 50, text = '50y'),
                     list(type = 'all', text = 'All')),
                   selected = 1)
fig
saveWidget(widget = fig, file = "interactive/inflation.html",
           selfcontained = FALSE,
           libdir = "interactive")

### prices ----
#### gas ----
data <- fredr(series_id = "GASREGW") %>%
  drop_na()
recent_data <- data %>%
  filter(date > recent_years) %>%
  mutate(short_date = paste(month(date, label = TRUE, abbr = TRUE),
                            day(date)))

fig <- hchart(data, "line", hcaes(x = date,
                                  y = value),
              name = "Price") %>%
  hc_title(text = "Average U.S. Gas Price") %>%
  hc_credits(
    enabled = TRUE,
    text = paste("Source: U.S. Energy Information Administration. Latest data:",
                 tail(recent_data$short_date,1)),
    href = "https://fred.stlouisfed.org/series/GASREGW") %>%
  hc_yAxis(title = list(text = ""),
           min = 0,
           endOnTick = FALSE) %>%
  hc_xAxis(title = list(text = NULL)) %>%
  hc_add_theme(
    hc_theme_bloom()
  )%>%
  hc_rangeSelector(enabled = TRUE,
                   buttons = list(
                     list(type = 'year', count = 1, text = '1y'),
                     list(type = 'year', count = 2, text = '2y'),
                     list(type = 'year', count = 5, text = '5y'),
                     list(type = 'year', count = 10, text = '10y'),
                     list(type = 'all', text = 'All')),
                   selected = 2)
fig
saveWidget(widget = fig, file = "interactive/us_gas.html",
           selfcontained = FALSE,
           libdir = "interactive")
#### milk ----
data <- fredr(series_id = "APU0000709112") %>%
  drop_na()
recent_data <- data %>%
  filter(date > recent_years) %>%
  mutate(short_date = paste(month(date, label = TRUE, abbr = FALSE))) 

fig <- hchart(data, "line", hcaes(x = date,
                                  y = value),
              name = "Price") %>%
  hc_title(text = "Average Price for a Gallon of Milk") %>%
  hc_credits(
    enabled = TRUE,
    text = paste("Source: U.S. Bureau of Labor Statistics. Latest data:",
                 tail(recent_data$short_date,1)),
    href = "https://fred.stlouisfed.org/series/APU0000709112") %>%
  hc_yAxis(title = list(text = ""),
           endOnTick = FALSE,
           min = 0) %>%
  hc_xAxis(title = list(text = NULL)) %>%
  hc_add_theme(
    hc_theme_bloom()
  )%>%
  hc_rangeSelector(enabled = TRUE,
                   buttons = list(
                     list(type = 'year', count = 1, text = '1y'),
                     list(type = 'year', count = 2, text = '2y'),
                     list(type = 'year', count = 5, text = '5y'),
                     list(type = 'year', count = 10, text = '10y'),
                     list(type = 'all', text = 'All')),
                   selected = 2)
fig
saveWidget(widget = fig, file = "interactive/milk.html",
           selfcontained = FALSE,
           libdir = "interactive")

#### eggs ----
data <- fredr(series_id = "APU0000708111") %>%
  drop_na()
recent_data <- data %>%
  filter(date > recent_years) %>%
  mutate(short_date = paste(month(date, label = TRUE, abbr = FALSE))) 

fig <- hchart(data, "line", hcaes(x = date,
                                  y = value),
              name = "Price") %>%
  hc_title(text = "Average Price for a Dozen Eggs") %>%
  hc_credits(
    enabled = TRUE,
    text = paste("Source: U.S. Bureau of Labor Statistics. Latest data:",
                 tail(recent_data$short_date,1)),
    href = "https://fred.stlouisfed.org/series/APU0000708111") %>%
  hc_yAxis(title = list(text = ""),
           min = 0,
           endOnTick = FALSE) %>%
  hc_xAxis(title = list(text = NULL)) %>%
  hc_add_theme(
    hc_theme_bloom()
  )%>%
  hc_rangeSelector(enabled = TRUE,
                   buttons = list(
                     list(type = 'year', count = 1, text = '1y'),
                     list(type = 'year', count = 2, text = '2y'),
                     list(type = 'year', count = 5, text = '5y'),
                     list(type = 'year', count = 10, text = '10y'),
                     list(type = 'all', text = 'All')),
                   selected = 2)
fig
saveWidget(widget = fig, file = "interactive/eggs.html",
           selfcontained = FALSE,
           libdir = "interactive")

## population ----
data <-fredr(series_id = "POPTHM")
recent_data <- data %>%
  filter(date > past_ten_years) %>%
  mutate(short_date = paste(month(date, label = TRUE, abbr = FALSE)))

fig <- hchart(data, "line", hcaes(x = date,
                                  y = value*1000),
              name = "Population") %>%
  hc_title(text = "Population") %>%
  hc_credits(
    enabled = TRUE,
    text = paste("Source: U.S. Bureau of Economic Analysis. Latest data:",
                 tail(recent_data$short_date,1)),
    href = "https://fred.stlouisfed.org/series/POPTHM") %>%
  hc_yAxis(title = list(text = ""),
           endOnTick = FALSE,
           startOnTick = FALSE) %>%
  hc_xAxis(title = "") %>%
  hc_add_theme(
    hc_theme_bloom()
  ) %>%
  hc_rangeSelector(enabled = TRUE,
                   buttons = list(
                     list(type = 'year', count = 10, text = '10y'),
                     list(type = 'year', count = 25, text = '25y'),
                     list(type = 'year', count = 50, text = '50y'),
                     list(type = 'all', text = 'All')),
                   selected = 3)# %>%
#hc_navigator(enabled = TRUE) 
fig
saveWidget(widget = fig, file = "interactive/us_population.html",
           selfcontained = FALSE,
           libdir = "interactive")

# Champaign ----
## unemployment rate ----
data <- fredr(series_id = "ILCHAM9URN")
recent_data <- data %>%
  filter(date > recent_years) %>%
  mutate(short_date = paste(month(date, label = TRUE, abbr = FALSE)))

fig <- hchart(data, "line", hcaes(x = date,
                                  y = value),
              name = "Rate",
              tooltip = list(valueSuffix = "%")) %>%
  hc_title(text = "Unemployment Rate") %>%
  hc_yAxis(title = "",
           min = 0,
           endOnTick = FALSE) %>%
  hc_xAxis(title = "") %>%
  hc_credits(
    enabled = TRUE,
    text = paste("Not seasonally adjusted. Source: U.S. Bureau of Labor Statistics. Latest data:",
                 tail(recent_data$short_date,1)),
    href = "https://fred.stlouisfed.org/series/ILCHAM9URN") %>%
  hc_add_theme(
    hc_theme_bloom()
  )%>%
  hc_rangeSelector(enabled = TRUE,
                   buttons = list(
                     list(type = 'year', count = 1, text = '1y'),
                     list(type = 'year', count = 2, text = '2y'),
                     list(type = 'year', count = 5, text = '5y'),
                     list(type = 'year', count = 10, text = '10y'),
                     list(type = 'all', text = 'All')),
                   selected = 2)# %>%
#hc_navigator(enabled = TRUE) 
fig
saveWidget(widget = fig, file = "interactive/champaign_unemployment_rate.html",
           selfcontained = FALSE,
           libdir = "interactive")

## employment -----
data <- fredr(series_id = "LAUCN170190000000005") %>%
  mutate(annual_avg = rollmean(value, k = 12, 
                               fill = NA, align = "right")) %>%
  mutate(change = value - lag(value, n = 12))

recent_data <- data %>%
  filter(date > less_recent_years) %>%
  mutate(short_date = paste(month(date, label = TRUE, abbr = FALSE)))

fig <- hchart(data,
              type = "line", 
              hcaes(x = date,
                    y = value),
              name = "Total",
              color = "#cecece",
              yAxis = 0) %>%
  hc_yAxis_multiples(create_axis(naxis = 2, 
                                 crosshair = c(TRUE,FALSE),
                                 heights = c(1, 1),
                                 endOnTick = FALSE,
                                 startOnTick = FALSE,
                                 title = list(text = NULL))) %>%
  hc_add_series(
    data = data,
    hcaes(x = date,
          y = round(annual_avg)),
    name = "Annual Avg.",
    color = "black",
    type = "line",
    yAxis = 0) %>%
  hc_add_series(
    data = data,
    hcaes(x = date,
          y = change),
    name = "Annual Change",
    type = "column",
    color = "#199fa8",
    negativeColor = "#b32704",
    yAxis = 1) %>%
  hc_title(text = "Nonfarm Payroll") %>%
  hc_xAxis(title = list(text = NULL)) %>%
  hc_credits(
    enabled = TRUE,
    text = paste("Source: U.S. Bureau of Labor Statistics. Latest data:",
                 tail(recent_data$short_date,1)),
    href = "https://fred.stlouisfed.org/series/LAUCN170190000000005") %>%
  hc_tooltip(
    shared = TRUE
  ) %>%
  hc_add_theme(
    hc_theme_bloom()
  ) %>%
  hc_rangeSelector(enabled = TRUE,
                   buttons = list(
                     list(type = 'year', count = 1, text = '1y'),
                     list(type = 'year', count = 2, text = '2y'),
                     list(type = 'year', count = 5, text = '5y'),
                     list(type = 'year', count = 10, text = '10y'),
                     list(type = 'all', text = 'All')),
                   selected = 2)

fig
saveWidget(widget = fig, file = "interactive/champaign_employment.html",
           selfcontained = FALSE,
           libdir = "interactive")


## population ----
data <-fredr(series_id = "ILCHAM9POP")
recent_data <- data %>%
  filter(date > past_ten_years) %>%
  mutate(short_date = paste(year(date))) 

fig <- hchart(data, "line", hcaes(x = date,
                                  y = value*1000),
              name = "Population") %>%
  hc_title(text = "Population") %>%
  hc_credits(
    enabled = TRUE,
    text = paste("Source: U.S. Census Bureau. Latest data:",
                 tail(recent_data$short_date,1)),
    href = "https://fred.stlouisfed.org/series/ILCHAM9POP") %>%
  hc_yAxis(title = "",
           endOnTick = FALSE,
           startOnTick = FALSE) %>%
  hc_xAxis(title = "") %>%
  hc_add_theme(
    hc_theme_bloom()
  ) %>%
  hc_rangeSelector(enabled = TRUE,
                   buttons = list(
                     list(type = 'year', count = 10, text = '10y'),
                     list(type = 'year', count = 25, text = '25y'),
                     list(type = 'year', count = 50, text = '50y'),
                     list(type = 'all', text = 'All')),
                   selected = 3)# %>%
#hc_navigator(enabled = TRUE) 
fig
saveWidget(widget = fig, file = "interactive/champaign_county_population.html",
           selfcontained = FALSE,
           libdir = "interactive")

## housing ----
active_listings <- fredr(series_id = "ACTLISCOU17019") %>%
  mutate(name = "Active Listings") %>%
  mutate(series_idd = "listings")
median_listing_price <- fredr(series_id = "MEDLISPRI17019") %>%
  mutate(name = "Median List Price ($)") %>%
  mutate(series_idd = "price")
median_days_on_market <- fredr(series_id = "MEDDAYONMAR17019") %>%
  mutate(name = "Median Days on Market")%>%
  mutate(series_idd = "days")
pending_ratio <- fredr(series_id = "PENRAT17019") %>%
  mutate(name = "Pending-to-Active Ratio")%>%
  mutate(series_idd = "ratio")

data <- full_join(active_listings, median_listing_price) %>%
  full_join(median_days_on_market) %>%
  full_join(pending_ratio) %>%
  mutate(short_date = paste(month(date, label = TRUE, abbr = FALSE))) %>%
  mutate(shorter_date = paste(month(date, label = TRUE, abbr = TRUE)))

housing_data <- data %>%
  select(date,series_idd, value) %>%
  pivot_wider(names_from = series_idd) %>%
  mutate(short_date = paste(month(date, label = TRUE, abbr = FALSE))) %>%
  mutate(shorter_date = paste(month(date, label = TRUE, abbr = TRUE)))

fig <- hchart(housing_data,
              type = "line", 
              hcaes(x = date,
                    y = listings),
              name = "Active Listings",
              label = list(
                enabled = TRUE),
              yAxis = 0) %>%
  hc_yAxis_multiples(create_axis(naxis = 4, heights = c(1,1,1,1),
                                 endOnTick = FALSE,
                                 min = 0,
                                 title = list(text = NULL))) %>%
  hc_add_series(
    data = housing_data,
    hcaes(x = date,
          y = price),
    name = "Median List Price ($)",
    type = "line",
    label = list(
      enabled = TRUE),
    yAxis = 1) %>%
  hc_add_series(
    data = housing_data,
    hcaes(x = date,
          y = days),
    name = "Median Days on Market",
    color = "darkblue",
    type = "line",
    label = list(
      enabled = TRUE),
    yAxis = 2) %>%
  hc_add_series(
    data = housing_data,
    hcaes(x = date,
          y = round(ratio, digits = 2)),
    name = "Pending-to-Active Ratio",
    color = "green",
    type = "line",
    label = list(
      enabled = TRUE),
    yAxis = 3) %>%
  hc_title(text = "Housing Metrics") %>%
  hc_credits(
    enabled = TRUE,
    text = paste("Source: Realtor.com. Latest data:",
                 tail(housing_data$short_date,1)),
    href = "https://fred.stlouisfed.org/series/ACTLISCOU17019") %>%
  hc_xAxis(title = list(text = NULL)) %>%
  #hc_tooltip(shared = TRUE) %>%
  hc_add_theme(
    hc_theme_bloom()
  ) %>%
  hc_rangeSelector(enabled = TRUE,
                   buttons = list(
                     list(type = 'year', count = 1, text = '1y'),
                     list(type = 'year', count = 2, text = '2y'),
                     list(type = 'year', count = 5, text = '5y'),
                     list(type = 'all', text = 'All')),
                   selected = 2)

fig
saveWidget(widget = fig, file = "interactive/champaign_housing.html",
           selfcontained = FALSE,
           libdir = "interactive")

lists <- data %>%
  select(name,date,shorter_date,value) %>%
  group_by(name) %>%
  do(tail(., n = 5*12)) %>%
  summarise(lists = list(value)) 
add_latest_month_column <- data %>%
  select(name,shorter_date,value) %>%
  group_by(name) %>%
  do(tail(., n = 1)) %>%
  rename(latest = value) %>%
  full_join(lists) 

add_year_ago_column <- data %>%
  select(name,shorter_date,value) %>%
  group_by(name) %>%
  do(tail(.,n = 13)) %>%
  do(head(.,n =1)) %>%
  rename(year_ago = value) %>%
  full_join(add_latest_month_column) %>%
  mutate(pct_change = (latest-year_ago)/year_ago)


latest_data_for_table <- add_year_ago_column

cu_housing_table <-   ungroup(latest_data_for_table) %>%
  gt() %>%
  gt_theme_espn() %>%
  # gt_sparkline(
  #   lists,
  #   line_color = "grey70",
  #   range_colors = c("red", "red"),
  #   same_limit = FALSE
  # ) %>%
  tab_options(
    table.width = pct(100),
    data_row.padding = px(4),
    table.font.size = px(12)
  ) %>%
  opt_all_caps(  all_caps = TRUE) %>%
  cols_hide(columns = c(shorter_date, lists)) %>%
  cols_move(
    columns = pct_change,
    after = latest) %>%
  fmt_number(
    columns = c(latest,year_ago),
    n_sigfig = 3) %>%
  fmt_percent(
    columns = pct_change,
    decimals = 0,
    force_sign = TRUE
  ) %>%
  # cols_align(
  #   align = c("right"),
  #   columns = lists
  # ) %>%
  cols_label(
    name = "Metric",
    latest = "Latest",
    year_ago = "Year Ago",
    pct_change = html("Year %<br>Change"),
    #lists = html("Last 5<br>Years")
  ) 

cu_housing_table
cu_housing_table_html <- as_raw_html(cu_housing_table, inline_css = FALSE)
better_divs_cu_housing_table <- gsub("[#][a-z]{10}",
                                     "#cu_housing_table", 
                                     x = cu_housing_table_html)
better_cu_housing_table_html <- gsub("[\"][a-z]{10}",
                                     "\"cu_housing_table",
                                     x = better_divs_cu_housing_table)

# Illinois ----

## unemployment rate ----
data <- fredr(series_id = "ILUR")
recent_data <- data %>%
  filter(date > recent_years) %>%
  mutate(short_date = paste(month(date, label = TRUE, abbr = FALSE)))

fig <- hchart(data, "line", hcaes(x = date,
                                  y = value),
              tooltip = list(valueSuffix = "%"),
              name = "Rate") %>%
  hc_title(text = "Unemployment Rate") %>%
  hc_yAxis(title = "",
           min = 0,
           endOnTick = FALSE) %>%
  hc_xAxis(title = "") %>%
  hc_credits(
    enabled = TRUE,
    text = paste("Source: U.S. Bureau of Labor Statistics. Latest data:",
                 tail(recent_data$short_date,1)),
    href = "https://fred.stlouisfed.org/series/ILUR") %>%
  hc_add_theme(
    hc_theme_bloom()
  )%>%
  hc_rangeSelector(enabled = TRUE,
                   buttons = list(
                     list(type = 'year', count = 1, text = '1y'),
                     list(type = 'year', count = 2, text = '2y'),
                     list(type = 'year', count = 5, text = '5y'),
                     list(type = 'year', count = 10, text = '10y'),
                     list(type = 'all', text = 'All')),
                   selected = 2)# %>%
#hc_navigator(enabled = TRUE) 
fig
saveWidget(widget = fig, file = "interactive/il_unemployment_rate.html",
           selfcontained = FALSE,
           libdir = "interactive")


## employment -----
data <- fredr(series_id = "ILNA")%>%
  mutate(change = value - lag(value))
recent_data <- data %>%
  filter(date > recent_years) %>%
  mutate(short_date = paste(month(date, label = TRUE, abbr = FALSE))) 

fig <- hchart(data,
              type = "line", 
              hcaes(x = date,
                    y = round(value*1000,1)),
              name = "Total",
              color = "black",
              yAxis = 0) %>%
  hc_yAxis_multiples(create_axis(naxis = 2, heights = c(1, 1),
                                 crosshair = c(TRUE,FALSE),
                                 endOnTick = FALSE,
                                 startOnTick = FALSE,
                                 title = list(text = NULL))) %>%
  hc_add_series(
    data = data,
    hcaes(x = date,
          y = round(change*1000,1)),
    name = "Change",
    type = "column",
    color = "#199fa8",
    negativeColor = "#b32704",
    yAxis = 1) %>%
  hc_title(text = "Nonfarm Payroll") %>%
  hc_credits(
    enabled = TRUE,
    text = paste("Source: U.S. Bureau of Labor Statistics. Latest data:",
                 tail(recent_data$short_date,1)),
    href = "https://fred.stlouisfed.org/series/ILNA") %>%
  hc_xAxis(title = list(text = NULL)) %>%
  hc_tooltip(
    shared = TRUE
  ) %>%
  hc_add_theme(
    hc_theme_bloom()
  ) %>%
  hc_rangeSelector(enabled = TRUE,
                   buttons = list(
                     list(type = 'year', count = 1, text = '1y'),
                     list(type = 'year', count = 2, text = '2y'),
                     list(type = 'year', count = 5, text = '5y'),
                     list(type = 'year', count = 10, text = '10y'),
                     list(type = 'all', text = 'All')),
                   selected = 2)

fig
saveWidget(widget = fig, file = "interactive/il_employment.html",
           selfcontained = FALSE,
           libdir = "interactive")

## flash index ----
flash_index_archive <- read_html("https://igpa.uillinois.edu/flash-index-detail/")
code <- status_code(GET("https://igpa.uillinois.edu/flash-index-detail/"))
code
if (code == 200) {
  
  flash_index <- flash_index_archive %>% html_node("table") %>% 
    html_table(header = TRUE) %>%
    rename(Year = 1) %>%
    #na_if("-") %>%
    mutate(across(where(is.character),as.double)) %>%
    pivot_longer(!Year) %>%
    mutate(date = ym(paste(Year,name))) %>%
    select(date,value) %>%
    arrange(date)
  
  data <- flash_index %>%
    drop_na()
  recent_data <- data %>%
    filter(date > recent_years) %>%
    mutate(short_date = paste(month(date, label = TRUE, abbr = FALSE)))
  
  fig <- hchart(data, "line", hcaes(x = date,
                                    y = value),
                color = "#199fa8",
                negativeColor = "#b32704",
                threshold = 100,
                name = "Index") %>%
    hc_title(text = "Flash Index") %>%
    hc_credits(
      enabled = TRUE,
      text = paste("Source: Institute of Government and Public Affairs at the University of Illinois. Latest data:",
                   tail(recent_data$short_date,1)),
      href = "https://igpa.uillinois.edu/policy-initiatives/flash-index") %>%
    hc_yAxis(title = "",
             endOnTick = FALSE,
             startOnTick = FALSE,
             plotLines = list(
               list(
                 color = "#808080",
                 width = 2,
                 value = 100,
                 zIndex = 1))) %>%
    hc_xAxis(title = "") %>%
    hc_add_theme(
      hc_theme_bloom()
    )%>%
    hc_rangeSelector(enabled = TRUE,
                     buttons = list(
                       list(type = 'year', count = 1, text = '1y'),
                       list(type = 'year', count = 2, text = '2y'),
                       list(type = 'year', count = 5, text = '5y'),
                       list(type = 'year', count = 10, text = '10y'),
                       list(type = 'all', text = 'All')),
                     selected = 2)# %>%
  #hc_navigator(enabled = TRUE) 
  fig
  saveWidget(widget = fig, file = "interactive/il_flash_index.html",
             selfcontained = FALSE,
             libdir = "interactive")
}

## population ----
data <-fredr(series_id = "ILPOP")
recent_data <- data %>%
  filter(date > past_ten_years) %>%
  mutate(short_date = paste(year(date))) 

fig <- hchart(data, "line", hcaes(x = date,
                                  y = value*1000),
              name = "Population") %>%
  hc_title(text = "Population") %>%
  hc_credits(
    enabled = TRUE,
    text = paste("Source: U.S. Census Bureau. Latest data:",
                 tail(recent_data$short_date,1)),
    href = "https://fred.stlouisfed.org/series/ILPOP") %>%
  hc_yAxis(title = "",
           endOnTick = FALSE) %>%
  hc_xAxis(title = "") %>%
  hc_add_theme(
    hc_theme_bloom()
  ) %>%
  hc_rangeSelector(enabled = TRUE,
                   buttons = list(
                     list(type = 'year', count = 10, text = '10y'),
                     list(type = 'year', count = 25, text = '25y'),
                     list(type = 'year', count = 50, text = '50y'),
                     list(type = 'all', text = 'All')),
                   selected = 3)# %>%
#hc_navigator(enabled = TRUE) 
fig
saveWidget(widget = fig, file = "interactive/il_population.html",
           selfcontained = FALSE,
           libdir = "interactive")


# make web page ----

## Champaign ----
web_text <- paste(
  "---
layout: page
title: Champaign County Economic Indicators
permalink: /projects/economy/champaign
imageurl: https://bzigterman.com/plots/champaign_unemployment_rate.png
---

<iframe src=\"/interactive/champaign_unemployment_rate.html\" width=\"100%\" height=\"300\"> 
</iframe>

<iframe src=\"/interactive/champaign_employment.html\" width=\"100%\" height=\"500\"> 
</iframe>

<iframe src=\"/interactive/champaign_housing.html\" width=\"100%\" height=\"500\"> 
</iframe>

",better_cu_housing_table_html,"

<iframe src=\"/interactive/champaign_county_population.html\" width=\"100%\" height=\"300\"> 
</iframe>

Data retrieved from the [Federal Reserve Bank of St. Louis](https://fred.stlouisfed.org)

",
sep = ""
)
write_lines(web_text,"projects/economy/champaign.md")

## IL ----
web_text <- paste(
  "---
layout: page
title: Illinois Economic Indicators
permalink: /projects/economy/illinois
imageurl: https://bzigterman.com/plots/il_flash_index.png
---

<iframe src=\"/interactive/il_unemployment_rate.html\" width=\"100%\" height=\"300\"> 
</iframe>

<iframe src=\"/interactive/il_employment.html\" width=\"100%\" height=\"500\"> 
</iframe>

<iframe src=\"/interactive/il_flash_index.html\" width=\"100%\" height=\"300\"> 
</iframe>

<iframe src=\"/interactive/il_population.html\" width=\"100%\" height=\"300\"> 
</iframe>

Data retrieved from the [Federal Reserve Bank of St. Louis](https://fred.stlouisfed.org)

",
sep = ""
)
write_lines(web_text,"projects/economy/illinois.md")

## US ----
web_text <- paste(
  "---
layout: page
title: United States Economic Indicators
permalink: /projects/economy/usa/
imageurl: https://bzigterman.com/plots/unemployment_rate.png
---

<iframe src=\"/interactive/initial_claims.html\" width=\"100%\" height=\"300\"> 
</iframe>

<iframe src=\"/interactive/us_unemployment_rate.html\" width=\"100%\" height=\"300\"> 
</iframe>

<iframe src=\"/interactive/us_employment.html\" width=\"100%\" height=\"500\"> 
</iframe>

<iframe src=\"/interactive/disposable_income.html\" width=\"100%\" height=\"300\"> 
</iframe>

<iframe src=\"/interactive/inflation.html\" width=\"100%\" height=\"300\"> 
</iframe>

The [Consumer Price Index](https://en.wikipedia.org/wiki/United_States_Consumer_Price_Index) is the more common measure of inflation. The [Personal Consumption Expenditures Index](https://en.wikipedia.org/wiki/Personal_consumption_expenditures_price_index) is the Federal Reserve's preferred measure.

## [Prices »]({{ site.baseurl }}/projects/economy/usa/prices)

<iframe src=\"/interactive/retail_sales.html\" width=\"100%\" height=\"300\"> 
</iframe>

<iframe src=\"/interactive/durable_goods.html\" width=\"100%\" height=\"300\"> 
</iframe>

<iframe src=\"/interactive/consumer_sentiment.html\" width=\"100%\" height=\"300\"> 
</iframe>

<iframe src=\"/interactive/gdp.html\" width=\"100%\" height=\"500\"> 
</iframe>

<iframe src=\"/interactive/labor_productivity.html\" width=\"100%\" height=\"300\"> 
</iframe>

<iframe src=\"/interactive/us_population.html\" width=\"100%\" height=\"300\"> 
</iframe>

Data retrieved from the [Federal Reserve Bank of St. Louis](https://fred.stlouisfed.org)

",
sep = ""
)
write_lines(web_text,"projects/economy/usa.md")

### US Prices ----
web_text <- paste(
  "---
layout: page
title: United States Prices
permalink: /projects/economy/usa/prices
imageurl: https://bzigterman.com/plots/unemployment_rate.png
---

<iframe src=\"/interactive/us_gas.html\" width=\"100%\" height=\"300\"> 
</iframe>

<iframe src=\"/interactive/milk.html\" width=\"100%\" height=\"300\"> 
</iframe>

<iframe src=\"/interactive/eggs.html\" width=\"100%\" height=\"300\"> 
</iframe>

Data retrieved from the [Federal Reserve Bank of St. Louis](https://fred.stlouisfed.org)

",
sep = ""
)
write_lines(web_text,"projects/economy/usa/prices.md")



