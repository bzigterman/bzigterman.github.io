library(tidyverse)
library(readr)
library(lubridate)
library(scales)
library(httr)
library(rvest)
library(janitor)
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



# isws scraping ----
download_month <- function(month_number,year_number) {
  url <- paste0("https://www.isws.illinois.edu/statecli/urbana/urbana-monthly-",year_number,"_files/sheet0",
                month_number,".htm")
  isws_html <- read_html(url)%>%
    html_table()
  data <- isws_html[[1]] %>%
    tail(-8) %>%
    row_to_names(row_number = 1) %>%
    clean_names() %>%
    mutate(day = as.numeric(day)) %>%
    filter(!is.na(day)) %>%
    mutate(precip_one_hour = as.numeric(precipitation)) %>%
    mutate(date = ymd(paste0(year_number,"-",month_number,"-",day))) %>%
    select(date,precip_one_hour) %>%
    replace(is.na(.), 0)
}
isws <- read_csv(file = "data/isws_precip.csv") 
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


## nws scraping ----

willard_url <- "https://w1.weather.gov/data/obhistory/KCMI.html"
willard_html <- read_html(willard_url) %>%
  html_table()
willard <- willard_html[[4]] %>%
  tail(-2) %>%
  head(-3) %>%
  clean_names() %>%
  mutate(date = as.numeric(date)) %>%
  mutate(visibility = as.numeric(vis_mi)) %>%
  mutate(temp = as.numeric(temperature_o_f)) %>%
  mutate(humidity = as.numeric(gsub("%", "", relative_humidity))) %>%
  mutate(precip_one_hour = as.numeric(precipitation_in)) %>%
  mutate(precip_three_hour = as.numeric(precipitation_in_2)) %>%
  mutate(precip_six_hour = as.numeric(precipitation_in_3)) %>%
  select(date,time_cdt,weather,temp, humidity, precip_one_hour)

latest_date <- willard$date[[1]]

willard <- willard %>%
  mutate(date = ymd_hm(paste0(year(today(tzone = "America/Chicago")),"-",
                              ifelse(latest_date <= 3 && date >20,
                                     month(today(tzone = "America/Chicago"))-1,
                                     month(today(tzone = "America/Chicago"))),
                              "-",
                              date," ",
                              time_cdt),
                       tz = "US/Central")) %>%
  select(date,weather,temp, humidity, precip_one_hour)

champaign_rain <- sum(head(willard$precip_one_hour,24), na.rm = TRUE)
champaign_rain_text <- ifelse(champaign_rain > 0, 
                              paste0("- ",champaign_rain," inches of precipitation in the past 24 hours"),
                              "")

willard_data <- read_csv(file = "data/willard_weather.csv") 
willard_data_update <- full_join(willard,willard_data) %>%
  unique() %>%
  arrange(date)

write_csv(x = willard_data_update,
          file = "data/willard_weather.csv")

willard_data_updated <- willard_data_update %>%
  replace(is.na(.), 0) %>%
  full_join(isws) %>%
  arrange(date)

## NCEI ----
# earliest <- "1902-08-01"
# latest <- as.character(ymd(today(tzone = "America/Chicago")))
# url = paste0("https://www.ncei.noaa.gov/access/services/data/v1?dataset=daily-summaries&dataTypes=PRCP,TMAX,TMIN&stations=USC00118740&startDate=",earliest,"&endDate=",latest,"&units=standard")
# ncei <- content(GET(url))


## historical ----
# url <- "https://api.weather.gov/stations/KCMI/observations/latest"
# nws_past <- GET(url,
#                     add_headers(
#                       "User-Agent" = "(bzigterman.com, ben@bzigterman.com)")
# )
# nws_past <- content(nws_past, as = "text")
# nws_past <- st_read(nws_past)
# nws_past <- jsonlite::parse_json(nws_past$temperature)


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

# temp comparison chart ----
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


# almanac ----

# record_min, record_max, today_current, today_min, today_max, normal_min, normal_max
today_temp_history <- temp_history %>%
  select(temp, central_time) %>%
  filter(month(central_time) == month(today(tzone = "America/Chicago"))) %>%
  filter(mday(central_time) == mday(today(tzone = "America/Chicago"))) %>%
  mutate(date = ymd(as_date(central_time)))

record_maxs <- temp_history %>%
  mutate(date = date(central_time)) %>%
  mutate(month = month(date)) %>%
  mutate(day = day(date)) %>%
  group_by(month, day) %>%
  summarise(Record_max = max(temp)) %>%
  ungroup() %>%
  mutate(date = paste0(year(today(tzone = "America/Chicago")),"-",month,"-",day)) %>%
  filter(date != paste0(year(today(tzone = "America/Chicago")),"-2-29")) %>%
  mutate(date = ymd(date)) %>%
  select(date, Record_max)

record_mins <- temp_history %>%
  mutate(date = date(central_time)) %>%
  mutate(month = month(date)) %>%
  mutate(day = day(date)) %>%
  group_by(month, day) %>%
  summarise(Record_min = min(temp)) %>%
  ungroup() %>%
  mutate(date = paste0(year(today(tzone = "America/Chicago")),"-",month,"-",day)) %>%
  filter(date != paste0(year(today(tzone = "America/Chicago")),"-2-29")) %>%
  mutate(date = ymd(date)) %>%
  select(date, Record_min)

records <- full_join(record_maxs,record_mins)

record_range <- today_temp_history %>%
  select(temp) %>%
  mutate(period = "Record (since 1888)") 

seq <- seq(from = min(record_range$temp), to = max(record_range$temp),
           length.out = 100)
records_range <- tibble(period = "Record (since 1888)",
                        temp = seq)

normal_daily_precip_prep <- read_csv("data/normal_precip.csv") %>%
  clean_names() %>%
  select(date,mly_prcp_normal) %>%
  mutate(date = ymd(paste0(year(today(tzone = "America/Chicago")),
                           "-",date,"-01"))) %>%
  mutate(normal_daily_precip = mly_prcp_normal) %>%
  select(date, normal_daily_precip) 
normal_daily_precip <- read_csv("data/normals_willard.csv") %>%
  clean_names() %>%
  select(date) %>%
  filter(date != "02-29") %>%
  mutate(date = ymd(paste0(year(today(tzone = "America/Chicago")),
                           "-",date))) %>%
  full_join(normal_daily_precip_prep) %>%
  fill(normal_daily_precip, .direction = "down") %>%
  mutate(month = month(date))
df_new <- as.data.frame(lapply(normal_daily_precip, as.character), stringsAsFactors = FALSE)
df_new_monthly_precip <- head(do.call(rbind, by(df_new, normal_daily_precip$month, rbind, "")), -1 ) %>%
  mutate(date = ymd(date)) %>%
  mutate(normal_daily_precip = as.numeric(normal_daily_precip)) %>%
  select(date,normal_daily_precip)

normal_monthly_precip <- read_csv("data/normals_willard.csv") %>%
  clean_names() %>%
  select(date,mtd_prcp_normal) %>%
  filter(date != "02-29") %>%
  mutate(date = ymd(paste0(year(today(tzone = "America/Chicago")),
                           "-",date))) %>%
  mutate(normal_monthly_precip = mtd_prcp_normal) %>%
  select(date, normal_monthly_precip) %>%
  mutate(month = month(date))
df_new <- as.data.frame(lapply(normal_monthly_precip, as.character), stringsAsFactors = FALSE)
df_newer <- head(do.call(rbind, by(df_new, normal_monthly_precip$month, rbind, "")), -1 ) %>%
  mutate(date = ymd(date)) %>%
  mutate(normal_monthly_precip = as.numeric(normal_monthly_precip)) %>%
  select(date,normal_monthly_precip)


normals <- read_csv("data/normals.csv") %>%
  filter(date != "02-29") %>%
  mutate(date = ymd(paste0(year(today(tzone = "America/Chicago")),
                           "-",date))) %>%
  select(date, min, max) %>%
  mutate(Normal_min = min) %>%
  mutate(Normal_max = max) %>%
  select(date,Normal_min,Normal_max) 

normals_today <- normals %>%
  filter(month(date) == month(today(tzone = "America/Chicago"))) %>%
  filter(mday(date) == mday(today(tzone = "America/Chicago"))) 

normals_longer <- normals_today %>%
  pivot_longer(cols = c(Normal_min,Normal_max))

seq <- seq(from = min(normals_longer$value), to = max(normals_longer$value),
           length.out = 100)
normals_range <- tibble(period = "Normal (1991–2020)",
                        temp = seq)

temps_past_eleven_months <- temps_past_year %>%
  filter(central_time > now(tzone = "America/Chicago")-weeks(48)) %>%
  mutate(period = "Past 11 Months") %>%
  select(temp, period, central_time)

daily_maxs <- temps_past_eleven_months %>%
  mutate(date = date(central_time)) %>%
  mutate(month = month(date)) %>%
  mutate(day = day(date)) %>%
  group_by(month, day) %>%
  summarise(Actual_max = max(temp)) %>%
  ungroup() %>%
  mutate(date = paste0(year(today(tzone = "America/Chicago")),"-",month,"-",day)) %>%
  filter(date != paste0(year(today(tzone = "America/Chicago")),"-2-29")) %>%
  mutate(date = ymd(date)) %>%
  select(date, Actual_max)

daily_mins <- temps_past_eleven_months %>%
  mutate(date = date(central_time)) %>%
  mutate(month = month(date)) %>%
  mutate(day = day(date)) %>%
  group_by(month, day) %>%
  summarise(Actual_min = min(temp)) %>%
  ungroup() %>%
  mutate(date = paste0(year(today(tzone = "America/Chicago")),"-",month,"-",day)) %>%
  filter(date != paste0(year(today(tzone = "America/Chicago")),"-2-29")) %>%
  mutate(date = ymd(date)) %>%
  select(date, Actual_min)

dailies <- full_join(daily_maxs,daily_mins)

eleven_months_ago <- ceiling_date(now(tzone = "America/Chicago")-weeks(48),"month")

monthly_rain <- willard_data_updated %>%
  select(date, precip_one_hour) %>%
  filter(date > eleven_months_ago) %>%
  mutate(year = year(date)) %>%
  mutate(month = month(date)) %>%
  mutate(day = day(date)) %>%
  group_by(year, month, day) %>%
  summarise(daily_precip_total = sum(precip_one_hour,na.rm = TRUE)) %>%
  ungroup() %>%
  mutate(date = ymd(paste0(year,"-",month,"-",day),tz = "US/Central")) %>%
  select(date,year, month, daily_precip_total) %>%
  group_by(year,month) %>%
  mutate(month_precip_sum = cumsum(daily_precip_total)) %>%
  ungroup() %>%
  select(date,daily_precip_total,month_precip_sum) %>%
  mutate(date = paste0(year(today(tzone = "America/Chicago")),"-",month(date),"-",day(date))) %>%
  filter(date != paste0(year(today(tzone = "America/Chicago")),"-2-29")) %>%
  mutate(date = ymd(date,tz = "US/Central")) %>%
  select(date,daily_precip_total,month_precip_sum)

today_rain <- full_join(normal_monthly_precip, monthly_rain) %>%
  filter(date == today(tzone = "America/Chicago")) %>%
  mutate("MTD Normal" = normal_monthly_precip) %>%
  mutate("MTD Actual" = month_precip_sum) %>%
  mutate("Daily" = daily_precip_total) %>%
  mutate(date = as.Date(date), tz = "US/Central") %>%
  select(date, "MTD Normal","MTD Actual","Daily") %>%
  pivot_longer(!date)

current_temp <- temps_past_hour %>%
  mutate(date = date(central_time)) %>%
  mutate(Now = temp) %>%
  select(date,Now)

year_weather_data <- full_join(records, normals) %>%
  full_join(dailies) %>%
  full_join(monthly_rain) %>%
  mutate(date = ymd(date)) 

year_precip <- year_weather_data %>%
  select(date, daily_precip_total,month_precip_sum) %>%
  mutate(month = month(date))
df_new <- as.data.frame(lapply(year_precip, as.character), stringsAsFactors = FALSE)
df_new_precip <- head(do.call(rbind, by(df_new, year_precip$month, rbind, "")), -1 ) %>%
  mutate(date = ymd(date)) %>%
  mutate(daily_precip_total = as.numeric(daily_precip_total)) %>%
  mutate(month_precip_sum = as.numeric(month_precip_sum)) %>%
  select(date,daily_precip_total,month_precip_sum)


record_his <- year_weather_data %>%
  mutate(records = case_when(
    round(Record_max) == round(Actual_max) ~ "Record high",
    round(Record_min) == round(Actual_min) ~ "Record low",
    TRUE ~ "")) %>%
  filter(records == "Record high") %>%
  select(date,Record_max)
record_los <- year_weather_data %>%
  mutate(records = case_when(
    round(Record_max) == round(Actual_max) ~ "Record high",
    round(Record_min) == round(Actual_min) ~ "Record low",
    TRUE ~ "")) %>%
  filter(records == "Record low")%>%
  select(date,Record_min)

year_weather_data_longer <- year_weather_data %>%
  pivot_longer(!c(date,daily_precip_total,month_precip_sum),
               names_to = c("type","min_max"),
               names_sep = "_") %>%
  pivot_wider(names_from = min_max,
              values_from = value) %>%
  select(date,type, max, min)
year_weather_data_longer$type <- factor(year_weather_data_longer$type, level = c("Record","Normal","Actual"))
today_weather_data <- year_weather_data %>%
  mutate("Record high" = Record_max) %>%
  mutate("Record low"  = Record_min) %>%
  mutate("Normal high" = Normal_max) %>%
  mutate("Normal low"  = Normal_min) %>%
  mutate("Actual high" = Actual_max) %>%
  mutate("Actual low"  = Actual_min) %>%
  select(date,"Record high","Record low","Normal high",
         "Normal low","Actual high","Actual low") %>%
  filter(date == today(tzone = "America/Chicago"))
today_weather_data_longer <- today_weather_data %>%
  pivot_longer(!date)

## weather year plot ----
fig <- hchart(year_weather_data_longer, "arearange", 
              hcaes(x = date,
                    low = round(min),
                    high = round(max),
                    group = type),
              step = "center",
              animation = FALSE,
              marker = list(
                radius = 1),
              lineWidth = 0,
              fillOpacity = 1,
              tooltip = list(valueSuffix = "°"),
              yAxis = 0) %>%
  hc_yAxis_multiples(create_axis(naxis = 2, 
                                 heights = c(5,1),
                                 title = list(text = NULL))) %>%
  hc_add_series(
    data = today_weather_data_longer,
    hcaes(x = date,
          y = round(value),
          group = name),
    type = "scatter",
    animation = FALSE,
    enableMouseTracking = FALSE,
    marker = list(
      enabled = FALSE),
    dataLabels = list(
      enabled = TRUE,
      align = "left",
      verticalAlign = "middle",
      allowOverlap = TRUE,
      format = "{point.y}°: {series.name}"
    ),
    yAxis = 0
  ) %>%
  hc_add_series(
    data = today_rain,
    hcaes(x = date,
          y = value,
          group = name),
    type = "scatter",
    animation = FALSE,
    enableMouseTracking = FALSE,
    marker = list(
      enabled = FALSE),
    dataLabels = list(
      enabled = TRUE,
      align = "left",
      verticalAlign = "bottom",
      allowOverlap = TRUE,
      format = "{point.y}″: {series.name}"
    ),
    yAxis = 1
  ) %>%
  hc_add_series(
    data = record_his,
    hcaes(x = date,
          y = round(Record_max)),
    type = "scatter",
    enableMouseTracking = FALSE,
    animation = FALSE,
    marker = list(
      enabled = TRUE,
      fillColor = "goldenrod",
      radius = 3,
      symbol = "triangle"),
    yAxis = 0
  ) %>%
  hc_add_series(
    data = record_los,
    hcaes(x = date,
          y = round(Record_min)),
    type = "scatter",
    enableMouseTracking = FALSE,
    animation = FALSE,
    marker = list(
      enabled = TRUE,
      fillColor = "goldenrod",
      radius = 3,
      symbol = "triangle-down"),
    yAxis = 0
  ) %>%
  hc_add_series(data = df_newer,
                hcaes(x = date,
                      y = normal_monthly_precip),
                type = "area",
                lineWidth = 1,
                marker = list(
                  radius = 1,
                  symbol = "circle"),
                name = "MTD Normal",
                animation = FALSE,
                tooltip = list(valueSuffix = "{value}″"),
                step = "center",
                fillOpacity = .1,
                color = "#698490",
                yAxis = 1) %>%
  hc_add_series(data = df_new_precip,
                hcaes(x = date,
                      y = month_precip_sum),
                type = "area",
                marker = list(
                  radius = 1,
                  symbol = "circle"),
                animation = FALSE,
                lineWidth = 1,
                step = "center",
                name = "MTD Actual",
                tooltip = list(valueSuffix = "{value}″"),
                color = "#b0dcf0",
                yAxis = 1) %>%
  hc_add_series(data = df_new_monthly_precip,
                hcaes(x = date,
                      y = normal_daily_precip),
                type = "line",
                marker = list(
                  radius = 1,
                  symbol = "circle"),
                animation = FALSE,
                lineWidth = 1,
                step = "center",
                name = "Monthly Avg.",
                tooltip = list(valueSuffix = "{value}″"),
                color = "#698490",
                yAxis = 1) %>%
  hc_add_series(data = df_new_precip,
                hcaes(x = date,
                      y = daily_precip_total),
                type = "column",
                name = "Daily",
                animation = FALSE,
                tooltip = list(valueSuffix = "{value}″"),
                color = "#698490",
                yAxis = 1) %>%
  hc_xAxis(
    title = "",
    showLastLabel = FALSE,
    labels = list(
      format = "{value:%b}"),
    plotLines = list(
      list(
        label = list(text = "Today"),
        color = "gray",
        width = 1,
        value = datetime_to_timestamp(ymd(today(tzone = "America/Chicago"))),
        zIndex = 1
      )
    )
  ) %>%
  hc_legend(enabled = FALSE) %>%
  hc_colors(c("#e9e8df","#c2afb1","#a6003f")) %>%
  hc_tooltip(shared = TRUE,
             xDateFormat = "%B %e") %>%
  hc_credits(
    enabled = TRUE,
    text = "Source: OpenWeather, MRCC, NWS",
    href = "https://bzigterman.com/interactive/champaign_weather_year.html") %>%
  hc_add_theme(
    hc_theme_bloom()
  )
fig
saveWidget(widget = fig, file = "interactive/champaign_weather_year.html",
           selfcontained = FALSE,
           libdir = "interactive")

p <- ggplot(year_weather_data, aes(x = date)) +
  geom_segment(aes(xend = date,
                   y = Record_min,
                   yend = Record_max),
               color = "#e9e8df",
               size = .75) +
  geom_segment(aes(xend = date,
                   y = Normal_min,
                   yend = Normal_max),
               color = "#c2afb1",
               size = .75) +
  geom_segment(aes(xend = date,
                   y = Actual_min,
                   yend = Actual_max),
               color = "#a6003f",
               size = .75) +
  scale_x_date(date_labels = "%b",
               expand = c(0.01,0.01),
               name = NULL,
               date_breaks = "1 month") +
  scale_y_continuous(name = NULL) +
  theme_minimal() +
  theme(
    panel.grid.minor = element_blank(),
    panel.grid.major.x = element_line(color = "gray80",
                                      linetype = "dashed"),
    panel.grid.major.y = element_line(color = "gray93")
  )
p
ggsave("plots/champaign_weather_year.png", bg = "white",
       width = 8, height = 8*(628/1200), dpi = 320)

ggsave("plots/champaign_weather_year_mobile.png", bg = "white",
       width = 4, height = 8*(628/1200), dpi = 320)

temps <- full_join(records_range,normals_range) %>%
  full_join(temps_today) %>%
  full_join(temps_past_hour) %>%
  select(period, temp)

almanac_data <- tibble(period = c("Record (since 1888)","Normal (1991–2020)",
                                  "Today","Now"),
                       min = c(min(today_temp_history$temp),
                               normals_today$Normal_min,
                               min(temps_today$temp),
                               as.numeric("NA")),
                       max = c(max(today_temp_history$temp),
                               normals_today$Normal_max,
                               max(temps_today$temp),
                               max(temps_past_hour$temp)))

almanac_longer <- pivot_longer(almanac_data,
                               cols = c(min,max)) %>%
  mutate(period = recode_factor(period, 
                                "current"      = "Current",
                                "today"        = "Today",
                                "normal"       = "Normal (1991–2020)",
                                "record"       = "Record (since 1888)"))

# ggplot(almanac_longer, aes(x = 1,
#                            y = value,
#                            size = period,
#                            color = period)) +
#   geom_line(data = filter(almanac_longer, period != "Current"),
#                           alpha = .5) +
#   scale_size_manual(values = c(6,3,1.5)) +
#   scale_color_manual(values = c("purple","black","yellow")) +
#   geom_point(data = filter(almanac_longer, period == "Current"),
#              color = "red",
#              size = 5) +
#   theme_minimal() +
#   theme(
#     legend.title = element_blank(),
#     plot.background = element_rect(fill = "white", color = "white"),
#     panel.grid = element_blank(),
#     plot.caption = element_text(color = "grey70")
#   )

## plot----
p <- ggplot(data = temps,
            aes(x = period,
                y = temp)) +
  geom_hline(data = temps_past_hour, aes(yintercept = temp,
                                         color = temp)) +
  geom_line(data = temps,
            aes(color = temp),
            size = 4) +
  geom_text(data = almanac_data,
            aes(x = period,
                y = min,
                label = round(min)),
            nudge_y = -2) +
  geom_text(data = almanac_data,
            aes(x = period,
                y = max,
                label = round(max)),
            nudge_y = if_else( is.na(almanac_data$min),0, 2)) +
  geom_text(data = almanac_data,
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
    "Now",
    "Today",
    "Normal (1991–2020)",
    "Record (since 1888)"),
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
p
ggsave("plots/champaign_almanac_mobile.png", bg = "white",
       width = 4, height = 8*(628/1200), dpi = 320)

p +
  theme(
    plot.margin = margin(0,180,0,180)
  )

ggsave("plots/champaign_almanac.png", bg = "white",
       width = 8, height = 8*(628/1200), dpi = 320)


# geom_segment(data = filter(almanac_data, type == "record"), 
#              aes(y = min, yend = max)) +
#   geom_segment(data = filter(almanac_data, type == "today"), 
#                aes(y = min, yend = max)) +
#   geom_segment(data = filter(almanac_data, type == "normal"), 
#                aes(y = min, yend = max),
#                color = ) 


# p <- ggplot(almanac_longer, aes(x = type, y = value, label = round(value),
#                                 color = value)) +
#   geom_hline(data = temps_past_hour, aes(yintercept = temp,
#                                          color = temp)) +
#   geom_line(size = 2) +
#   geom_text(nudge_x = .2) +
#   theme_minimal() +
#   scale_color_distiller(palette = "Spectral",
#                         guide = NULL) +
#   scale_y_continuous(labels = NULL) +
#   labs(x = NULL,
#        y = NULL,
#        caption = "Source: OpenWeather, MRCC, NWS") +
#   theme(
#     legend.title = element_blank(),
#     plot.background = element_rect(fill = "white", color = "white"),
#     panel.grid = element_blank(),
#     plot.caption = element_text(color = "grey70")
#   )
# p
# 
# ggsave("plots/champaign_almanac_mobile.png", bg = "white",
#        width = 5, height = 8, dpi = 320)
# 
# p +
#   theme(
#     plot.margin = margin(0,180,0,180)
#   )
# 
# ggsave("plots/champaign_almanac.png", bg = "white",
#        width = 8, height = 8*(628/1200), dpi = 320)


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

today <- strftime(x = now, 
                  tz = "US/Central",
                  format = "%B %d")

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
",champaign_rain_text,"

## Temperature History

<iframe src=\"/interactive/champaign_weather_year.html\" width=\"100%\" height=\"600\"> 
</iframe>

The chart above is my attempt at recreating the classic [*New York Times* weather chart](https://www.nytimes.com/interactive/2016/02/18/upshot/the-times-classic-weather-chart-now-online-with-3000-cities.html), which was [highlighted by Ed Tufte](https://www.edwardtufte.com/bboard/q-and-a-fetch-msg?msg_id=00014g) in his book *The Visual Display of Quantitative Information*.

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




