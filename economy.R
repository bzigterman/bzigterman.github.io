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
              name = "Claims") %>%
  hc_title(text = "Initial Unemployment Claims") %>%
  hc_caption(
    text = paste("Source: U.S. Census Bureau, retrieved from the St. Louis Fed. Latest data:",
                 tail(recent_data$short_date,1))) %>%
  hc_yAxis(title = "") %>%
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
                   selected = 0)# %>%
  #hc_navigator(enabled = TRUE) 
fig
saveWidget(widget = fig, file = "interactive/initial_claims.html",
           selfcontained = FALSE,
           libdir = "interactive")

ggplot(data = data,
       aes(x = date,
           y = value/1000000)) +
  geom_line() +
  labs(title = "Initial Unemployment Claims",
       caption = paste("Source: U.S. Census Bureau, retrieved from the St. Louis Fed. Latest data:",
                       tail(recent_data$short_date,1))) +
  xlab(NULL) +
  ylab(NULL) +
  scale_y_continuous(position = "right",
                     labels = label_comma(suffix = "M",
                                          accuracy = .1)) +
  scale_x_date(expand = expansion(mult = c(0, 0))) +
  facet_zoom(x = date > recent_year,
             zoom.size = 4,
             ylim = c(min(recent_data$value/1000000),
                      max(recent_data$value/1000000)),
             #show.area = FALSE,
             horizontal = FALSE) +
  theme_bw() +
  theme(axis.text.y = element_text(size = 10),
        axis.text.x = element_text(size = 8),
        # panel.grid.minor = element_blank(),
        # panel.background = element_blank(),
        # panel.grid.major.x = element_line(colour = "grey93"),
        panel.grid.major.y = element_line(colour = "grey93"),
        # #strip.text = element_text(size = 11),
        #strip.background = element_blank(),
        plot.caption = element_text(colour = "grey40"))

ggsave("plots/initial_claims.png", width = 8, height = 8*(628/1200), dpi = 320)

## unemployment rate ----
data <- fredr(series_id = "UNRATE")
recent_data <- data %>%
  filter(date > recent_years) %>%
  mutate(short_date = paste(month(date, label = TRUE, abbr = FALSE)))

unemployment_rate <- ggplot(data = data,
                            aes(x = date,
                                y = value/100)) +
  geom_line() +
  labs(title = "Unemployment Rate",
       caption = paste("Source: U.S. Bureau of Labor Statistics, retrieved from the St. Louis Fed. Latest data:",
                       tail(recent_data$short_date,1))) +
  xlab(NULL) +
  ylab(NULL) +
  expand_limits(y=0) +
  scale_y_continuous(position = "right",
                     labels = label_percent(),
                     expand = expansion(mult = c(0, 0.05))) +
  scale_x_date(expand = expansion(mult = c(0, 0))) +
  facet_zoom(x = date > recent_years,
             zoom.size = 4) +
  theme_bw() +
  theme(axis.text.y = element_text(size = 10),
        axis.text.x = element_text(size = 8),
        panel.grid.major.y = element_line(colour = "grey93"),
        plot.caption = element_text(colour = "grey40"))
unemployment_rate
ggsave("plots/unemployment_rate.png", plot = unemployment_rate,
       width = 8, height = 8*(628/1200), dpi = 320)


fig <- hchart(data, "line", hcaes(x = date,
                                  y = value),
              name = "Rate") %>%
  hc_title(text = "Unemployment Rate") %>%
  hc_yAxis(title = "") %>%
  hc_xAxis(title = "") %>%
  hc_caption(
    text = paste("Source: U.S. Bureau of Labor Statistics, retrieved from the St. Louis Fed. Latest data:",
                 tail(recent_data$short_date,1))) %>%
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
              yAxis = 0) %>%
  hc_yAxis_multiples(create_axis(naxis = 2, heights = c(2, 1),
                                 title = list(text = NULL))) %>%
  hc_add_series(
    data = data,
    hcaes(x = date,
          y = change*1000),
    name = "Change",
    type = "column",
    yAxis = 1) %>%
  hc_title(text = "Nonfarm Payroll") %>%
  hc_caption(
    text = paste("Source: U.S. Bureau of Labor Statistics, retrieved from the St. Louis Fed. Latest data:",
                 tail(recent_data$short_date,1))) %>%
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

employment <- ggplot(data, aes(x = date,
                               y = value/1000)) +
  geom_line() +
  labs(title = "Total Nonfarm Payroll") +
  xlab(NULL) +
  ylab(NULL) +
  scale_x_date(expand = expansion(mult = c(0, 0))) +
  scale_y_continuous(position = "right",
                     labels = label_comma(suffix = "M",
                                          accuracy = 1)) +
  facet_zoom(x = date > recent_years,
             zoom.size = 4,
             ylim = c(min(recent_data$value/1000),
                      max(recent_data$value/1000)),
             #show.area = FALSE,
             horizontal = FALSE) +
  theme_bw() +
  theme(#axis.text.y = element_text(size = 10),
    #axis.text.x = element_text(size = 8),
    # panel.grid.minor = element_blank(),
    # panel.background = element_blank(),
    # panel.grid.major.x = element_line(colour = "grey93"),
    #panel.grid.major.y = element_line(colour = "grey93"),
    # #strip.text = element_text(size = 11),
    #strip.background = element_blank(),
    plot.caption = element_text(colour = "grey40"))
employment
### employment change ----
employment_change <- ggplot(recent_data, aes(x = date,
                                             y = change/1000,
                                             fill = change > 0)) +
  geom_col() +
  labs(title = "Change in Total Nonfarm Payroll",
       caption = paste("U.S. Bureau of Labor Statistics, retrieved from the St. Louis Fed. Latest data:",
                       tail(recent_data$short_date,1))) +
  xlab(NULL) +
  ylab(NULL) +
  scale_x_date(expand = expansion(mult = c(0, 0))) +
  scale_fill_manual(guide = "none",
                    values = c("#b32704","#199fa8")) +
  scale_y_continuous(position = "right",
                     labels = label_comma(suffix = "M")) +
  theme(#axis.text.y = element_text(size = 10),
    #axis.text.x = element_text(size = 8),
    panel.grid.minor = element_blank(),
    panel.background = element_blank(),
    panel.grid.major.y = element_line(colour = "grey93"),
    strip.text = element_text(size = 11),
    strip.background = element_blank(),
    plot.caption = element_text(colour = "grey40"))

plot_grid(employment, employment_change,
          ncol = 1,
          rel_heights = c(3,2))

ggsave("plots/employment.png",
       width = 8, height = 6, dpi = 320)

## Disposable Income ----
data <-fredr(series_id = "A229RX0")
recent_data <- data %>%
  filter(date > recent_years) %>%
  mutate(short_date = paste(month(date, label = TRUE, abbr = FALSE)))

fig <- hchart(data, "line", hcaes(x = date,
                                  y = value),
              name = "Income") %>%
  hc_title(text = "Real Disposable Personal Income: Per Capita") %>%
  hc_caption(
    text = paste("Source: U.S. Bureau of Economic Analysis, retrieved from the St. Louis Fed. Latest data:",
                 tail(recent_data$short_date,1))) %>%
  hc_yAxis(title = list(text = "")) %>%
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


ggplot(data = data,
       aes(x = date,
           y = value/1000)) +
  geom_line() +
  labs(title = "Real Disposable Personal Income: Per Capita",
       caption = paste("Source: U.S. Bureau of Economic Analysis, retrieved from the St. Louis Fed. Latest data:",
                       tail(recent_data$short_date,1))) +
  xlab(NULL) +
  ylab(NULL) +
  scale_y_continuous(position = "right",
                     labels = label_dollar(suffix = "K")) +
  scale_x_date(expand = expansion(mult = c(0, 0))) +
  facet_zoom(x = date > recent_years,
             zoom.size = 4,
             ylim = c(min(recent_data$value/1000),
                      max(recent_data$value/1000)),
             #show.area = FALSE,
             horizontal = FALSE) +
  theme_bw() +
  theme(axis.text.y = element_text(size = 10),
        axis.text.x = element_text(size = 8),
        # panel.grid.minor = element_blank(),
        # panel.background = element_blank(),
        # panel.grid.major.x = element_line(colour = "grey93"),
        panel.grid.major.y = element_line(colour = "grey93"),
        # #strip.text = element_text(size = 11),
        #strip.background = element_blank(),
        plot.caption = element_text(colour = "grey40"))

ggsave("plots/disposable_income.png",
       width = 8, height = 8*(628/1200), dpi = 320)

## real GDP ----
data <-fredr(series_id = "GDPC1")
recent_data <- data %>%
  filter(date > recent_years) %>%
  mutate(short_date = paste(month(date, label = TRUE, abbr = FALSE))) 

gdp <- ggplot(data, aes(x = date,
                        y = value/1000)) +
  geom_line() +
  labs(title = "Real GDP") +
  xlab(NULL) +
  ylab(NULL) +
  scale_x_date(expand = expansion(mult = c(0, 0))) +
  scale_y_continuous(position = "right",
                     labels = label_dollar(suffix = "T",
                                           accuracy = 1)) +
  facet_zoom(x = date > recent_years,
             zoom.size = 4,
             ylim = c(min(recent_data$value/1000),
                      max(recent_data$value/1000)),
             #show.area = FALSE,
             horizontal = FALSE) +
  theme_bw() +
  theme(#axis.text.y = element_text(size = 10),
    #axis.text.x = element_text(size = 8),
    panel.grid.major.y = element_line(colour = "grey93"),
    plot.caption = element_text(colour = "grey40"))
gdp
### real gdp growth ----
data <- fredr(series_id = "A191RL1Q225SBEA")
recent_data <- data %>%
  filter(date > recent_years) %>%
  mutate(short_date = paste0("Q",quarter(date)))

gdp_change <- ggplot(recent_data, aes(x = date,
                                      y = value/100,
                                      fill = value > 0)) +
  geom_col() +
  labs(title = "Real GDP Growth",
       caption = paste("Source: U.S. Bureau of Economic Analysis, retrieved from the St. Louis Fed. Latest data:",
                       tail(recent_data$short_date,1))) +
  xlab(NULL) +
  ylab(NULL) +
  scale_x_date(expand = expansion(mult = c(0, 0))) +
  scale_fill_manual(guide = "none",
                    values = c("#b32704","#199fa8")) +
  scale_y_continuous(position = "right",
                     labels = label_percent()) +
  theme(#axis.text.y = element_text(size = 10),
    #axis.text.x = element_text(size = 8),
    panel.grid.minor = element_blank(),
    panel.background = element_blank(),
    panel.grid.major.y = element_line(colour = "grey93"),
    strip.text = element_text(size = 11),
    strip.background = element_blank(),
    plot.caption = element_text(colour = "grey40"))

plot_grid(gdp, gdp_change,
          ncol = 1,
          rel_heights = c(3,2))

ggsave("plots/gdp.png",
       width = 8, height = 6, dpi = 320)

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


ggplot(data, aes(x = date,
                 y = value/1000)) +
  geom_line() +
  labs(title = "Retail Trade and Food Services",
       caption = paste("Source: U.S. Census Bureau, retrieved from the St. Louis Fed. Latest data:",
                       tail(recent_data$short_date,1))) +
  xlab(NULL) +
  ylab(NULL) +
  scale_x_date(expand = expansion(mult = c(0, .01))) +
  scale_y_continuous(position = "right",
                     labels = label_dollar(suffix = "B")) +
  theme(axis.text.y = element_text(size = 10),
        axis.text.x = element_text(size = 8),
        panel.grid.minor = element_blank(),
        panel.background = element_blank(),
        panel.grid.major.y = element_line(colour = "grey93"),
        strip.text = element_text(size = 11),
        strip.background = element_blank(),
        plot.caption = element_text(colour = "grey40"))

ggplot(data = data,
       aes(x = date,
           y = value/1000)) +
  geom_line() +
  labs(title = "Retail Sales",
       caption = paste("Source: U.S. Census Bureau, retrieved from the St. Louis Fed. Latest data:",
                       tail(recent_data$short_date,1))) +
  xlab(NULL) +
  ylab(NULL) +
  scale_y_continuous(position = "right",
                     labels = label_dollar(suffix = "B")) +
  scale_x_date(expand = expansion(mult = c(0, 0))) +
  facet_zoom(x = date > recent_years,
             zoom.size = 4,
             ylim = c(min(recent_data$value/1000),
                      max(recent_data$value/1000)),
             #show.area = FALSE,
             horizontal = FALSE) +
  theme_bw() +
  theme(axis.text.y = element_text(size = 10),
        axis.text.x = element_text(size = 8),
        # panel.grid.minor = element_blank(),
        # panel.background = element_blank(),
        # panel.grid.major.x = element_line(colour = "grey93"),
        panel.grid.major.y = element_line(colour = "grey93"),
        # #strip.text = element_text(size = 11),
        #strip.background = element_blank(),
        plot.caption = element_text(colour = "grey40"))

ggsave("plots/retail_sales.png", width = 8, height = 8*(628/1200), dpi = 320)

## durable goods ----
data <- fredr(series_id = "DGORDER") %>%
  drop_na()
recent_data <- data %>%
  filter(date > recent_years) %>%
  mutate(short_date = paste(month(date, label = TRUE, abbr = FALSE)))

ggplot(data, aes(x = date,
                 y = value/1000)) +
  geom_line() +
  labs(title = "Durable Goods Orders",
       caption = paste("Source: U.S. Census Bureau, retrieved from the St. Louis Fed. Latest data:",
                       tail(recent_data$short_date,1))) +
  xlab(NULL) +
  ylab(NULL) +
  scale_x_date(expand = expansion(mult = c(0, .01))) +
  scale_y_continuous(position = "right",
                     labels = label_dollar(suffix = "B")) +
  theme(axis.text.y = element_text(size = 10),
        axis.text.x = element_text(size = 8),
        panel.grid.minor = element_blank(),
        panel.background = element_blank(),
        panel.grid.major.y = element_line(colour = "grey93"),
        strip.text = element_text(size = 11),
        strip.background = element_blank(),
        plot.caption = element_text(colour = "grey40"))

ggplot(data = data,
       aes(x = date,
           y = value/1000)) +
  geom_line() +
  labs(title = "Durable Goods Orders",
       caption = paste("Source: U.S. Census Bureau, retrieved from the St. Louis Fed. Latest data:",
                       tail(recent_data$short_date,1))) +
  xlab(NULL) +
  ylab(NULL) +
  scale_y_continuous(position = "right",
                     labels = label_dollar(suffix = "B")) +
  scale_x_date(expand = expansion(mult = c(0, 0))) +
  facet_zoom(x = date > recent_years,
             zoom.size = 4,
             ylim = c(min(recent_data$value/1000),
                      max(recent_data$value/1000)),
             #show.area = FALSE,
             horizontal = FALSE) +
  theme_bw() +
  theme(axis.text.y = element_text(size = 10),
        axis.text.x = element_text(size = 8),
        # panel.grid.minor = element_blank(),
        # panel.background = element_blank(),
        # panel.grid.major.x = element_line(colour = "grey93"),
        panel.grid.major.y = element_line(colour = "grey93"),
        # #strip.text = element_text(size = 11),
        #strip.background = element_blank(),
        plot.caption = element_text(colour = "grey40"))

ggsave("plots/durable_goods.png", width = 8, height = 8*(628/1200), dpi = 320)

## gini index ----

# data <- fredr(series_id = "SIPOVGINIUSA")
# recent_data <- data %>%
#   filter(date > recent_years) %>%
#   mutate(short_date = paste(year(date)))
# 
# gini <- ggplot(recent_data, aes(x = date,
#                         y = value)) +
#   geom_line() +
#   labs(title = "Gini Index of Inequality",
#        subtitle = "0 represents perfect equality; 100 represents perfect inequality",
#        caption = paste("Source: World Bank, retrieved from the St. Louis Fed. Latest data:",
#                        tail(recent_data$short_date,1))) +
#   xlab(NULL) +
#   ylab(NULL) +
#   scale_x_date(expand = expansion(mult = c(0, .01))) +
#   scale_y_continuous(position = "right",
#                      limits = c(0,max(recent_data$value)*1.05)) +
#   theme(axis.text.y = element_text(size = 10),
#         axis.text.x = element_text(size = 8),
#         panel.grid.minor = element_blank(),
#         panel.background = element_blank(),
#         panel.grid.major.y = element_line(colour = "grey93"),
#         strip.text = element_text(size = 11),
#         strip.background = element_blank(),
#         plot.caption = element_text(colour = "grey40"))
# 
# ggsave("plots/gini_index.png", plot = gini,
#        width = 8, height = 8*(628/1200), dpi = 320)

## consumer sentiment ----
data <- fredr(series_id = "UMCSENT") %>%
  drop_na()
recent_data <- data %>%
  filter(date > recent_years) %>%
  mutate(short_date = paste(month(date, label = TRUE, abbr = FALSE))) 

ggplot(recent_data, aes(x = date,
                        y = value)) +
  geom_line() +
  labs(title = "Consumer Sentiment Index",
       caption = paste("Source: University of Michigan Consumer Survey, retrieved from the St. Louis Fed. Latest data:",
                       tail(recent_data$short_date,1))) +
  xlab(NULL) +
  ylab(NULL) +
  scale_x_date(expand = expansion(mult = c(0, .01))) +
  scale_y_continuous(position = "right") +
  theme(axis.text.y = element_text(size = 10),
        axis.text.x = element_text(size = 8),
        panel.grid.minor = element_blank(),
        panel.background = element_blank(),
        panel.grid.major.y = element_line(colour = "grey93"),
        strip.text = element_text(size = 11),
        strip.background = element_blank(),
        plot.caption = element_text(colour = "grey40"))

sentiment <- ggplot(data = data,
                    aes(x = date,
                        y = value)) +
  geom_line() +
  labs(title = "Consumer Sentiment Index",
       caption = paste("Source: University of Michigan Consumer Survey, retrieved from the St. Louis Fed. Latest data:",
                       tail(recent_data$short_date,1))) +
  xlab(NULL) +
  ylab(NULL) +
  scale_y_continuous(position = "right") +
  scale_x_date(expand = expansion(mult = c(0, 0))) +
  facet_zoom(x = date > recent_years,
             zoom.size = 4,
             ylim = c(min(recent_data$value),
                      max(recent_data$value)),
             #show.area = FALSE,
             horizontal = FALSE) +
  theme_bw() +
  theme(axis.text.y = element_text(size = 10),
        axis.text.x = element_text(size = 8),
        # panel.grid.minor = element_blank(),
        # panel.background = element_blank(),
        # panel.grid.major.x = element_line(colour = "grey93"),
        panel.grid.major.y = element_line(colour = "grey93"),
        # #strip.text = element_text(size = 11),
        #strip.background = element_blank(),
        plot.caption = element_text(colour = "grey40"))
sentiment
ggsave("plots/consumer_sentiment.png", plot = sentiment,
       width = 8, height = 8*(628/1200), dpi = 320)

## inflation ----
data <- fredr(series_id = "CPIAUCSL") %>%
  mutate(change = ((value - lag(value, 12))/lag(value, 12))) %>%
  drop_na()
recent_data <- data %>%
  filter(date > recent_years) %>%
  mutate(short_date = paste(month(date, label = TRUE, abbr = FALSE)))

ggplot(recent_data, aes(x = date,
                        y = change)) +
  geom_line() +
  labs(title = "Inflation",
       subtitle = "Consumer Price Index",
       caption = paste("Source: University of Michigan Consumer Survey, retrieved from the St. Louis Fed. Latest data:",
                       tail(recent_data$short_date,1))) +
  xlab(NULL) +
  ylab(NULL) +
  scale_x_date(expand = expansion(mult = c(0, .01))) +
  scale_y_continuous(position = "right") +
  theme(axis.text.y = element_text(size = 10),
        axis.text.x = element_text(size = 8),
        panel.grid.minor = element_blank(),
        panel.background = element_blank(),
        panel.grid.major.y = element_line(colour = "grey93"),
        strip.text = element_text(size = 11),
        strip.background = element_blank(),
        plot.caption = element_text(colour = "grey40"))

cpi <- ggplot(data = data,
              aes(x = date,
                  y = change)) +
  geom_line() +
  labs(title = "Inflation: Consumer Price Index",
       caption = paste("Source: U.S. Bureau of Labor Statistics, retrieved from the St. Louis Fed. Latest data:",
                       tail(recent_data$short_date,1))) +
  xlab(NULL) +
  ylab(NULL) +
  scale_y_continuous(position = "right",
                     label = label_percent(accuracy = 1)) +
  scale_x_date(expand = expansion(mult = c(0, 0))) +
  facet_zoom(x = date > recent_years,
             zoom.size = 4,
             ylim = c(min(recent_data$change),
                      max(recent_data$change)),
             #show.area = FALSE,
             horizontal = FALSE) +
  theme_bw() +
  theme(axis.text.y = element_text(size = 10),
        axis.text.x = element_text(size = 8),
        # panel.grid.minor = element_blank(),
        # panel.background = element_blank(),
        # panel.grid.major.x = element_line(colour = "grey93"),
        panel.grid.major.y = element_line(colour = "grey93"),
        # #strip.text = element_text(size = 11),
        #strip.background = element_blank(),
        plot.caption = element_text(colour = "grey40"))
cpi
ggsave("plots/consumer_price_index.png", plot = cpi,
       width = 8, height = 8*(628/1200), dpi = 320)


## population ----
data <-fredr(series_id = "POPTHM")
recent_data <- data %>%
  filter(date > past_ten_years) %>%
  mutate(short_date = paste(month(date, label = TRUE, abbr = FALSE)))

us_population <- ggplot(data = data,
                        aes(x = date,
                            y = value/1000)) +
  geom_line() +
  labs(title = "Population",
       caption = paste("Source: U.S. Bureau of Economic Analysis, retrieved from the St. Louis Fed. Latest data:",
                       tail(recent_data$short_date,1))) +
  xlab(NULL) +
  ylab(NULL) +
  #expand_limits(y=0) +
  scale_y_continuous(position = "right",
                     labels = label_comma(suffix = "M",
                                          accuracy = 1)) +
  scale_x_date(expand = expansion(mult = c(0, 0))) +
  facet_zoom(x = date > past_ten_years,
             zoom.size = 4,
             ylim = c(min(recent_data$value/1000),
                      max(recent_data$value/1000)),
             #show.area = FALSE,
             horizontal = FALSE) +
  theme_bw() +
  theme(axis.text.y = element_text(size = 10),
        axis.text.x = element_text(size = 8),
        # panel.grid.minor = element_blank(),
        # panel.background = element_blank(),
        # panel.grid.major.x = element_line(colour = "grey93"),
        panel.grid.major.y = element_line(colour = "grey93"),
        # #strip.text = element_text(size = 11),
        #strip.background = element_blank(),
        plot.caption = element_text(colour = "grey40"))
us_population
ggsave("plots/us_population.png", plot = us_population,
       width = 8, height = 8*(628/1200), dpi = 320)


fig <- hchart(data, "line", hcaes(x = date,
                                  y = value*1000),
              name = "Population") %>%
  hc_title(text = "Population") %>%
  hc_caption(
    text = paste("Source: U.S. Bureau of Economic Analysis, retrieved from the St. Louis Fed. Latest data:",
                 tail(recent_data$short_date,1))) %>%
  hc_yAxis(title = "") %>%
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

unemployment_rate <- ggplot(data = data,
                            aes(x = date,
                                y = value/100)) +
  geom_line() +
  labs(title = "Unemployment Rate",
       caption = paste("Not seasonally adjusted. Source: U.S. Bureau of Labor Statistics, retrieved from the St. Louis Fed. Latest data:",
                       tail(recent_data$short_date,1))) +
  xlab(NULL) +
  ylab(NULL) +
  expand_limits(y=0) +
  scale_y_continuous(position = "right",
                     labels = label_percent(),
                     expand = expansion(mult = c(0, 0.05))) +
  scale_x_date(expand = expansion(mult = c(0, 0))) +
  facet_zoom(x = date > recent_years,
             zoom.size = 4) +
  theme_bw() +
  theme(axis.text.y = element_text(size = 10),
        axis.text.x = element_text(size = 8),
        panel.grid.major.y = element_line(colour = "grey93"),
        plot.caption = element_text(colour = "grey40"))
unemployment_rate
ggsave("plots/champaign_unemployment_rate.png", plot = unemployment_rate,
       width = 8, height = 8*(628/1200), dpi = 320)

fig <- hchart(data, "line", hcaes(x = date,
                                  y = value),
              name = "Rate") %>%
  hc_title(text = "Unemployment Rate") %>%
  hc_yAxis(title = "") %>%
  hc_xAxis(title = "") %>%
  hc_caption(
    text = paste("Not seasonally adjusted. Source: U.S. Bureau of Labor Statistics, retrieved from the St. Louis Fed. Latest data:",
                 tail(recent_data$short_date,1))) %>%
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

employment <- ggplot(data, aes(x = date)) +
  geom_line(aes(y = value),
            size = .6,
            color = "grey65") +
  # geom_point(aes(y = value),
  #            size = .5,
  #            color = "grey25") +
  geom_line(aes(y = annual_avg),
            size = 1.1) +
  labs(title = "Annual Average of Total Employees") +
  xlab(NULL) +
  ylab(NULL) +
  scale_x_date(expand = expansion(mult = c(0, 0))) +
  scale_y_continuous(position = "right",
                     labels = label_comma()) +
  facet_zoom(x = date > recent_years,
             zoom.size = 4,
             ylim = c(min(recent_data$value),
                      max(recent_data$value)),
             horizontal = FALSE) +
  theme_bw() +
  theme(plot.caption = element_text(colour = "grey40"))
employment

### employment change ----
employment_change <- ggplot(recent_data, aes(x = date,
                                             y = change,
                                             fill = change > 0)) +
  geom_col() +
  labs(title = "Annual Change in Total Employees",
       caption = paste("U.S. Bureau of Labor Statistics, retrieved from the St. Louis Fed. Latest data:",
                       tail(recent_data$short_date,1))) +
  xlab(NULL) +
  ylab(NULL) +
  scale_x_date(expand = expansion(mult = c(0, 0))) +
  scale_fill_manual(guide = "none",
                    values = c("#b32704","#199fa8")) +
  scale_y_continuous(position = "right",
                     labels = label_comma()) +
  theme(panel.grid.minor = element_blank(),
        panel.background = element_blank(),
        panel.grid.major.y = element_line(colour = "grey93"),
        strip.text = element_text(size = 11),
        strip.background = element_blank(),
        plot.caption = element_text(colour = "grey40"))

plot_grid(employment, employment_change,
          ncol = 1,
          rel_heights = c(3,2))

ggsave("plots/champaign_employment.png",
       width = 8, height = 6, dpi = 320)

fig <- hchart(data,
              type = "line", 
              hcaes(x = date,
                    y = value),
              name = "Total",
              yAxis = 0) %>%
  hc_yAxis_multiples(create_axis(naxis = 2, heights = c(2, 1),
                                 title = list(text = NULL))) %>%
  hc_add_series(
    data = data,
    hcaes(x = date,
          y = round(annual_avg)),
    name = "Annual Avg.",
    type = "line",
    yAxis = 0) %>%
  hc_add_series(
    data = data,
    hcaes(x = date,
          y = change),
    name = "Annual Change",
    type = "column",
    yAxis = 1) %>%
  hc_title(text = "Nonfarm Payroll") %>%
  hc_xAxis(title = list(text = NULL)) %>%
  hc_caption(
    text = paste("Source: U.S. Bureau of Labor Statistics, retrieved from the St. Louis Fed. Latest data:",
                 tail(recent_data$short_date,1))) %>%
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

champaign_population <- ggplot(data = data,
                               aes(x = date,
                                   y = value)) +
  geom_line() +
  labs(title = "Population",
       caption = paste("Source: U.S. Census Bureau, retrieved from the St. Louis Fed. Latest data:",
                       tail(recent_data$short_date,1))) +
  xlab(NULL) +
  ylab(NULL) +
  #expand_limits(y=0) +
  scale_y_continuous(position = "right",
                     labels = label_comma(suffix = "K",
                                          accuracy = 1)) +
  scale_x_date(expand = expansion(mult = c(0, 0))) +
  facet_zoom(x = date > past_ten_years,
             zoom.size = 4,
             ylim = c(min(recent_data$value),
                      max(recent_data$value)),
             #show.area = FALSE,
             horizontal = FALSE) +
  theme_bw() +
  theme(axis.text.y = element_text(size = 10),
        axis.text.x = element_text(size = 8),
        # panel.grid.minor = element_blank(),
        # panel.background = element_blank(),
        # panel.grid.major.x = element_line(colour = "grey93"),
        panel.grid.major.y = element_line(colour = "grey93"),
        # #strip.text = element_text(size = 11),
        #strip.background = element_blank(),
        plot.caption = element_text(colour = "grey40"))
champaign_population
ggsave("plots/champaign_population.png", plot = champaign_population,
       width = 8, height = 8*(628/1200), dpi = 320)

fig <- hchart(data, "line", hcaes(x = date,
                                  y = value*1000),
              name = "Population") %>%
  hc_title(text = "Population") %>%
  hc_caption(
    text = paste("Source: U.S. Census Bureau, retrieved from the St. Louis Fed. Latest data:",
                 tail(recent_data$short_date,1))) %>%
  hc_yAxis(title = "") %>%
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
  mutate(name = "Active Listings")
median_listing_price <- fredr(series_id = "MEDLISPRI17019") %>%
  mutate(name = "Median List Price ($)")
median_days_on_market <- fredr(series_id = "MEDDAYONMAR17019") %>%
  mutate(name = "Median Days on Market")
pending_ratio <- fredr(series_id = "PENRAT17019") %>%
  mutate(name = "Pending-to-Active Ratio")


data <- full_join(active_listings, median_listing_price) %>%
  full_join(median_days_on_market) %>%
  full_join(pending_ratio) %>%
  mutate(short_date = paste(month(date, label = TRUE, abbr = FALSE))) %>%
  mutate(shorter_date = paste(month(date, label = TRUE, abbr = TRUE)))




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
    name = "Housing Indicators",
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

ggplot(data, aes(x = date,
                 y = value,
                 color = name)) +
  geom_line() +
  facet_wrap(~ name, scales = "free_y") +
  xlab(NULL) +
  ylab(NULL) +
  scale_x_date(expand = expansion(mult = c(0,0)),
               labels = label_date_short()) +
  scale_y_continuous(labels = label_comma(),
                     position = "right") +
  expand_limits(y = 0) +
  scale_colour_manual(guide = 'none',
                      values = c("darkgreen","#674EA7","#B45F06","#d90000")) +
  labs(title = "Champaign County Housing Metrics",
       caption = paste("Source: Realtor.com, retrieved from the St. Louis Fed. Latest data:",
                       tail(data$short_date,1))) +
  theme_bw() +
  theme(axis.text.y = element_text(size = 10),
        axis.text.x = element_text(size = 8),
        panel.grid.minor = element_blank(),
        panel.background = element_blank(),
        panel.grid.major.y = element_line(colour = "grey93"),
        panel.grid.major.x = element_line(colour = "grey93"),
        strip.text = element_text(size = 11),
        strip.background = element_blank(),
        plot.caption = element_text(colour = "grey40"))

ggsave("plots/champaign_housing.png",
       width = 8, height = 8*(628/1200), dpi = 320)


ggplot(data, aes(x = date,
                 y = value,
                 color = name)) +
  geom_line() +
  facet_wrap(~ name, scales = "free_y",
             ncol = 1) +
  xlab(NULL) +
  ylab(NULL) +
  scale_x_date(expand = expansion(mult = c(0,0)),
               labels = label_date_short()) +
  scale_y_continuous(labels = label_comma(),
                     position = "right") +
  expand_limits(y = 0) +
  scale_colour_manual(guide = 'none',
                      values = c("darkgreen","#674EA7","#B45F06","#d90000")) +
  labs(caption = paste("Source: Realtor.com, retrieved from\nthe St. Louis Fed. Latest data:",
                       tail(data$short_date,1))) +
  theme_bw() +
  theme(#axis.text.y = element_text(size = 10),
        #axis.text.x = element_text(size = 8),
        panel.grid.minor = element_blank(),
        panel.background = element_blank(),
        panel.grid.major.y = element_line(colour = "grey93"),
        panel.grid.major.x = element_line(colour = "grey93"),
        #strip.text = element_text(size = 11),
        strip.background = element_blank(),
        plot.caption = element_text(colour = "grey40"))

ggsave("plots/champaign_housing_mobile.png",
       width = 3, height = 8*(628/1200), dpi = 320)

# Illinois ----
## flash index ----
flash_index_archive <- read_html("https://igpa.uillinois.edu/page/flash-index-archive")
flash_index <- flash_index_archive %>% html_node("table") %>% 
  html_table(header = TRUE) %>%
  rename(Year = 1) %>%
  na_if("-") %>%
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

ggplot(data = data,
       aes(x = date,
           y = value)) +
  geom_line(color = "grey60",
            size = .4) +
  geom_point(size = .4,
             aes(color = value > 100)) +
  labs(title = "Flash Index",
       caption = paste("Source: Institute of Government and Public Affairs at the University of Illinois. Latest data:",
                       tail(recent_data$short_date,1))) +
  geom_hline(yintercept = 100,
             color = "grey10",
             size = .2) +
  xlab(NULL) +
  ylab(NULL) +
  scale_y_continuous(position = "right") +
  scale_x_date(expand = expansion(mult = c(0, 0))) +
  scale_color_manual(guide = "none",
                     values = c("#b32704","#199fa8")) +
  facet_zoom(x = date > recent_years,
             zoom.size = 4,
             ylim = c(min(recent_data$value),
                      max(recent_data$value)),
             #show.area = FALSE,
             horizontal = FALSE) +
  theme_bw() +
  theme(axis.text.y = element_text(size = 10),
        axis.text.x = element_text(size = 8),
        # panel.grid.minor = element_blank(),
        # panel.background = element_blank(),
        # panel.grid.major.x = element_line(colour = "grey93"),
        panel.grid.major.y = element_line(colour = "grey93"),
        # #strip.text = element_text(size = 11),
        #strip.background = element_blank(),
        plot.caption = element_text(colour = "grey40"))

ggsave("plots/il_flash_index.png", width = 8, height = 8*(628/1200), dpi = 320)

fig <- hchart(data, "line", hcaes(x = date,
                                  y = value),
              name = "Index") %>%
  hc_title(text = "Flash Index") %>%
  hc_caption(
    text = paste("Source: Institute of Government and Public Affairs at the University of Illinois. Latest data:",
                 tail(recent_data$short_date,1))) %>%
  hc_yAxis(title = "",
           plotLines = list(
             list(
               color = "green",
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


## population ----
data <-fredr(series_id = "ILPOP")
recent_data <- data %>%
  filter(date > past_ten_years) %>%
  mutate(short_date = paste(year(date))) 

il_population <- ggplot(data = data,
                        aes(x = date,
                            y = value)) +
  geom_line() +
  labs(title = "Population",
       caption = paste("Source: U.S. Census Bureau, retrieved from the St. Louis Fed. Latest data:",
                       tail(recent_data$short_date,1))) +
  xlab(NULL) +
  ylab(NULL) +
  #expand_limits(y=0) +
  scale_y_continuous(position = "right",
                     labels = label_comma(suffix = "M",
                                          scale = .001,
                                          accuracy = .1)) +
  scale_x_date(expand = expansion(mult = c(0, 0))) +
  facet_zoom(x = date > past_ten_years,
             zoom.size = 4,
             ylim = c(min(recent_data$value),
                      max(recent_data$value)),
             #show.area = FALSE,
             horizontal = FALSE) +
  theme_bw() +
  theme(axis.text.y = element_text(size = 10),
        axis.text.x = element_text(size = 8),
        # panel.grid.minor = element_blank(),
        # panel.background = element_blank(),
        # panel.grid.major.x = element_line(colour = "grey93"),
        panel.grid.major.y = element_line(colour = "grey93"),
        # #strip.text = element_text(size = 11),
        #strip.background = element_blank(),
        plot.caption = element_text(colour = "grey40"))
il_population
ggsave("plots/il_population.png", plot = il_population,
       width = 8, height = 8*(628/1200), dpi = 320)

fig <- hchart(data, "line", hcaes(x = date,
                                  y = value*1000),
              name = "Population") %>%
  hc_title(text = "Population") %>%
  hc_caption(
    text = paste("Source: U.S. Census Bureau, retrieved from the St. Louis Fed. Latest data:",
                 tail(recent_data$short_date,1))) %>%
  hc_yAxis(title = "") %>%
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

<iframe src=\"/interactive/champaign_employment.html\" width=\"100%\" height=\"300\"> 
</iframe>

### Housing Metrics

<picture>
  <source srcset=\"{{ site.baseurl }}/plots/champaign_housing.png\"
          media=\"(min-width: 750px)\">
  <img src=\"{{ site.baseurl }}/plots/champaign_housing_mobile.png\" alt=\"\" />
</picture>

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
permalink: /projects/economy/usa
imageurl: https://bzigterman.com/plots/unemployment_rate.png
---

<iframe src=\"/interactive/initial_claims.html\" width=\"100%\" height=\"300\"> 
</iframe>

<iframe src=\"/interactive/us_unemployment_rate.html\" width=\"100%\" height=\"300\"> 
</iframe>

<iframe src=\"/interactive/us_employment.html\" width=\"100%\" height=\"300\"> 
</iframe>

<iframe src=\"/interactive/disposable_income.html\" width=\"100%\" height=\"300\"> 
</iframe>

[![Inflation]({{ site.baseurl }}/plots/consumer_price_index.png)](https://fred.stlouisfed.org/series/CPIAUCSL)

[![Retail Sales]({{ site.baseurl }}/plots/retail_sales.png)](https://fred.stlouisfed.org/series/RSAFS)

[![Durable Goods]({{ site.baseurl }}/plots/durable_goods.png)](https://fred.stlouisfed.org/series/DGORDER)

[![Consumer Sentiment]({{ site.baseurl }}/plots/consumer_sentiment.png)](https://fred.stlouisfed.org/series/UMCSENT)

[![Real GDP]({{ site.baseurl }}/plots/gdp.png)](https://fred.stlouisfed.org/series/GDPC1)

<iframe src=\"/interactive/us_population.html\" width=\"100%\" height=\"300\"> 
</iframe>

Data retrieved from the [Federal Reserve Bank of St. Louis](https://fred.stlouisfed.org)

",
sep = ""
)
write_lines(web_text,"projects/economy/usa.md")

