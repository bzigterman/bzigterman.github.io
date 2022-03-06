library(tidyverse)
library(readr)
library(lubridate)
library(scales)
library(httr)
library(jsonlite)
library(cowplot)

# get data ----
# set up api
Sys.getenv("OWM_API_KEY")

champaign_lat <-  40.116
champaign_lon <- -88.243

## one call ----
url <- "https://api.openweathermap.org/data/2.5/onecall"
champaign_weather_response <- 
  GET(url,
      query = list(lat = champaign_lat,
                   lon = champaign_lon,
                   units = "imperial",
                   appid = Sys.getenv("OWM_API_KEY")))

champaign_weather_json <- content(champaign_weather_response, as = "text")
champaign_current <- fromJSON(champaign_weather_json, flatten = TRUE)$current
champaign_minutely <- fromJSON(champaign_weather_json, flatten = TRUE)$minutely %>%
  mutate(utc_time = as_datetime(dt))
champaign_hourly <- fromJSON(champaign_weather_json, flatten = TRUE)$hourly%>%
  mutate(utc_time = as_datetime(dt))%>%
  mutate(central_time = with_tz(utc_time, tzone = "America/Chicago")) %>%
  mutate(rain = {if("rain.1h" %in% names(.)) ifelse(is.na(rain.1h),
                                                    0,rain.1h) else 0}) %>%
  mutate(snow = {if("snow.1h" %in% names(.)) ifelse(is.na(snow.1h),
                                                    0,snow.1h) else 0}) %>%
  mutate(sunrise = as_datetime( paste(as_date(central_time)," ",
                         hour(as_datetime(champaign_current$sunrise, tz = "America/Chicago")),":",
                         minute(as_datetime(champaign_current$sunrise, tz = "America/Chicago")),":",
                         second(as_datetime(champaign_current$sunrise, tz = "America/Chicago")),
                         sep = "")), tz = "America/Chicago" )%>%
  mutate(sunset = as_datetime( paste(as_date(central_time)," ",
                         hour(as_datetime(champaign_current$sunset, tz = "America/Chicago")),":",
                         minute(as_datetime(champaign_current$sunset, tz = "America/Chicago")),":",
                         second(as_datetime(champaign_current$sunset, tz = "America/Chicago")),
                         sep = "")), tz = "America/Chicago")

champaign_daily <- fromJSON(champaign_weather_json, flatten = TRUE)$daily%>%
  mutate(utc_time = as_datetime(dt)) %>%
  mutate(central_time = with_tz(utc_time, tzone = "America/Chicago")) %>%
  filter(central_time > now(tzone = "America/Chicago")+days(5))  %>%
  mutate(rain = {if("rain" %in% names(.)) ifelse(is.na(rain),
                                                 0,rain) else 0}) %>%
  mutate(snow = {if("snow" %in% names(.)) ifelse(is.na(snow),
                                                 0,snow) else 0}) 

## historical ----
url <- "https://api.openweathermap.org/data/2.5/onecall/timemachine"
today <- as.integer(now())
yesterday <- as.integer(now()-days(1))

champaign_weather_history <-
  GET(url,
      query = list(lat = champaign_lat,
                   lon = champaign_lon,
                   dt = today,
                   appid = Sys.getenv("OWM_API_KEY"),
                   units = "imperial"))
history_today_json <- content(champaign_weather_history, as = "text")
history_today <- fromJSON(history_today_json, flatten = TRUE)$hourly%>%
  mutate(utc_time = as_datetime(dt))  %>%
  mutate(central_time = with_tz(utc_time, tzone = "America/Chicago")) 


champaign_weather_history <-
  GET(url,
      query = list(lat = champaign_lat,
                   lon = champaign_lon,
                   dt = yesterday,
                   appid = Sys.getenv("OWM_API_KEY"),
                   units = "imperial"))
history_json <- content(champaign_weather_history, as = "text")
history_yesterday <- fromJSON(history_json, flatten = TRUE)$hourly%>%
  mutate(utc_time = as_datetime(dt))  %>%
  mutate(central_time = with_tz(utc_time, tzone = "America/Chicago")) 

last_24 <- full_join(history_today, history_yesterday) %>%
  mutate(rain = {if("rain.1h" %in% names(.)) ifelse(is.na(rain.1h),
                                                    0,rain.1h) else 0}) %>%
  mutate(snow = {if("snow.1h" %in% names(.)) ifelse(is.na(snow.1h),
                                                    0,snow.1h) else 0}) %>%
  arrange(central_time) %>%
  filter(central_time > now(tzone = "America/Chicago")-days(1)) %>%
  mutate(sunrise = as_datetime( paste(as_date(central_time)," ",
                                      hour(as_datetime(champaign_current$sunrise, tz = "America/Chicago")),":",
                                      minute(as_datetime(champaign_current$sunrise, tz = "America/Chicago")),":",
                                      second(as_datetime(champaign_current$sunrise, tz = "America/Chicago")),
                                      sep = "")), tz = "America/Chicago" )%>%
  mutate(sunset = as_datetime( paste(as_date(central_time)," ",
                                     hour(as_datetime(champaign_current$sunset, tz = "America/Chicago")),":",
                                     minute(as_datetime(champaign_current$sunset, tz = "America/Chicago")),":",
                                     second(as_datetime(champaign_current$sunset, tz = "America/Chicago")),
                                     sep = "")), tz = "America/Chicago")

## three-hours ----
url = "https://api.openweathermap.org/data/2.5/forecast"
champaign_forecast_response <- 
  GET(url,
      query = list(lat = champaign_lat,
                   lon = champaign_lon,
                   units = "imperial",
                   appid = Sys.getenv("OWM_API_KEY")))

champaign_forecast_json <- content(champaign_forecast_response, as = "text")
champaign_forecast <- fromJSON(champaign_forecast_json, flatten = TRUE)$list %>%
  mutate(datetime = as_datetime(dt_txt)) %>%
  mutate(utc_time = force_tz(datetime, tz = "UTC")) %>%
  mutate(central_time = with_tz(utc_time, tzone = "America/Chicago")) %>%
  mutate(temp = main.temp) %>%
  mutate(humidity = main.humidity) %>%
  mutate(pressure = main.pressure) %>%
  mutate(clouds = clouds.all) %>%
  mutate(wind_speed = wind.speed) %>%
  mutate(sunrise = as_datetime( paste(as_date(central_time)," ",
                                      hour(as_datetime(champaign_current$sunrise, tz = "America/Chicago")),":",
                                      minute(as_datetime(champaign_current$sunrise, tz = "America/Chicago")),":",
                                      second(as_datetime(champaign_current$sunrise, tz = "America/Chicago")),
                                      sep = "")), tz = "America/Chicago" )%>%
  mutate(sunset = as_datetime( paste(as_date(central_time)," ",
                                     hour(as_datetime(champaign_current$sunset, tz = "America/Chicago")),":",
                                     minute(as_datetime(champaign_current$sunset, tz = "America/Chicago")),":",
                                     second(as_datetime(champaign_current$sunset, tz = "America/Chicago")),
                                     sep = "")), tz = "America/Chicago")

# set variables ----
champaign_temp <- paste(round(champaign_current$temp),"°", sep = "")
champaign_humidity <- paste(champaign_current$humidity,"%",sep = "")
champaign_desc <- champaign_current$weather$description
champaign_wind_speed <- paste(round(champaign_current$wind_speed),"mph")

# tidy data ----
champaign_forecast_tidy <- champaign_forecast %>%
  mutate(datetime = as_datetime(dt_txt)) %>%
  mutate(utc_time = force_tz(datetime, tz = "UTC")) %>%
  mutate(central_time = with_tz(utc_time, tzone = "America/Chicago")) %>%
  mutate(rain = {if("rain.3h" %in% names(.)) ifelse(is.na(rain.3h),
                                                    0,rain.3h/3) else 0}) %>%
  mutate(snow = {if("snow.3h" %in% names(.)) ifelse(is.na(snow.3h),
                                                    0,snow.3h/3) else 0}) %>%
  filter(central_time > now(tzone = "America/Chicago")+days(2))


champaign_history_and_forecast <- full_join(champaign_forecast_tidy,last_24) %>%
  full_join(champaign_hourly)

champaign_forecast_longer <- champaign_history_and_forecast %>%
  select(central_time,temp, humidity,
         wind_speed, clouds,
         pop, rain, snow, sunrise, sunset) %>%
  select(where(~ any(. != 0))) %>%
  pivot_longer(cols = !c(central_time, sunrise, sunset),
               names_to = "names",
               values_to = "values") %>%
  select(central_time, sunrise, sunset,names,values) %>%
  mutate(names = recode_factor(names, 
                               "temp"       = "°F",
                               "pop"        = "Precip%",
                               "rain"       = "Rain",
                               "snow"       = "Snow",
                               "clouds"     = "Clouds",
                               "wind_speed" = "Wind",
                               "humidity"   = "Humidity"))

daylight <- champaign_forecast_longer %>%
  select(sunrise, sunset) %>%
  unique() %>%
  mutate(top = Inf) %>%
  mutate(bottom = -Inf) %>%
  mutate(sunrise = force_tz(sunrise, tzone = "America/Chicago")) %>%
  mutate(sunset = force_tz(sunset, tzone = "America/Chicago"))

# facet ----
ggplot() +
  geom_rect(data = daylight,
            aes(xmin = sunrise, xmax = sunset,
                ymin = bottom, ymax = top),
            color = "#FFFFFB",
            fill = "#FFFFFB") +
  geom_line(data = champaign_forecast_longer,
            aes(x = central_time,
                y = values,
                colour = names)) +
  geom_vline(xintercept = now(tzone = "America/Chicago")) +
  facet_wrap(~ names, scales = "free_y",
             ncol = 1,
             strip.position = "left") +
  labs(caption = "Source: OpenWeather") +
  xlab(NULL) +
  ylab(NULL) +
  coord_cartesian(xlim = c(min(champaign_forecast_longer$central_time),
                           max(champaign_forecast_longer$central_time))) +
  scale_x_datetime(expand = c(0,0),
                   date_labels = "%a",
                   date_breaks = "1 day",
                   position = "top",
                   timezone = "America/Chicago") +
  scale_y_continuous(position = "right") +
  theme(axis.ticks.y = element_blank(),
        panel.grid = element_blank(),
        panel.background = element_rect("#DAE3ED"),
        legend.position = "none",
        panel.grid.major.x = element_line(colour = "grey75"),
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

web_text <- paste(
  "---
layout: page
title: Weather
permalink: /projects/weather
imageurl: https://bzigterman.com/plots/champaign_weather.png
---

## Champaign 5-Day Forecast

",now_html,"

<picture>
  <source srcset=\"{{ site.baseurl }}/plots/champaign_weather.png\"
          media=\"(min-width: 750px)\">
  <img src=\"{{ site.baseurl }}/plots/champaign_weather_mobile.png\" alt=\"\" />
</picture>

Currently:

- ",champaign_temp,"
- ",champaign_desc,"
- ",champaign_humidity," humidity
- ",champaign_wind_speed," wind

## Severe Thunderstorm Outlook

",severe_weather_outlook_url,"

<p class=\"updated_time\">Source: <a href=\"https://www.spc.noaa.gov\">NOAA/NWS Storm Prediction Center</a>.</p> 

## Winter Storm Severity Index

",winter_storm_url,"

<p class=\"updated_time\">Source: <a href=\"https://www.wpc.ncep.noaa.gov/wwd/wssi/wssi.php\">NOAA/NWS Weather Prediction Center</a>.</p> 


",
sep = ""
)

write_lines(web_text,"projects/weather.md", append = FALSE)




