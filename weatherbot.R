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
#library(highcharter)
library(RColorBrewer)
#library(htmlwidgets)
library(rtoot)

champaign_lat <-  40.08408
champaign_lon <- -88.24039

# get data ----

# owm api setup ----
Sys.getenv("OWM_API_KEY")

# mastodon api setup ----
token <- Sys.getenv("RTOOT_DEFAULT_TOKEN")
verify_envvar(verbose = TRUE)

# nws api check ----
url <- "https://api.weather.gov/gridpoints/ILX/95,72/forecast/hourly"
nws_forecast <- GET(url,
                    add_headers(
                      "User-Agent" = "(bzigterman.com, ben@bzigterman.com)")
)
nws_status <- status_code(nws_forecast)

# owm ----
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
if (nws_status == 200) {
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
} else {
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
    filter(central_time > now(tzone = "America/Chicago")) 
}

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

## three-hour forecast ----
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



# isws ----
isws <- read_csv(file = "data/isws_precip.csv") 
# nws api ----
## forecast ----
if (nws_status == 200) {
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
}

## nws scraping ----
willard_url <- "https://w1.weather.gov/data/obhistory/KCMI.html"
willard_html <- read_html(willard_url) %>%
  html_table()
willard_clean <- willard_html[[4]] %>%
  tail(-2) %>%
  head(-3) %>%
  clean_names()
colnames(willard_clean)[2] <- "time"

willard <- willard_clean %>%
  mutate(date = as.numeric(date)) %>%
  mutate(visibility = as.numeric(vis_mi)) %>%
  mutate(temp = as.numeric(temperature_o_f)) %>%
  mutate(humidity = as.numeric(gsub("%", "", relative_humidity))) %>%
  mutate(precip_one_hour = as.numeric(precipitation_in)) %>%
  mutate(precip_three_hour = as.numeric(precipitation_in_2)) %>%
  mutate(precip_six_hour = as.numeric(precipitation_in_3)) %>%
  select(date,time,weather,temp, humidity, precip_one_hour)

latest_date <- willard$date[[1]]

willard <- willard %>%
  mutate(date = ymd_hm(paste0(year(today(tzone = "America/Chicago")),"-",
                              if_else(latest_date <= 3 & date >20,
                                      month(today(tzone = "America/Chicago"))-1,
                                      month(today(tzone = "America/Chicago"))),
                              "-",
                              date," ",
                              time),
                       tz = "US/Central")) %>%
  select(date,weather,temp, humidity, precip_one_hour)

champaign_rain <- sum(head(willard$precip_one_hour,24), na.rm = TRUE)
champaign_rain_text <- ifelse(champaign_rain > 0, 
                              paste0("- ",champaign_rain," inches of precipitation in the past 24 hours"),
                              "")

willard_data <- read_csv(file = "data/willard_weather.csv") 
willard_data_update <- full_join(willard,willard_data) %>%
  distinct(date, .keep_all = TRUE) %>%
  arrange(date)

willard_data_updated <- willard_data_update %>%
  replace(is.na(.), 0) %>%
  full_join(isws) %>%
  arrange(date)

# ## NCEI ----

# AQI ----
aqi_url <- paste0("https://www.airnowapi.org/aq/observation/latLong/current/?format=text/csv&latitude=",
                  champaign_lat,
                  "&longitude=",
                  champaign_lon
                  ,"&distance=25&API_KEY=",
                  Sys.getenv("AQI_API_KEY"))
aqi <- as_tibble(content(GET(aqi_url)))
aqi_text <- round(aqi$AQI)
aqi_color <- aqi %>% 
  mutate(color = case_when(
    CategoryNumber == 1 ~ "🟩",
    CategoryNumber == 2 ~ "🟨",
    CategoryNumber == 3 ~ "🟧",
    CategoryNumber == 4 ~ "🟥",
    CategoryNumber == 5 ~ "🟪",
    CategoryNumber == 6 ~ "🟫",
    CategoryNumber == 7 ~ "") 
  ) |> 
  mutate(aqi_plus_text = paste0(color, " ",
                                AQI, " AQI"))
champaign_aqi <- aqi_color$aqi_plus_text

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
champaign_clouds <- paste0(round(champaign_current$clouds),"%")

# temp data ----
weather_data <- tibble(utc_time = as_datetime(champaign_current$dt),
                       temp = champaign_current$temp)

# tidy data ----
if (nws_status == 200) {
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
} else {
  champaign_forecast_tidy <- champaign_forecast %>%
    mutate(datetime = as_datetime(dt_txt)) %>%
    mutate(utc_time = force_tz(datetime, tz = "UTC")) %>%
    mutate(central_time = with_tz(utc_time, tzone = "America/Chicago")) %>%
    mutate(rain = {if("rain.3h" %in% names(.)) ifelse(is.na(rain.3h),
                                                      0,rain.3h/3) else 0}) %>%
    mutate(snow = {if("snow.3h" %in% names(.)) ifelse(is.na(snow.3h),
                                                      0,snow.3h/3) else 0}) %>%
    filter(central_time > now(tzone = "America/Chicago")+days(2)) 
}

if (nws_status == 200) {
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
} else {
  champaign_history_and_forecast <- full_join(champaign_forecast_tidy,last_24) %>%
    full_join(champaign_hourly) %>%
    select(central_time, temp, humidity,
           wind_speed, clouds,
           pop, rain, snow, sunrise, sunset) %>%
    arrange(central_time) %>%
    #select(!tz) %>%
    group_by(central_time) %>%
    summarize(across(everything(), ~ first(na.omit(.)))) 
}

five_days <- champaign_history_and_forecast %>%
  filter(central_time < now(tzone = "America/Chicago") + days(5)) %>%
  filter(central_time > now(tzone = "America/Chicago")) %>%
  na_interpolation()
last_two <- champaign_history_and_forecast %>%
  filter(central_time > now(tzone = "America/Chicago") + days(5))

all_days <- full_join(five_days, last_two) %>%
  full_join(last_24) %>%
  select(central_time,temp,
         pop, rain,wind_speed, snow, sunrise, sunset) 

remove_no_precip <- all_days %>%
  select(central_time,temp,wind_speed,
         pop, rain, snow, sunrise, sunset)  %>%
  select(where(~ is.numeric(.) && any(sum(., na.rm = TRUE) !=0))) %>%
  mutate(central_time = all_days$central_time)

champaign_forecast_longer <- all_days %>%
  select(central_time, sunrise, sunset) %>%
  full_join(remove_no_precip) %>%
  mutate(pop = 100*pop) %>%
  pivot_longer(cols = !c(central_time, sunrise, sunset),
               names_to = "names",
               values_to = "values") %>%
  select(central_time, sunrise, sunset,names,values) %>%
  mutate(names = recode_factor(names, 
                               "temp"       = "°F",
                               "pop"        = "Precip%",
                               "rain"       = "Rain",
                               "snow"       = "Snow",
                               "wind_speed" = "Wind"))

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
p <- ggplot() +
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
p

# save to a temp file
file <- tempfile( fileext = ".png")
ggsave( file, plot = p, device = "png", dpi = 320, 
        width = 2.5, height = 3.1)
# ggsave("plots/champaign_weather_post.png", bg = "white",
#        width = 2.5, height = 3.1, dpi = 320)

# radar
radar <- "https://radar.weather.gov/ridge/standard/KILX_loop.gif"
radar_img <- tempfile( fileext = "gif")
download.file(url = radar, destfile = radar_img)

# text ----
now <- as_datetime(now())
now_formatted <- strftime(x = now, 
                          tz = "US/Central",
                          format = "%I:%M% %p")

text <- paste0(
  "Champaign weather at ",now_formatted,":

- ",champaign_temp,"F
- ",champaign_desc,"
- ",champaign_humidity," humidity
- ",champaign_wind_speed," wind
- ",champaign_clouds," cloud cover
- ",champaign_aqi,"
",champaign_rain_text,"

More charts: https://bzigterman.com/projects/weather")
text

if (rainfall >= 0 && 
    snowfall >= 0 && 
    champaign_current$humidity >= 0 && 
    champaign_current$humidity <= 100 && 
    champaign_current$temp >= -50 &&
    champaign_current$temp <= 150 &&
    champaign_current$wind_speed >= 0 
) {
  post_toot(
    status   = text,
    media    = if_else(
      champaign_current$weather$id >= 200 &&
        champaign_current$weather$id < 700,
      radar_img, file),
    alt_text = if_else(
      champaign_current$weather$id >= 200 &&
        champaign_current$weather$id < 700,
      "GIF of the radar for Illinois",
      "Line chart with today's weather forecast for Champaign, Illinois"))
}




