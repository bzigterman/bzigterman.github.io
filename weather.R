library(tidyverse)
library(owmr)
library(lubridate)
library(scales)
library(httr)
library(cowplot)

# set up api
Sys.getenv("OWM_API_KEY")
owmr_settings(Sys.getenv("OWM_API_KEY"))

champaign_lat <-  40.116
champaign_lon <- -88.243

# current and forecast
url <- "https://api.openweathermap.org/data/2.5/onecall"
#?lat={lat}&lon={lon}&exclude={part}&appid={API key}"

champaign_weather_response <- GET(url,
                                  query = list(lat = champaign_lat,
                                               lon = champaign_lon,
                                               appid = Sys.getenv("OWM_API_KEY")))
cu_weather <- content(champaign_weather_response)

# historical
url <- "https://api.openweathermap.org/data/2.5/onecall/timemachine"
#?lat={lat}&lon={lon}&dt={time}&appid={API key}"

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
                                 if_else(hour(central_time) == 12,
                                         temp,NULL))) %>%
  mutate(half_day_icon = if_else(hour(central_time) == 0,weather_unicode,
                                 if_else(hour(central_time) == 12,
                                         weather_unicode,NULL))) %>%
  mutate(rain = {if("rain_3h" %in% names(.)) ifelse(is.na(rain_3h),
                                                    0,rain_3h) else 0}) %>%
  mutate(snow = {if("snow_3h" %in% names(.)) ifelse(is.na(snow_3h),
                                                    0,snow_3h) else 0})

champaign_forecast_longer <- champaign_forecast_tidy %>%
  pivot_longer(cols = c(temp,pressure,
                        humidity,
                        wind_speed,clouds_all,
                        pop,rain,snow
                        ),
               names_to = "names",
               values_to = "values") %>%
  select(central_time,names,values) %>%
  mutate(names = recode_factor(names, 
                        "temp" = "°F",
                        "pop" = "Precip%",
                        "rain" = "Rain",
                        "snow" = "Snow",
                        "humidity" = "Humidity",
                        "wind_speed" = "Wind",
                        "clouds_all" = "Clouds",
                        "pressure" = "Pressure")) 

# facet ----
ggplot(champaign_forecast_longer,
       aes(x = central_time,
           y = values,
           colour = names)) +
  geom_line() +
  facet_wrap(~ names, scales = "free_y",
             ncol = 1,
             strip.position = "left") +
  labs(caption = "Source: OpenWeather") +
  xlab(NULL) +
  ylab(NULL) +
  scale_x_datetime(expand = c(0,0),
                   date_labels = "%a",
                   position = "top") +
  scale_y_continuous(position = "right") +
  theme(#axis.text.x = element_text(size = 8),
        axis.ticks.y = element_blank(),
        panel.grid = element_blank(),
        panel.background = element_blank(),
        legend.position = "none",
        panel.grid.major = element_line(colour = "grey93"),
        #strip.text = element_text(size = 11),
        strip.background = element_blank(),
        plot.caption = element_text(colour = "grey40"))

ggsave("plots/champaign_weather.png", bg = "white",
       width = 6, height = 8, dpi = 320)

ggsave("plots/champaign_weather_mobile.png", bg = "white",
       width = 3, height = 8, dpi = 320)

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

## Champaign 5-Day Forecast

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


