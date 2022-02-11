library(tidyverse)
library(owmr)
library(lubridate)
library(scales)
library(emojifont)
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
  #select(dt_txt,pop,temp,weather_icon) %>%
  mutate(datetime = as_datetime(dt_txt)) %>%
  mutate(utc_time = force_tz(datetime, tz = "UTC")) %>%
  mutate(central_time = with_tz(utc_time, tz = "America/Chicago")) %>%
  mutate(temp_class = cut(x = temp,
                          breaks = c(-Inf,0,10,20,32,40,50,60,70,80,90,100,Inf),
                          labels = c("Below 0","0–10","10–20","20–32",
                                     "32–40","40–50","50–60","60–70",
                                     "70–80","80–90","90–100","100+"),
                          ordered_result = TRUE)) %>%
  mutate(weather_unicode = case_when(
    weather_icon == "01d" ~ "☀",
    weather_icon == "01n" ~ "🌕",
    weather_icon == "02d" ~ "🌤",
    weather_icon == "02n" ~ "☁",
    weather_icon == "03d" ~ "☁",
    weather_icon == "03n" ~ "☁",
    weather_icon == "04d" ~ "🌥",
    weather_icon == "04n" ~ "☁",
    weather_icon == "09d" ~ "🌧",
    weather_icon == "09n" ~ "🌧",
    weather_icon == "10d" ~ "🌦",
    weather_icon == "10n" ~ "🌧",
    weather_icon == "11d" ~ "🌩",
    weather_icon == "11n" ~ "🌩",
    weather_icon == "13d" ~ "❄",
    weather_icon == "13n" ~ "❄",
    weather_icon == "50d" ~ "🌫",
    weather_icon == "50n" ~ "🌫",
    TRUE ~ weather_icon
  ) 
  ) %>% 
  mutate(half_day_temp = if_else(hour(central_time) == 0,temp,
                                 if_else(hour(central_time) == 12,temp,NULL)
  )
  ) %>%
  mutate(half_day_icon = if_else(hour(central_time) == 0,weather_unicode,
                                 if_else(hour(central_time) == 12,weather_unicode,NULL)
  )
  )

champaign_forecast_longer <- champaign_forecast_tidy %>%
  pivot_longer(cols = c(temp,#pressure,
                        humidity,
                        wind_speed,clouds_all,
                       # visibility,
                        pop,rain_3h,snow_3h),
               names_to = "names",
               values_to = "values") %>%
  select(central_time,names,values) %>%
  mutate(names = recode(names, 
                        "temp" = "°F",
                        "pop" = "Precip%",
                        "rain_3h" = "Rain",
                        "snow_3h" = "Snow",
                        "humidity" = "Humidity",
                        "wind_speed" = "Wind",
                        #"pressure" = "Pressure",
                        "clouds_all" = "Clouds")) 


# facet ----
ggplot(champaign_forecast_longer,
       aes(x = central_time,
           y = values,
           colour = names)) +
  geom_line() +
  facet_wrap(~ names, scales = "free_y",
             ncol = 1,
             strip.position = "left") +
  labs(caption = "OpenWeather") +
  xlab(NULL) +
  ylab(NULL) +
  scale_x_datetime(expand = c(0,0),
                   date_labels = "%a") +
  scale_y_continuous(position = "right") +
  theme(axis.text.x = element_text(size = 8),
        axis.ticks.y = element_blank(),
        panel.grid = element_blank(),
        panel.background = element_blank(),
        legend.position = "none",
        panel.grid.major = element_line(colour = "grey93"),
        strip.text = element_text(size = 11),
        strip.background = element_blank(),
        plot.caption = element_text(colour = "grey40"))

ggsave("plots/champaign_weather.png", bg = "white",
       width = 8, height = 8, dpi = 320)

ggsave("plots/champaign_weather_mobile.png", bg = "white",
       width = 4, height = 8, dpi = 320)


# plot data ----
temp <- ggplot(champaign_forecast_tidy,
               aes(x = central_time,
                   y = temp,
                   label = weather_unicode,
                   color = temp_class)) +
  geom_line(color = "grey93") +
  #geom_point(size = .5) +
  geom_text(color = "black",
            family = "EmojiOne",
            nudge_y = .25,
            size = 5) + 
  geom_text(aes(label = round(temp)),
            color = "black",
            nudge_y = 1.6) +
  scale_color_manual(values = c("magenta","purple","darkblue","blue",
                                "turquoise","green","yellow","gold",
                                "orange","orangered","red","darkred"),
                     limits = c("Below 0","0–10","10–20","20–32",
                                "32–40","40–50","50–60","60–70",
                                "70–80","80–90","90–100","100+")) +
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
    legend.position = "none",
    legend.key.size = unit(.1,"in"),
    legend.box.spacing = unit(0,"in")
  )
temp

precip <- ggplot(champaign_forecast_tidy,
                 aes(x = central_time,
                     y = pop)) +
  geom_col(fill = "lightblue") +
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
    panel.grid.major.y = element_line(colour = "grey97"),
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

weather <- plot_grid(temp, precip,
          align = "v",
          ncol = 1,
          rel_heights = c(6,2))

#ggsave("plots/champaign_weather.png", plot = weather,
 #      width = 8, height = 8*(628/1200), dpi = 320)


temp_mobile <- ggplot(champaign_forecast_tidy,
                      aes(x = central_time,
                          y = temp,
                          label = half_day_icon,
                          color = temp_class),) +
  geom_line(color = "grey93") +
  #geom_point(size = .5) +
  geom_text(color = "black",
            family = "EmojiOne",
            nudge_y = .25,
            size = 5) + 
  geom_text(aes(label = round(half_day_temp)),
            color = "black",
            nudge_y = 1.6) +
  scale_color_manual(values = c("magenta","purple","darkblue","blue",
                                "turquoise","green","yellow","gold",
                                "orange","orangered","red","darkred"),
                     limits = c("Below 0","0–10","10–20","20–32",
                                "32–40","40–50","50–60","60–70",
                                "70–80","80–90","90–100","100+")) +
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
    #axis.text.x = element_text(hjust = -.6),
    legend.position = "none",
    legend.key.size = unit(.1,"in"),
    legend.box.spacing = unit(0,"in")
  )
temp_mobile


weather_mobile <- plot_grid(temp_mobile, precip,
                     align = "v",
                     ncol = 1,
                     rel_heights = c(6,2))

#ggsave("plots/champaign_weather_mobile.png", plot = weather_mobile,
 #      width = 3, height = 8*(628/1200), dpi = 320)


# web text ----
severe_weather_outlook_url <- 
  paste("![](",
        "https://www.spc.noaa.gov/products/activity_loop.gif",
        ")",
        sep = ""
  )

winter_storm_url <- 
  paste("![](",
        "https://origin.wpc.ncep.noaa.gov/wwd/wssi/images/WSSI_Overall_CONUS.png",
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

# weather_image <- paste("<picture>
#                          <source srcset=\"{{ site.baseurl }}/plots/champaign_weather.png\"
#                        media=\"(min-width: 800px)\">
#                          <img src=\"{{ site.baseurl }}/plots/champaign_weather.png\" />
#                          </picture>
# "                         
# )


web_text <- paste(
  "---
layout: page
title: Weather
permalink: /projects/weather
imageurl: https://bzigterman.com/plots/champaign_weather.png
---

## Champaign Forecast

<picture>
  <source srcset=\"{{ site.baseurl }}/plots/champaign_weather.png\"
          media=\"(min-width: 750px)\">
  <img src=\"{{ site.baseurl }}/plots/champaign_weather_mobile.png\" alt=\"\" />
</picture>

Current:

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


