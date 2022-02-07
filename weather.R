library(tidyverse)
library(owmr)
library(lubridate)
library(scales)
library(cowplot)

owmr_settings(Sys.getenv("OWM_API_KEY"))

# get data ----
champaign_forecast <- get_forecast(city = 4887158, units = "imperial")
champaign_forecast_tibble <- owmr_as_tibble(champaign_forecast)
champaign_current <- get_current(city = 4887158, units = "imperial")
champaign_current_tibble <- owmr_as_tibble(champaign_current)

# set variables ----
champaign_temp <- paste(round(champaign_current_tibble$temp),"°", sep = "")
champaign_humidity <- paste(champaign_current_tibble$humidity,"%",sep = "")
champaign_desc <- champaign_current_tibble$weather_description
champaign_weather_icon <- get_icon_url(champaign_current_tibble$weather_icon)
champaign_wind_speed <- paste(round(champaign_current_tibble$wind_speed),"mph")
champaign_sunrise <- strftime(force_tz(
  as_datetime(champaign_current_tibble$dt_sunrise_txt),
  tz = "America/Chicago"),
  format = "%I:%M")
champaign_sunset <- strftime(force_tz(
  as_datetime(champaign_current_tibble$dt_sunset_txt),
  tz = "America/Chicago"),
  format = "%I:%M")

# tidy data ----
champaign_forecast_tidy <- champaign_forecast_tibble %>%
  select(dt_txt,pop,temp) %>%
  mutate(datetime = as_datetime(dt_txt)) %>%
  mutate(utc_time = force_tz(datetime, tz = "UTC")) %>%
  mutate(central_time = with_tz(utc_time, tz = "America/Chicago"))

# plot data ----
temp <- ggplot(champaign_forecast_tidy,
               aes(x = central_time,
                   y = temp,
                   label = round(temp))) +
  geom_line(color = "grey93") +
  geom_text() + 
  scale_x_datetime(date_labels = "%a") +
  scale_y_continuous(position = "right",
                     labels = label_number(suffix = "°")) +
  theme_minimal() +
  labs(x = NULL,
       y = NULL) +
  theme(
    legend.title = element_blank(),
    panel.grid.major.x = element_line(colour = "grey93"),
    plot.title = element_text(hjust = 1),
    plot.background = element_rect(fill = "white", color = "white"),
    panel.grid = element_blank(),
    #axis.text = element_blank(),
    legend.position = "bottom",
    legend.key.size = unit(.1,"in"),
    legend.box.spacing = unit(0,"in")
  )
temp

precip <- ggplot(champaign_forecast_tidy,
                 aes(x = central_time,
                     y = pop)) +
  geom_col(fill = "lightblue",
           color = "lightblue") +
  scale_x_datetime(date_labels = "%a") +
  scale_y_continuous(labels = label_percent(),
                     position = "right",
                     limits = c(0,1)) +
  theme_minimal() +
  labs(x = NULL,
       y = NULL,
       caption = "Source: OpenWeather") +
  theme(
    legend.title = element_blank(),
    panel.grid.major.y = element_line(colour = "grey93"),
    plot.title = element_text(hjust = 1),
    plot.background = element_rect(fill = "white", color = "white"),
    panel.grid = element_blank(),
    axis.text.x = element_blank(),
    legend.position = "bottom",
    legend.key.size = unit(.1,"in"),
    legend.box.spacing = unit(0,"in"),
    plot.caption = element_text(colour = "grey40")
  )
precip

plot_grid(temp, precip,
          align = "v",
          ncol = 1,
          rel_heights = c(6,2))

ggsave("plots/champaign_weather.png",
       width = 8, height = 8*(628/1200), dpi = 320)

# web text ----

severe_weather_outlook_url <- 
  paste("![](",
        "https://www.spc.noaa.gov/products/activity_loop.gif",
        ")",
        sep = ""
  )

winter_storm_url <- 
  paste("![](",
        "https://origin.wpc.ncep.noaa.gov/wwd/wssi/images/WSSI_Overall_IL.png",
        ")",
        sep = ""
  )


now <- as_datetime(now())
now_formatted <- strftime(x = now, 
                          tz = "US/Central",
                          format = "%I:%M% %p CT, %B %d")

now_html <- paste("<p class=\"updated_time\"> Latest data: ",
                  now_formatted,
                  "</p>",
                  sep = "")


web_text <- paste(
  "---
layout: page
title: Weather
permalink: /projects/weather
imageurl: https://bzigterman.com/plots/champaign_weather.png
---

## Champaign Forecast

![Champaign Weather]({{ site.baseurl }}/plots/champaign_weather.png)

Current Weather:

- ",champaign_temp,"
- ",champaign_desc,"
- ",champaign_humidity," humidity
- ",champaign_wind_speed," wind
- ",champaign_sunrise," a.m. sunrise
- ",champaign_sunset," p.m. sunset

",now_html,"

## Severe Thunderstorm Outlook

",severe_weather_outlook_url,"

<p class=\"updated_time\">Source: <a href=\"https://www.spc.noaa.gov\">NOAA/NWS Storm Prediction Center</a>.</p> 

## Winter Storm Severity Index

",winter_storm_url,"

<p class=\"updated_time\">Source: <a href=\"https://www.wpc.ncep.noaa.gov/wwd/wssi/wssi.php\">NOAA/NWS Weather Prediction Center</a>.</p> 


",
sep = ""
)

write_lines(web_text,"projects/weather.md")


