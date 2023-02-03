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

# get data ----

# pirate api ----
Sys.getenv("PIRATE_WEATHER")

pirate_url <- paste0("https://api.pirateweather.net/forecast/",
                     Sys.getenv("PIRATE_WEATHER"),"/",
                     champaign_lat,",",champaign_lon,
                     "?exclude=minutely,alerts&extend=hourly")
pirate_forecast <- GET(pirate_url)
pirate_status <- status_code(pirate_forecast)
pirate_status
pirate_forecast_content <- content(pirate_forecast)
pirate_currently <- pirate_forecast_content$currently
pirate_hourly <- pirate_forecast_content$hourly$data %>%
  map(as_tibble) %>%
  reduce(bind_rows) |> 
  mutate(datetime = as_datetime(time, tz = "America/Chicago")) |> 
  filter(datetime >= now(tzone = "America/Chicago"))
pirate_daily <- pirate_forecast_content$daily$data %>%
  map(as_tibble) %>%
  reduce(bind_rows) |> 
  mutate(datetime = as_datetime(time, tz = "America/Chicago")) |> 
  filter(datetime >= now(tzone = "America/Chicago"))

## nws historical ----
url <- "https://api.weather.gov/stations/KCMI/observations"
nws_past <- GET(url,
                add_headers(
                  "User-Agent" = "(bzigterman.com, ben@bzigterman.com)")
)
nws_past_content <- content(nws_past, as = "text")
nws_past_st <- st_read(nws_past_content,
                       as_tibble = TRUE)
nws_post <- nws_past_st |> 
  as_tibble() |> 
  select(timestamp,textDescription,temperature,windSpeed,
         precipitationLastHour,relativeHumidity) |> 
  mutate(timestamp = as_datetime(timestamp, tz = "America/Chicago")) |> 
  mutate(temperature = 
           32+((9/5)*parse_number(temperature))) |> 
  mutate(windSpeed = parse_number(gsub("km_h-1","",windSpeed))/1.609344) |> 
  mutate(precipAccumulation = parse_number(precipitationLastHour)*25.4) |> 
  mutate(humidity = parse_number(relativeHumidity)/100) |> 
  mutate(time = as.numeric ( timestamp)) |> 
  mutate(precipType = "Precip.") |> 
  select(timestamp,time,textDescription,temperature,windSpeed,
         precipAccumulation,humidity, precipType)

## nws scraping ----
willard_url <- "https://w1.weather.gov/data/obhistory/KCMI.html"
willard_html <- read_html(willard_url) %>%
  html_table()
willard_clean <- willard_html[[4]] %>%
  tail(-2) %>%
  head(-3) %>%
  clean_names()
colnames(willard_clean)[2] <- "time"

willard_cleaner <- willard_clean %>%
  mutate(date = as.numeric(date)) %>%
  mutate(visibility = as.numeric(vis_mi)) %>%
  mutate(temp = as.numeric(temperature_o_f)) %>%
  mutate(windSpeed = parse_number(wind_mph)) |> 
  mutate(humidity = as.numeric(gsub("%", "", relative_humidity))) %>%
  mutate(precip_one_hour = as.numeric(precipitation_in)) %>%
  mutate(precip_three_hour = as.numeric(precipitation_in_2)) %>%
  mutate(precip_six_hour = as.numeric(precipitation_in_3)) %>%
  select(date,time,windSpeed,weather,temp, humidity, precip_one_hour)

willard <- willard_cleaner %>%
  mutate(datetime = as_datetime(now(tzone = "America/Chicago")-hours(row_number()),
                                tz = "America/Chicago")) |> 
  mutate(temperature = temp) |> 
  mutate(precipAccumulation = precip_one_hour) |> 
  mutate(precipAccumulation = if_else(is.na(precipAccumulation),
                                      0,
                                      precipAccumulation)) |> 
  mutate(time = as.numeric(datetime)) |> 
  mutate(precipType = "Precip.") |>
  mutate(humidity = humidity/100) |> 
  select(time,precipType,datetime,weather,temperature, humidity, precipAccumulation,windSpeed)


# willard_his_los <- willard_clean %>%
#   mutate(temp_six_hour_hi = as.numeric(temperature_o_f_3)) %>%
#   mutate(temp_six_hour_lo = as.numeric(temperature_o_f_4)) %>%
#   mutate(date = as.numeric(date)) %>%
#   mutate(date = ymd_hm(paste0(year(today(tzone = "America/Chicago")),"-",
#                               if_else(latest_date <= 3 & date >20,
#                                       month(today(tzone = "America/Chicago"))-1,
#                                       month(today(tzone = "America/Chicago"))),
#                               "-",
#                               date," ",
#                               time),
#                        tz = "US/Central")) %>%
#   select(date,temp_six_hour_hi,temp_six_hour_lo) %>%
#   mutate(day = date(date)) %>%
#   group_by(day) |> 
#   summarise(temp_six_hour_hi)


champaign_rain <- 
  sum(filter(willard,time > now(tzone = "America/Chicago")-days(1))$precipAccumulation, na.rm = TRUE)
champaign_rain_text <- ifelse(champaign_rain > 0, 
                              paste0("- ",champaign_rain," inches of precipitation in the past 24 hours\n"),
                              "")

# champaign_rain <- sum(
#   filter(nws_post,
#          time > now(tzone = "America/Chicago")-days(1))$precipAccumulation, 
#   na.rm = TRUE)
# champaign_rain_text <- ifelse(champaign_rain > 0, 
#                               paste0("- ",champaign_rain," inches of precipitation in the past 24 hours\n"),
#                               "")

willard_data <- read_csv(file = "data/willard_weather.csv") 
willard_data_update <- willard |> 
  select(datetime,weather,temperature, humidity, precipAccumulation) |> 
  mutate(temp = temperature) |> 
  mutate(precip_one_hour = precipAccumulation) |> 
  mutate(date = datetime) |> 
  mutate(humidity = humidity*100) |> 
  full_join(willard_data) %>%
  distinct(date, .keep_all = TRUE) %>%
  arrange(date)

write_csv(x = willard_data_update,
          file = "data/willard_weather.csv")

## pirate historical ----
pirate_history_url <- paste0("https://api.pirateweather.net/forecast/",
                             Sys.getenv("PIRATE_WEATHER"),"/",
                             champaign_lat,",",champaign_lon,
                             ",-86400?exclude=minutely,alerts")
pirate_history <- GET(pirate_history_url)
pirate_history_status <- status_code(pirate_history)
pirate_history_status
pirate_history_content <- content(pirate_history)
pirate_history_hourly <-  pirate_history_content$hourly$data %>%
  map(as_tibble) %>%
  reduce(bind_rows) |>
  mutate(datetime = as_datetime(time, tz = "America/Chicago")) %>%
  filter(datetime < now(tzone = "America/Chicago"))
pirate_history_daily <- pirate_history_content$daily$data %>%
  map(as_tibble) %>%
  reduce(bind_rows) |> 
  mutate(datetime = as_datetime(time, tz = "America/Chicago")) 

pirate_daylight <- full_join(pirate_daily,pirate_history_daily) %>%
  select(sunriseTime, sunsetTime) %>%
  unique() %>%
  mutate(top = Inf) %>%
  mutate(bottom = -Inf) %>%
  mutate(sunrise = as_datetime(sunriseTime, tz = "America/Chicago")) %>%
  mutate(sunset = as_datetime(sunsetTime, tz = "America/Chicago")) |> 
  arrange(sunriseTime)

pirate_champaign <- full_join(pirate_hourly,willard) |> 
  mutate(precipProbability = 100*precipProbability) |> 
  mutate(humidity = round(100*humidity)) |> 
  mutate(cloudCover = 100*cloudCover) |> 
  mutate(precipType = case_when(
    precipType == "none" ~ "Precip.",
    precipType == "Precip." ~ "Precip.",
    precipType == "rain" ~ "Rain",
    precipType == "snow" ~ "Snow")) |>
  mutate(precipType = recode_factor(
    precipType,
    "Rain" = "Rain",
    "Snow" = "Snow",
    "Precip" = "Precip",
    .ordered = TRUE
  )) |> 
  arrange(time) |> 
  filter(time > now(tzone = "America/Chicago")-days(1)) 
pirate_precipTypes <- pirate_champaign |> 
  select(precipType) |> 
  sapply(levels) 
pirate_precipTypes
pirate_precip_colors <- 
  case_when(
    pirate_precipTypes[[1]] == "Snow" && pirate_precipTypes[[2]] == "Precip."
    ~ c("#8AA5F1","#b0dcf0","#b0dcf0"),
    pirate_precipTypes[[1]] == "Rain" && pirate_precipTypes[[2]] == "Precip."
    ~ c("#b0dcf0","#b0dcf0","#b0dcf0"),
    pirate_precipTypes[[1]] == "Rain" && pirate_precipTypes[[2]] == "Snow" && pirate_precipTypes[[3]] == "Precip."
    ~ c("#b0dcf0","#8AA5F1","#b0dcf0"),
    pirate_precipTypes[[1]] == "Precip." 
    ~ c("#b0dcf0","#b0dcf0","#b0dcf0")
  )
pirate_champaign_longer <- pirate_champaign |> 
  select(datetime,summary,precipProbability,precipAccumulation,precipType,
         temperature,humidity,windSpeed,cloudCover,uvIndex) |> 
  pivot_longer(!c(datetime,summary,precipType),
               names_to = "names",
               values_to = "values") |> 
  mutate(names = recode_factor(names, 
                               "temperature"        = "°F",
                               "precipProbability"  = "Precip%",
                               "precipAccumulation" = "Precip.",
                               "cloudCover"         = "Clouds",
                               "windSpeed"          = "Wind",
                               "humidity"           = "Humidity",
                               "uvIndex"            = "UV"))
pirate_champaign_wider <- pirate_champaign_longer |> 
  pivot_wider(names_from = names,
              values_from = values)

## rainfall total ----
pirate_rain <- pirate_history_hourly |> 
  select(datetime,precipAccumulation,precipType) |> 
  filter(precipType == "rain")
pirate_snow <- pirate_history_hourly |> 
  select(datetime,precipAccumulation,precipType) |> 
  filter(precipType == "snow")

rainfall <- round(sum(pirate_rain$precipAccumulation),2)
snowfall <- round(sum(pirate_snow$precipAccumulation),2)

pirate_rain_forecast <- pirate_hourly |> 
  select(time,datetime,precipAccumulation,precipType) |> 
  filter(time < now(tzone = "America/Chicago")+days(3)) |> 
  filter(precipType == "rain")
pirate_snow_forecast <- pirate_hourly |> 
  select(time,datetime,precipAccumulation,precipType) |> 
  filter(time < now(tzone = "America/Chicago")+days(3)) |> 
  filter(precipType == "snow")

rainfall_forecast <- round(sum(pirate_rain_forecast$precipAccumulation),2)
snowfall_forecast <- round(sum(pirate_snow_forecast$precipAccumulation),2)

## interactive ----
offset <- 60*(hour(now(tzone = "America/Chicago"))-hour(now(tzone = "UTC")) )
global <- getOption("highcharter.global")
global$useUTC <- FALSE
global$timezoneOffset <- offset
options(highcharter.global = global)

fig <- highchart() |> 
  hc_add_series(data = pirate_champaign,
                type = "line",
                name = "Temperature",
                label = list(
                  enabled = TRUE),
                zones = list(
                  c(value = 0,   color = "#F8D4FC"),
                  c(value = 5,   color = "#E5A4EB"),
                  c(value = 10,  color = "#D392DD"),
                  c(value = 15,  color = "#C07ECC"),
                  c(value = 20,  color = "#9D63C2"),
                  c(value = 25,  color = "#794DB4"),
                  c(value = 30,  color = "#5B4FA6"),
                  c(value = 32,  color = "#527DC7"),
                  c(value = 40,  color = "#65C1DE"),
                  c(value = 45,  color = "#6EDAE0"),
                  c(value = 50,  color = "#6EDBA2"),
                  c(value = 55,  color = "#69C954"),
                  c(value = 60,  color = "#93D452"),
                  c(value = 65,  color = "#E3E65B"),
                  c(value = 70,  color = "#FFFF61"),
                  c(value = 75,  color = "#F8D456"),
                  c(value = 80,  color = "#ED9749"),
                  c(value = 85,  color = "#DC6641"),
                  c(value = 90,  color = "#CA593E"),
                  c(value = 95,  color = "#B6493B"),
                  c(value = 200, color = "#A44139")),
                color = "black",
                lineWidth = 3,
                connectNulls = TRUE,
                tooltip = list(valueSuffix = "°"),
                hcaes(x = time*1000,
                      y = round(temperature)),
                yAxis = 0) |> 
  hc_add_series(data = pirate_champaign,
                type = "line",
                name = "Precip. Chance",
                tooltip = list(valueSuffix = "%"),
                color = "#698490",
                label = list(
                  enabled = TRUE),
                hcaes(x = time*1000,
                      y = precipProbability),
                yAxis = 1) |> 
  hc_add_series(data = pirate_champaign,
                type = "column",
                name = "Precip. Amount",
                borderWidth = 0,
                groupPadding = 0,
                pointPadding = 0,
                pointWidth = 5,
                states = list(
                  inactive = list(
                    enabled = FALSE
                  )
                ),
                tooltip = list(pointFormat = "{point.precipType}: <b>{point.precipAccumulation:.2f}″<b>"),
                hcaes(x = time*1000,
                      y = precipAccumulation,
                      group = precipType),
                yAxis = 2) |> 
  hc_add_series(data = pirate_champaign,
                type = "area",
                name = "Cloud Cover",
                color = "lightgray",
                lineWidth = 0,
                tooltip = list(valueSuffix = "%"),
                label = list(
                  enabled = TRUE),
                hcaes(x = time*1000,
                      y = cloudCover),
                yAxis = 3) |> 
  hc_add_series(data = pirate_champaign,
                type = "line",
                name = "Wind",
                connectNulls = TRUE,
                color = "black",
                tooltip = list(valueSuffix = " mph"),
                label = list(
                  enabled = TRUE),
                hcaes(x = time*1000,
                      y = round(windSpeed)),
                yAxis = 4) |> 
  hc_add_series(data = pirate_champaign,
                type = "line",
                name = "Humidity",
                connectNulls = TRUE,
                color = "#3288bd",
                tooltip = list(valueSuffix = "%"),
                label = list(
                  enabled = TRUE),
                hcaes(x = time*1000,
                      y = humidity),
                yAxis = 5) |> 
  hc_add_series(data = pirate_champaign,
                type = "line",
                name = "UV Index",
                zones = list(
                  c(value = 2,
                    color = "#4C9329"),
                  c(value = 5,
                    color = "#F4E54C"),
                  c(value = 7,
                    color = "#E7652B"),
                  c(value = 10,
                    color = "#C72A23"),
                  c(value = 100,
                    color = "#674AC2")),
                color = "black",
                label = list(
                  enabled = TRUE),
                hcaes(x = time*1000,
                      y = uvIndex),
                yAxis = 6) |> 
  hc_yAxis_multiples(create_axis(naxis = 7, 
                                 gridLineColor = "#D9D9D9",
                                 gridLineWidth = 2,
                                 heights = c(1,1,1,1,1,1,1),
                                 title = list(text = NULL),
                                 plotLines = list(
                                   list(
                                     list(
                                       label = list(text = "32°"),
                                       color = "#527DC7",
                                       width = 1,
                                       zIndex = 1,
                                       value = 32
                                     )
                                   ),NA,NA,NA,NA,NA,NA
                                 ),
                                 softMax = c(NA,NA,.25,
                                             NA,20,NA,NA),
                                 endOnTick = FALSE,
                                 startOnTick = FALSE,
                                 max = c(NA,
                                         100,
                                         NA,
                                         100,
                                         NA,
                                         100,
                                         NA
                                 ),
                                 min = c(NA,
                                         0,
                                         NA,
                                         0,
                                         0,
                                         0,
                                         NA
                                 ))) |> 
  hc_xAxis(type = "datetime",
           gridLineColor = "#D9D9D9",
           gridLineWidth = 1,
           lineWidth = 0,
           opposite = TRUE,
           tickInterval = 24 * 3600 * 1000,
           dateTimeLabelFormats = list(
             day = "%A"
           ),
           plotLines = list(
             list(
               label = list(text = "Now"),
               color = "#595959",
               width = .5,
               zIndex = 2,
               value = as.numeric( now(tzone = "America/Chicago"))*1000
             )
           ),
           min = 1000*min(pirate_champaign$time),
           max = 1000*max(pirate_champaign$time),
           plotBands = list(
             list(
               #label = list(text = "Now"),
               color = "#FFFFF5",
               width = 1,
               zIndex = 1,
               from = 1000*pirate_daylight$sunriseTime[[1]],
               to = 1000*pirate_daylight$sunsetTime[[1]]
             ),
             list(
               #label = list(text = "Now"),
               color = "#FFFFF5",
               width = 1,
               zIndex = 1,
               from = 1000*pirate_daylight$sunriseTime[[2]],
               to = 1000*pirate_daylight$sunsetTime[[2]]
             ),
             list(
               #label = list(text = "Now"),
               color = "#FFFFF5",
               width = 1,
               zIndex = 1,
               from = 1000*pirate_daylight$sunriseTime[[3]],
               to = 1000*pirate_daylight$sunsetTime[[3]]
             ),
             list(
               #label = list(text = "Now"),
               color = "#FFFFF5",
               width = 1,
               zIndex = 1,
               from = 1000*pirate_daylight$sunriseTime[[4]],
               to = 1000*pirate_daylight$sunsetTime[[4]]
             ),
             list(
               #label = list(text = "Now"),
               color = "#FFFFF5",
               width = 1,
               zIndex = 1,
               from = 1000*pirate_daylight$sunriseTime[[5]],
               to = 1000*pirate_daylight$sunsetTime[[5]]
             ),
             list(
               #label = list(text = "Now"),
               color = "#FFFFF5",
               width = 1,
               zIndex = 1,
               from = 1000*pirate_daylight$sunriseTime[[6]],
               to = 1000*pirate_daylight$sunsetTime[[6]]
             ),
             list(
               #label = list(text = "Now"),
               color = "#FFFFF5",
               width = 1,
               zIndex = 1,
               from = 1000*pirate_daylight$sunriseTime[[7]],
               to = 1000*pirate_daylight$sunsetTime[[7]]
             ),
             list(
               #label = list(text = "Now"),
               color = "#FFFFF5",
               width = 1,
               zIndex = 1,
               from = 1000*pirate_daylight$sunriseTime[[8]],
               to = 1000*pirate_daylight$sunsetTime[[8]]
             ),
             list(
               #label = list(text = "Now"),
               color = "#FFFFF5",
               width = 1,
               zIndex = 1,
               from = 1000*pirate_daylight$sunriseTime[[9]],
               to = 1000*pirate_daylight$sunsetTime[[9]]
             )
           )
  )%>%
  hc_colors(pirate_precip_colors) %>%
  hc_tooltip(shared = TRUE,
             split = TRUE,
             crosshairs = TRUE,
             dateTimeLabelFormats = list(
               hour = "%A, %b %e, %l%P",
               minute = "%A, %b %e, %l%P",
               millisecond = "%A, %b %e, %l%P"
             )) %>%
  hc_add_theme(
    hc_theme_bloom()
  ) |>
  hc_credits(
    enabled = TRUE,
    text = paste("Source: NWS. Latest data:",now_formatted),
    href = "https://pirateweather.net") |> 
  hc_legend(enabled = FALSE) |> 
  hc_chart(plotBackgroundColor = "#E8EEF5") 
fig
saveWidget(widget = fig, file = "interactive/champaign_weather.html",
           selfcontained = FALSE,
           libdir = "interactive")

# NCEI ----
earliest <- "1902-08-01"
year_ago <- as.character(ymd(today(tzone = "America/Chicago")- days(366)))
latest <- as.character(ymd(today(tzone = "America/Chicago")))
url = paste0("https://www.ncei.noaa.gov/access/services/data/v1?dataset=daily-summaries&dataTypes=PRCP,TMAX,TMIN&stations=USC00118740&startDate=",earliest,"&endDate=",latest,"&units=standard")
ncei_GET <- GET(url)
ncei_status <- status_code(ncei_GET)
if (ncei_status == 200) {
  ncei <- content(ncei_GET)
}
empty_check <- identical(ncei$PRCP, character(0))

# AQI ----
aqi_url <- paste0("https://www.airnowapi.org/aq/observation/latLong/current/?format=text/csv&latitude=",
                  champaign_lat,
                  "&longitude=",
                  champaign_lon
                  ,"&distance=25&API_KEY=",
                  Sys.getenv("AQI_API_KEY"))
aqi_GET <- GET(aqi_url)
aqi_status <- status_code(aqi_GET)
if (aqi_status == 200) {
  aqi <- as_tibble(content(aqi_GET))
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
    mutate(aqi_plus_text = paste0("- ", AQI, " AQI ", color,"\n"))
  champaign_aqi <- aqi_color$aqi_plus_text
} else {
  champaign_aqi <- ""
}

# set variables ----
champaign_temp <- paste(round(pirate_currently$temperature),"°", sep = "")
champaign_humidity <- paste(100*pirate_currently$humidity,"%",sep = "")
champaign_desc <- pirate_currently$summary
champaign_wind_speed <- paste(round(pirate_currently$windSpeed),"mph")
champaign_precip <- case_when(
  rainfall > 0 && snowfall > 0   ~ paste("-",rainfall,"inches of rain and",snowfall,"inches of snow in the past 24 hours\n"),
  rainfall > 0 && snowfall == 0  ~ paste("-",rainfall,"inches of rain in the past 24 hours\n"),
  snowfall > 0 && rainfall == 0  ~ paste("-",snowfall,"inches of snow in the past 24 hours\n"),
  rainfall == 0 && snowfall == 0 ~ paste(""))
champaign_precip_forecast <- case_when(
  rainfall_forecast > 0 && snowfall_forecast > 0 && rainfall_forecast >= snowfall_forecast ~ paste("-",rainfall_forecast,"inches of rain and",snowfall_forecast,"inches of snow expected in the next 72 hours\n"),
  rainfall_forecast > 0 && snowfall_forecast > 0 && rainfall_forecast < snowfall_forecast  ~ paste("-",snowfall_forecast,"inches of snow and",rainfall_forecast,"inches of rain expected in the next 72 hours\n"),
  rainfall_forecast > 0 && snowfall_forecast == 0  ~ paste("-",rainfall_forecast,"inches of rain expected in the next 72 hours\n"),
  snowfall_forecast > 0 && rainfall_forecast == 0  ~ paste("-",snowfall_forecast,"inches of snow expected in the next 72 hours\n"),
  rainfall_forecast == 0 && snowfall_forecast == 0 ~ paste(""))
champaign_clouds <- paste0(round(100*pirate_currently$cloudCover),"%")

# save temp data ----

weather_data <- tibble(utc_time = as_datetime(pirate_currently$time),
                       temp = pirate_currently$temperature)

write_csv(x = weather_data,
          file = "data/champaign_weather.csv",
          append = TRUE)

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
temps_next_week <- pirate_hourly %>%
  mutate(temp = temperature) |>
  mutate(central_time = datetime) |> 
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
            linewidth = 4) +
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
            linewidth = 4) +
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

if (!empty_check) {
  
  temp_history <- ncei |> 
    pivot_longer(cols = c(TMIN, TMAX)) |> 
    mutate(central_time = with_tz(DATE, tzone = "America/Chicago")) |> 
    mutate(temp = value) |> 
    drop_na() |> 
    select(central_time, temp) 
  
  temps_past_year <- temp_history %>%
    filter(central_time > now(tzone = "America/Chicago")-years(1)) %>%
    mutate(period = "Past Year") %>%
    select(temp, period, central_time)%>%
    arrange(temp)
  
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
    mutate(period = "Record (since 1902)") 
  
  seq <- seq(from = min(record_range$temp), to = max(record_range$temp),
             length.out = 100)
  records_range <- tibble(period = "Record (since 1902)",
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
  
  monthly_rain <- ncei %>%
    mutate(date = DATE) |> 
    mutate(precip_one_hour = PRCP) |> 
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
                                   endOnTick = FALSE,
                                   startOnTick = FALSE,
                                   title = list(text = NULL))) %>%
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
        format = "{value:%b}")
    ) %>%
    hc_legend(enabled = FALSE) %>%
    hc_colors(c("#e9e8df","#c2afb1","#a6003f")) %>%
    hc_tooltip(shared = TRUE,
               xDateFormat = "%B %e") %>%
    hc_credits(
      enabled = TRUE,
      text = "Source: NCEI",
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
                 linewidth = .75) +
    geom_segment(aes(xend = date,
                     y = Normal_min,
                     yend = Normal_max),
                 color = "#c2afb1",
                 linewidth = .75) +
    geom_segment(aes(xend = date,
                     y = Actual_min,
                     yend = Actual_max),
                 color = "#a6003f",
                 linewidth = .75) +
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
  #   geom_line(linewidth = 2) +
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
}

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

<iframe src=\"/interactive/champaign_weather.html\" width=\"100%\" height=\"600\"> 
</iframe>

Currently:

- ",champaign_temp,"
- ",champaign_desc,"
- ",champaign_humidity," humidity
- ",champaign_wind_speed," wind
- ",champaign_clouds," cloud cover
",champaign_aqi,"",champaign_rain_text,"",champaign_precip_forecast,"

The current weather is posted regularly on Mastodon <a rel=\"me\" href=\"https://mastodon.social/@ChampaignWeather\">@ChampaignWeather@mastodon.social</a>

## Temperature History

<iframe src=\"/interactive/champaign_weather_year.html\" width=\"100%\" height=\"500\"> 
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




