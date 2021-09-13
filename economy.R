library(tidyverse)
library(lubridate)
library(scales)
library(fredr)
library(cowplot)
library(ggforce)
library(zoo)

fredr_set_key(Sys.getenv("FRED_API_KEY"))

recent_years <- ymd((today() - years(5)))
less_recent_years <- ymd((today() - years(6)))
past_ten_years <- ymd((today() - years(11)))

# usa ----
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

## employment -----
data <- fredr(series_id = "PAYEMS")
recent_data <- data %>%
  filter(date > recent_years) %>%
  mutate(short_date = paste(month(date, label = TRUE, abbr = FALSE))) %>%
  mutate(change = value - lag(value))

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

## median household income ----
data <-fredr(series_id = "MEHOINUSA672N")
recent_data <- data %>%
  filter(date > past_ten_years) %>%
  mutate(short_date = paste(year(date))) 

ggplot(data, aes(x = date,
                 y = value)) +
  geom_line() +
  labs(title = "Real Median Household Income",
       caption = paste("Source: U.S. Census Bureau, retrieved from the St. Louis Fed. Latest data:",
                       tail(recent_data$short_date,1))) +
  xlab(NULL) +
  ylab(NULL) +
  scale_x_date(expand = expansion(mult = c(0, .01))) +
  scale_y_continuous(position = "right",
                     labels = label_dollar(),
                     limits = c(0,max(data$value)*1.05)) +
  theme(axis.text.y = element_text(size = 10),
        axis.text.x = element_text(size = 8),
        panel.grid.minor = element_blank(),
        panel.background = element_blank(),
        panel.grid.major.y = element_line(colour = "grey93"),
        strip.text = element_text(size = 11),
        strip.background = element_blank(),
        plot.caption = element_text(colour = "grey40"))

median_household_income <- ggplot(data = data,
                                  aes(x = date,
                                      y = value)) +
  geom_line() +
  labs(title = "Real Median Household Income",
       caption = paste("Source: U.S. Census Bureau, retrieved from the St. Louis Fed. Latest data:",
                       tail(recent_data$short_date,1))) +
  xlab(NULL) +
  ylab(NULL) +
  #expand_limits(y=0) +
  scale_y_continuous(position = "right",
                     labels = label_dollar()) +
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
median_household_income
ggsave("plots/real_median_income.png", plot = median_household_income,
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
  mutate(short_date = paste(month(date, label = TRUE, abbr = FALSE))) 

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

## employment -----
data <- fredr(series_id = "LAUCN170190000000005") %>%
  mutate(annual_avg = rollmean(value, k = 12, 
                               fill = NA, align = "right"))
recent_data <- data %>%
  filter(date > less_recent_years) %>%
  mutate(short_date = paste(month(date, label = TRUE, abbr = FALSE))) %>%
  mutate(change = value - lag(value, n = 12))

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

## housing ----
active_listings <- fredr(series_id = "ACTLISCOU17019") %>%
  mutate(name = "Active Listings")
median_listing_price <- fredr(series_id = "MEDLISPRI17019") %>%
  mutate(name = "Median Listing Price")
median_days_on_market <- fredr(series_id = "MEDDAYONMAR17019") %>%
  mutate(name = "Median Days on Market")
pending_ratio <- fredr(series_id = "PENRAT17019") %>%
  mutate(name = "Pending-to-Active Ratio")


data <- full_join(active_listings, median_listing_price) %>%
  full_join(median_days_on_market) %>%
  full_join(pending_ratio) %>%
  mutate(short_date = paste(month(date, label = TRUE, abbr = FALSE)))

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

# make web page ----

web_text <- paste(
  "---
layout: page
title: Economic Indicators
permalink: /charts/economy/
---

## Champaign County

![Unemployment Rate]({{ site.baseurl }}/plots/champaign_unemployment_rate.png)

![Employment]({{ site.baseurl }}/plots/champaign_employment.png)

![Population]({{ site.baseurl }}/plots/champaign_population.png)

![Housing]({{ site.baseurl }}/plots/champaign_housing.png)

## United States

![Unemployment Rate]({{ site.baseurl }}/plots/unemployment_rate.png)

![Employment]({{ site.baseurl }}/plots/employment.png)

![Real GDP]({{ site.baseurl }}/plots/gdp.png)

![Real Median Income]({{ site.baseurl }}/plots/real_median_income.png)

![Retail Sales]({{ site.baseurl }}/plots/retail_sales.png)

![Durable Goods]({{ site.baseurl }}/plots/durable_goods.png)

![Consumer Sentiment]({{ site.baseurl }}/plots/consumer_sentiment.png)

Data retrieved from the [Federal Reserve Bank of St. Louis](https://fred.stlouisfed.org)
",
sep = ""
)
write_lines(web_text,"charts/economy.md")

