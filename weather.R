library(tidyverse)
library(readr)
library(lubridate)
library(scales)
library(httr)
library(jsonlite)
library(cowplot)
library(sf)
library(imputeTS)
library(highcharter)
library(RColorBrewer)
library(htmlwidgets)

champaign_lat <-  40.08408
champaign_lon <- -88.24039

# get data ----

# owm api ----
Sys.getenv("OWM_API_KEY")


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
                                     sep = "")), tz = "America/Chicago") %>%
  filter(central_time > now(tzone = "America/Chicago")) %>%
  select(!c(temp,wind_speed))

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
today <- as.integer(now("UTC"))
yesterday <- as.integer(now("UTC")-days(1))

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
  filter(central_time < now(tzone = "America/Chicago")) %>%
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

### rainfall total ----
rainfall <- round(sum(last_24$rain),1)
snowfall <- round(sum(last_24$snow),1)

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


# nws api ----
## forecast ----
url <- "https://api.weather.gov/gridpoints/ILX/95,72/forecast/hourly"
nws_forecast <- GET(url,
                    add_headers(
                      "User-Agent" = "(bzigterman.com, ben@bzigterman.com)")
)
nws_forecast <- content(nws_forecast, as = "text")
nws_forecast <- st_read(nws_forecast)
nws_forecast <- fromJSON(nws_forecast$periods) 
nws_forecast_clean <- nws_forecast %>%
  select(endTime, temperature,windSpeed) %>%
  mutate(wind_speed = as.numeric(gsub(" mph", "", windSpeed))) %>%
  mutate(temp = as.numeric(temperature)) %>%
  mutate(central_time = with_tz(parse_date_time(endTime, "Ymd HMSz"), tzone = "America/Chicago")) %>%
  select(central_time, temp, wind_speed) %>%
  filter(central_time > now(tzone = "America/Chicago")) %>%
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

## historical ----
# url <- "https://api.weather.gov/stations/KCMI/observations/latest"
# nws_forecast <- GET(url,
#                     add_headers(
#                       "User-Agent" = "(bzigterman.com, ben@bzigterman.com)")
# )
# nws_forecast <- content(nws_forecast, as = "text")
# nws_forecast <- st_read(nws_forecast)


# set variables ----
champaign_temp <- paste(round(champaign_current$temp),"°", sep = "")
champaign_humidity <- paste(champaign_current$humidity,"%",sep = "")
champaign_desc <- champaign_current$weather$description
champaign_wind_speed <- paste(round(champaign_current$wind_speed),"mph")
champaign_precip <- case_when(
  rainfall > 0 && snowfall > 0   ~ paste(rainfall,"inches of rain and",snowfall,"inches of snow"),
  rainfall > 0 && snowfall == 0  ~ paste(rainfall,"inches of rain"),
  snowfall > 0 && rainfall == 0  ~ paste(snowfall,"inches of snow"),
  rainfall == 0 && snowfall == 0 ~ paste("No precipitation"))

# save temp data ----

weather_data <- tibble(utc_time = as_datetime(champaign_current$dt),
                       temp = champaign_current$temp)

write_csv(x = weather_data,
          file = "data/champaign_weather.csv",
          append = TRUE)

# tidy data ----
champaign_forecast_tidy <- champaign_forecast %>%
  mutate(datetime = as_datetime(dt_txt)) %>%
  mutate(utc_time = force_tz(datetime, tz = "UTC")) %>%
  mutate(central_time = with_tz(utc_time, tzone = "America/Chicago")) %>%
  mutate(rain = {if("rain.3h" %in% names(.)) ifelse(is.na(rain.3h),
                                                    0,rain.3h/3) else 0}) %>%
  mutate(snow = {if("snow.3h" %in% names(.)) ifelse(is.na(snow.3h),
                                                    0,snow.3h/3) else 0}) %>%
  filter(central_time > now(tzone = "America/Chicago")+days(2)) %>%
  select(!c(temp,wind_speed))


champaign_history_and_forecast <- full_join(champaign_forecast_tidy,last_24) %>%
  full_join(champaign_hourly) %>%
  select(central_time, temp, humidity,
         wind_speed, clouds,
         pop, rain, snow, sunrise, sunset) %>%
  full_join(nws_forecast_clean) %>%
  arrange(central_time) %>%
  select(!tz) %>%
  group_by(central_time) %>%
  summarize(across(everything(), ~ first(na.omit(.)))) 

five_days <- champaign_history_and_forecast %>%
  filter(central_time < now(tzone = "America/Chicago") + days(5)) %>%
  filter(central_time > now(tzone = "America/Chicago")) %>%
  na_interpolation()
last_two <- champaign_history_and_forecast %>%
  filter(central_time > now(tzone = "America/Chicago") + days(5))

all_days <- full_join(five_days, last_two) %>%
  full_join(last_24)

remove_no_precip <- all_days %>%
  select(central_time,temp, humidity,
         wind_speed, clouds,
         pop, rain, snow, sunrise, sunset) %>%
  select(where(~ is.numeric(.) && any(sum(., na.rm = TRUE) !=0))) %>%
  mutate(central_time = all_days$central_time)

champaign_forecast_longer <- all_days %>%
  select(central_time, sunrise, sunset) %>%
  full_join(remove_no_precip) %>%
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


champaign_forecast_wider <- all_days %>%
  select(central_time, sunrise, sunset) %>%
  full_join(remove_no_precip) 

# facet ----
ggplot() +
  geom_rect(data = daylight,
            aes(xmin = sunrise, xmax = sunset,
                ymin = bottom, ymax = top),
            #color = "#FFFFaf",
            fill = "#FFFFe2",
            alpha = .8) +
  geom_line(data = champaign_forecast_longer,
            aes(x = central_time,
                y = values,
                colour = names)) +
  # geom_hline(data = data.frame(yint = 32, names="°F"),
  #            aes(yintercept = yint),
  #            color = "#a2d2df",
  #            linetype = "dotted") +
  geom_vline(xintercept = now(tzone = "America/Chicago")) +
  facet_wrap(~ names, scales = "free_y",
             ncol = 1,
             strip.position = "left") +
  labs(caption = "Source: OpenWeather, NWS") +
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
        panel.grid.major.y = element_line(colour = "grey85"),
        strip.background = element_blank(),
        plot.caption = element_text(colour = "grey40"))

ggsave("plots/champaign_weather.png", bg = "white",
       width = 6, height = 8, dpi = 320)

ggsave("plots/champaign_weather_mobile.png", bg = "white",
       width = 3, height = 8, dpi = 320)

# create temp comparison chart ----
temp_history <- read_csv("data/champaign_weather.csv") %>%
  mutate(central_time = with_tz(utc_time, tzone = "America/Chicago")) 

temps_past_hour <- temp_history %>%
  tail(1) %>%
  mutate(period = "Now") %>%
  select(temp, period, central_time) %>%
  arrange(temp)
temps_today <- temp_history %>%
  filter(as_date(central_time) == as_date(today(tzone = "America/Chicago")))  %>%
  mutate(period = "Today") %>%
  select(temp, period, central_time)%>%
  arrange(temp)
temps_yesterday <- temp_history %>%
  filter(as_date(central_time) == as_date(today(tzone = "America/Chicago")-days(1)))  %>%
  mutate(period = "Yesterday") %>%
  select(temp, period, central_time)%>%
  arrange(temp)
temps_past_day <- temp_history %>%
  filter(central_time > now(tzone = "America/Chicago")-days(1)) %>%
  mutate(period = "Past Day") %>%
  select(temp, period, central_time)%>%
  arrange(temp)
temps_past_week <- temp_history %>%
  filter(central_time > now(tzone = "America/Chicago")-weeks(1)) %>%
  mutate(period = "Past Week") %>%
  select(temp, period, central_time)%>%
  arrange(temp)
temps_past_month <- temp_history %>%
  filter(central_time > now(tzone = "America/Chicago")-days(31)) %>%
  mutate(period = "Past Month") %>%
  select(temp, period, central_time)%>%
  arrange(temp)
temps_past_year <- temp_history %>%
  filter(central_time > now(tzone = "America/Chicago")-years(1)) %>%
  mutate(period = "Past Year") %>%
  select(temp, period, central_time)%>%
  arrange(temp)
temps_past_decade <- temp_history %>%
  filter(central_time > now(tzone = "America/Chicago")-years(10)) %>%
  mutate(period = "Past Decade") %>%
  select(temp, period, central_time)%>%
  arrange(temp)
temps_past_century <- temp_history %>%
  mutate(period = "All Records (since 1888)") %>%
  select(temp, period, central_time)%>%
  arrange(temp)
temps_next_week <- nws_forecast_clean %>%
  mutate(period = "Next Week") %>%
  select(temp, period, central_time) %>%
  arrange(temp)

temps <- full_join(temps_past_hour,temps_today) %>%
  full_join(temps_yesterday) %>%
  full_join(temps_past_week) %>%
  full_join(temps_past_month) %>%
  full_join(temps_past_year) %>%
  full_join(temps_past_decade) %>%
  full_join(temps_past_century) %>%
  full_join(temps_next_week)

his_los <- tibble(period = c("All Records (since 1888)","Past Decade",
                             "Past Year","Past Month","Past Week",
                             "Yesterday","Today","Now","Next Week"),
                  min = c(min(temps_past_century$temp),
                          min(temps_past_decade$temp),
                          min(temps_past_year$temp),
                          min(temps_past_month$temp),
                          min(temps_past_week$temp),
                          min(temps_yesterday$temp),
                          min(temps_today$temp),
                          as.numeric("NA"),
                          min(temps_next_week$temp)),
                  max = c(max(temps_past_century$temp),
                          max(temps_past_decade$temp),
                          max(temps_past_year$temp),
                          max(temps_past_month$temp),
                          max(temps_past_week$temp),
                          max(temps_yesterday$temp),
                          max(temps_today$temp),
                          max(temps_past_hour$temp),
                          max(temps_next_week$temp)))

his_los_longer <- pivot_longer(his_los, cols = c(min,max))

# zones = list(
#   c(value = 10,
#     color = "#5e4fa2"),
#   c(value = 10,
#     color = "#3288bd"),
#   c(value = 20,
#     color = "#66c2a5"),
#   c(value = 32,
#     color = "#abdda4"),
#   c(value = 40,
#     color = "#e6f598"),
#   c(value = 50,
#     color = "#ffffbf"),
#   c(value = 60,
#     color = "#fee08b"),
#   c(value = 70,
#     color = "#fdae61"),
#   c(value = 80,
#     color = "#f46d43"),
#   c(value = 90,
#     color = "#d53e4f"),
#   c(value = 200,
#     color = "#9e0142")),

fig1 <- hchart(his_los_longer,
               hcaes(x = period,
                     y = round(value),
                     group = period),
               enableMouseTracking = FALSE,
               marker = list(
                 #radius = 4,
                 symbol = "circle"),
               #label = list(
               #  enabled = TRUE),
               lineWidth = 9,
               zones = list(
                   c(value = 10,
                     color = "#5e4fa2"),
                   c(value = 10,
                     color = "#3288bd"),
                   c(value = 20,
                     color = "#66c2a5"),
                   c(value = 32,
                     color = "#abdda4"),
                   c(value = 40,
                     color = "#e6f598"),
                   c(value = 50,
                     color = "#ffffbf"),
                   c(value = 60,
                     color = "#fee08b"),
                   c(value = 70,
                     color = "#fdae61"),
                   c(value = 80,
                     color = "#f46d43"),
                   c(value = 90,
                     color = "#d53e4f"),
                   c(value = 200,
                     color = "#9e0142")),
               type = "line") %>%
  hc_add_series(his_los,
                enableMouseTracking = FALSE,
                hcaes(x = period,
                      y = round(max)),
                dataLabels = list(
                  enabled = TRUE,
                  align = "left",
                  verticalAlign = "middle"),
                zones = list(
                  c(value = 10,
                    color = "#5e4fa2"),
                  c(value = 10,
                    color = "#3288bd"),
                  c(value = 20,
                    color = "#66c2a5"),
                  c(value = 32,
                    color = "#abdda4"),
                  c(value = 40,
                    color = "#e6f598"),
                  c(value = 50,
                    color = "#ffffbf"),
                  c(value = 60,
                    color = "#fee08b"),
                  c(value = 70,
                    color = "#fdae61"),
                  c(value = 80,
                    color = "#f46d43"),
                  c(value = 90,
                    color = "#d53e4f"),
                  c(value = 200,
                    color = "#9e0142")),
                tooltip = list(
                  pointFormat = "Max: {point.max:.0f}°"),
                marker = list(
                  radius = 2,
                  symbol = "circle"),
                type = "scatter") %>%
  hc_add_series(his_los,
                enableMouseTracking = FALSE,
                hcaes(x = period,
                      y = round(min)),
                tooltip = list(
                  pointFormat = "Min: {point.min:.0f}°"),
                dataLabels = list(
                  enabled = TRUE,
                  align = "right",
                  verticalAlign = "middle"),
                marker = list(
                  radius = 2,
                  symbol = "circle"),
                zones = list(
                  c(value = 10,
                    color = "#5e4fa2"),
                  c(value = 10,
                    color = "#3288bd"),
                  c(value = 20,
                    color = "#66c2a5"),
                  c(value = 32,
                    color = "#abdda4"),
                  c(value = 40,
                    color = "#e6f598"),
                  c(value = 50,
                    color = "#ffffbf"),
                  c(value = 60,
                    color = "#fee08b"),
                  c(value = 70,
                    color = "#fdae61"),
                  c(value = 80,
                    color = "#f46d43"),
                  c(value = 90,
                    color = "#d53e4f"),
                  c(value = 200,
                    color = "#9e0142")),
                type = "scatter") %>%
  hc_chart(inverted = TRUE) %>%
  hc_yAxis(title = "",
           gridLineWidth = 0,
           labels = list(
             enabled = FALSE))%>%
  hc_xAxis(title = "",
           lineWidth = 0,
           categories = c(
             "All Records (since 1888)","Past Decade","Past Year",
             "Past Month","Past Week",
             "Yesterday","Today","Now","Next Week")) %>%
  hc_legend(enabled = FALSE) #%>%
  # hc_add_theme(
  #   hc_theme_bloom()
  # )
fig1
saveWidget(widget = fig1, file = "interactive/champaign_temp_comparison.html",
           selfcontained = FALSE,
           libdir = "interactive")


ggplot(data = temps,
       aes(x = period,
           y = temp)) +
  geom_hline(data = temps_past_hour, aes(yintercept = temp,
                                         color = temp)) +
  geom_line(data = temps,
            aes(color = temp),
            size = 4) +
  geom_text(data = his_los,
            aes(x = period,
                y = min,
                label = round(min)),
            nudge_y = -4) +
  geom_text(data = his_los,
            aes(x = period,
                y = max,
                label = round(max)),
            nudge_y = if_else( is.na(his_los$min),0, 4)) +
  geom_text(data = his_los,
            aes(x = period,
                y = if_else( is.na(min),max, (min+max)/2),
                label = period),
            #vjust =.5,
            angle = 90,
            size = 3,
            #nudge_y = 1,
            nudge_x = -.2,
            color = "grey60") +
  scale_x_discrete(limits = c(
    "All Records (since 1888)","Past Decade","Past Year",
    "Past Month","Past Week",
    "Yesterday","Today","Now","Next Week"),
    labels = NULL) +
  scale_color_distiller(palette = "Spectral",
                        guide = NULL) +
  theme_minimal() +
  scale_y_continuous(labels = NULL) +
  labs(x = NULL,
       y = NULL,
       caption = "Source: OpenWeather, MRCC, NWS") +
  theme(
    axis.text.x = element_text(angle = 90),
    plot.background = element_rect(fill = "white", color = "white"),
    panel.grid = element_blank(),
    plot.caption = element_text(color = "grey70")
  )

ggsave("plots/temp_history.png", bg = "white",
       width = 8, height = 8*(628/1200), dpi = 320)

ggplot(data = temps,
       aes(x = period,
           y = temp)) +
  geom_hline(data = temps_past_hour, aes(yintercept = temp,
                                         color = temp)) +
  geom_line(data = temps,
            aes(color = temp),
            size = 4) +
  geom_text(data = his_los,
            aes(x = period,
                y = min,
                label = round(min)),
            nudge_y = -4) +
  geom_text(data = his_los,
            aes(x = period,
                y = max,
                label = round(max)),
            nudge_y = if_else( is.na(his_los$min),0, 4)) +
  geom_text(data = his_los,
            aes(x = period,
                y = if_else( is.na(min),max, (min+max)/2),
                label = period),
            #vjust =.5,
            angle = 90,
            size = 2.75,
            #nudge_y = 1,
            nudge_x = -.35,
            color = "grey60") +
  scale_x_discrete(limits = c(
    "All Records (since 1888)","Past Decade","Past Year",
    "Past Month","Past Week",
    "Yesterday","Today","Now","Next Week"),
    labels = NULL) +
  scale_color_distiller(palette = "Spectral",
                        guide = NULL) +
  theme_minimal() +
  scale_y_continuous(labels = NULL) +
  labs(x = NULL,
       y = NULL,
       caption = "Source: OpenWeather, MRCC, NWS") +
  theme(
    axis.text.x = element_text(angle = 90),
    plot.background = element_rect(fill = "white", color = "white"),
    panel.grid = element_blank(),
    plot.caption = element_text(color = "grey70")
  )

ggsave("plots/temp_history_mobile.png", bg = "white",
       width = 4, height = 8*(628/1200), dpi = 320)

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

cat(
  "---
layout: page
title: Weather
permalink: /projects/weather
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign Forecast

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

",champaign_precip," in the past 24 hours

## Temperature Comparison

<picture>
  <source srcset=\"{{ site.baseurl }}/plots/temp_history.png\"
          media=\"(min-width: 750px)\">
  <img src=\"{{ site.baseurl }}/plots/temp_history_mobile.png\" alt=\"\" />
</picture>

## Severe Thunderstorm Outlook

",severe_weather_outlook_url,"

<p class=\"updated_time\">Source: <a href=\"https://www.spc.noaa.gov\">NOAA/NWS Storm Prediction Center</a>.</p> 

## Winter Storm Severity Index

",winter_storm_url,"

<p class=\"updated_time\">Source: <a href=\"https://www.wpc.ncep.noaa.gov/wwd/wssi/wssi.php\">NOAA/NWS Weather Prediction Center</a>.</p> 


",
file = "projects/weather.md",
sep = ""
)




