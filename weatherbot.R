library(tidyverse)
library(readr)
library(lubridate)
library(scales)
library(httr)
library(rvest)
library(janitor)
library(jsonlite)
library(cowplot)
library(imputeTS)
library(RColorBrewer)
library(rtoot)

champaign_lat <-  40.08408
champaign_lon <- -88.24039

# get data ----

# open meteo ----
om_url <- paste0("https://api.open-meteo.com/v1/forecast?latitude=",champaign_lat,"&longitude=",champaign_lon,"&hourly=temperature_2m,uv_index,apparent_temperature,relativehumidity_2m,weathercode,dewpoint_2m,precipitation_probability,precipitation,rain,showers,snowfall,snow_depth,cloudcover,windspeed_10m,windgusts_10m&daily=sunrise,sunset&current_weather=true&temperature_unit=fahrenheit&windspeed_unit=mph&precipitation_unit=inch&timeformat=unixtime&past_days=1&forecast_days=16&timezone=America%2FChicago")
om <- rio::import(om_url, format = "json")
om_hourly <- as_tibble( om$hourly) |> 
  mutate(datetime = as_datetime(time, tz = "America/Chicago")) |> 
  mutate(rain = rain + showers) |> 
  select(!showers) |> 
  mutate(precipProbability = precipitation_probability) |> 
  mutate(precipProbability = if_else(time < now(tzone = "America/Chicago"),
                                     NA,
                                     precipProbability)) |> 
  select(!precipitation_probability) |> 
  mutate(temperature = temperature_2m) |> 
  select(!temperature_2m) |> 
  mutate(humidity = relativehumidity_2m) |> 
  select(!relativehumidity_2m) |> 
  mutate(precipAccumulation = precipitation) |> 
  select(!precipitation) |> 
  mutate(cloudCover = cloudcover) |> 
  select(!cloudcover) |> 
  mutate(windSpeed = windspeed_10m) |> 
  select(!windspeed_10m) |> 
  mutate(windGust = if_else(windgusts_10m - windSpeed > 10,
                            windgusts_10m,
                            NA)) |> 
  select(!windgusts_10m) |> 
  mutate(dewPoint = dewpoint_2m) |> 
  select(!dewpoint_2m) |> 
  filter(time > now(tzone = "America/Chicago")-days(1)) |> 
  mutate(rain = if_else(rain == 0,NA,rain)) |> 
  mutate(snowfall = if_else(snowfall == 0,NA,snowfall)) |> 
  mutate(snow_depth = if_else(snow_depth <= 0,NA,snow_depth)) |> 
  mutate(
    apparent_temperature = 
      case_when(
        apparent_temperature - temperature > 10 ~ apparent_temperature,
        apparent_temperature - temperature < -10 ~ apparent_temperature,
        .default = NA
      )) |> 
  mutate(weathercode_text = case_when(
    weathercode == 0    ~ "Clear sky",
    weathercode == 1    ~ "Mainly clear",
    weathercode == 2    ~ "Partly cloudy",
    weathercode == 3    ~ "Overcast",
    weathercode == 45   ~ "Fog",
    weathercode == 48   ~ "Depositing rime fog",
    weathercode == 51   ~ "Light drizzle",
    weathercode == 53   ~ "Moderate drizzle",
    weathercode == 55   ~ "Dense drizzle",
    weathercode == 56   ~ "Light freezing drizzle",
    weathercode == 57   ~ "Dense freezing drizzle",
    weathercode == 61   ~ "Slight rain",
    weathercode == 63   ~ "Moderate rain",
    weathercode == 65   ~ "Heavy rain",
    weathercode == 66   ~ "Light freezing rain",
    weathercode == 67   ~ "Heavy freezing rain",
    weathercode == 71   ~ "Slight snow",
    weathercode == 73   ~ "Moderate snow",
    weathercode == 75   ~ "Heavy snow",
    weathercode == 77   ~ "Snow grains",
    weathercode == 80   ~ "Slight rain showers",
    weathercode == 81   ~ "Moderate rain showers",
    weathercode == 82   ~ "Heavy rain showers",
    weathercode == 85   ~ "Slight snow showers",
    weathercode == 86   ~ "Heavy snow showers",
    weathercode == 95   ~ "Slight or moderate thunderstorm",
    weathercode == 96   ~ "Thunderstorm with slight hail",
    weathercode == 99   ~ "Thunderstorm with heavy hail",
    .default = ""
  ))
om_currently <- as_tibble( om$current_weather )|> 
  mutate(weathercode_text = case_when(
    weathercode == 0    ~ "Clear sky",
    weathercode == 1    ~ "Mainly clear",
    weathercode == 2    ~ "Partly cloudy",
    weathercode == 3    ~ "Overcast",
    weathercode == 45   ~ "Fog",
    weathercode == 48   ~ "Depositing rime fog",
    weathercode == 51   ~ "Light drizzle",
    weathercode == 53   ~ "Moderate drizzle",
    weathercode == 55   ~ "Dense drizzle",
    weathercode == 56   ~ "Light freezing drizzle",
    weathercode == 57   ~ "Dense freezing drizzle",
    weathercode == 61   ~ "Slight rain",
    weathercode == 63   ~ "Moderate rain",
    weathercode == 65   ~ "Heavy rain",
    weathercode == 66   ~ "Light freezing rain",
    weathercode == 67   ~ "Heavy freezing rain",
    weathercode == 71   ~ "Slight snow",
    weathercode == 73   ~ "Moderate snow",
    weathercode == 75   ~ "Heavy snow",
    weathercode == 77   ~ "Snow grains",
    weathercode == 80   ~ "Slight rain showers",
    weathercode == 81   ~ "Moderate rain showers",
    weathercode == 82   ~ "Heavy rain showers",
    weathercode == 85   ~ "Slight snow showers",
    weathercode == 86   ~ "Heavy snow showers",
    weathercode == 95   ~ "Slight or moderate thunderstorm",
    weathercode == 96   ~ "Thunderstorm with slight hail",
    weathercode == 99   ~ "Thunderstorm with heavy hail",
    .default = ""
  ))
om_daily <- as_tibble( om$daily)

om_daylight <- om_daily |> 
  select(sunrise, sunset) |> 
  mutate(sunriseTime = sunrise) |> 
  mutate(sunsetTime = sunset) |> 
  mutate(top = Inf) %>%
  mutate(bottom = -Inf) %>%
  mutate(sunrise = as_datetime(sunriseTime, tz = "America/Chicago")) |> 
  mutate(sunset = as_datetime(sunsetTime, tz = "America/Chicago")) |> 
  arrange(sunriseTime)

om_air_quality_url <- "https://air-quality-api.open-meteo.com/v1/air-quality?latitude=40.11&longitude=-88.21&hourly=us_aqi,us_aqi_pm2_5,us_aqi_pm10,us_aqi_no2,us_aqi_co,us_aqi_o3,us_aqi_so2&timeformat=unixtime&past_days=1&timezone=America%2FChicago"
om_air_quality_json <- rio::import(om_air_quality_url, format = "json")
om_air_quality <- as_tibble(om_air_quality_json$hourly) |> 
  mutate(datetime = as_datetime(time, tz = "America/Chicago")) 
om_air_quality_now <- om_air_quality |> 
  filter(datetime <= now(tzone = "America/Chicago")) |> 
  tail(1)

## rainfall total ----
om_past24 <- om_hourly |> 
  filter(time < now(tzone = "America/Chicago")) |> 
  filter(time > now(tzone = "America/Chicago")-days(1)) 

rainfall <- round(sum(om_past24$rain, na.rm = TRUE),2)
snowfall <- round(sum(om_past24$snowfall, na.rm = TRUE),2)

om_3day_forecast <- om_hourly |> 
  filter(time > now(tzone = "America/Chicago")) |> 
  filter(time < now(tzone = "America/Chicago")+days(3)) 

rainfall_forecast <- round(sum(om_3day_forecast$rain, na.rm = TRUE),2)
snowfall_forecast <- round(sum(om_3day_forecast$snowfall, na.rm = TRUE),2)

# mastodon api setup ----
token <- Sys.getenv("RTOOT_DEFAULT_TOKEN")
verify_envvar(verbose = TRUE)

# AQI ----

om_air_quality_now <- om_air_quality_now |> 
  mutate(color = case_when(
    us_aqi <= 50 ~ "🟩",
    us_aqi <= 100 ~ "🟨",
    us_aqi <= 150 ~ "🟧",
    us_aqi <= 200 ~ "🟥",
    us_aqi <= 300 ~ "🟪",
    us_aqi <= 500 ~ "🟫",
    us_aqi <= 1000 ~ "") 
  ) |> 
  mutate(aqi_plus_text = paste0("- ", us_aqi, " AQI ", color,"\n"))

champaign_aqi <- om_air_quality_now$aqi_plus_text


# set variables ----
champaign_temp <- paste(round(om_currently$temperature),"°", sep = "")
champaign_humidity_helper <- om_hourly |> 
  filter(time > now(tzone = "America/Chicago")) |> 
  head(1) 
champaign_humidity <- paste(champaign_humidity_helper$humidity,"%",sep = "")
champaign_dewpoint_helper <- om_hourly |> 
  filter(time > now(tzone = "America/Chicago")) |> 
  head(1) 
champaign_dewpoint  <- paste0(round(champaign_dewpoint_helper$dewPoint),
                              "°")
champaign_desc <- om_currently$weathercode_text
champaign_wind_speed <- paste(round(om_currently$windspeed),"mph")
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
champaign_clouds <- paste0(round(champaign_dewpoint_helper$cloudCover),"%")

# radar
radar <- "https://radar.weather.gov/ridge/standard/KILX_loop.gif"
radar_img <- tempfile( fileext = "gif")
download.file(url = radar, destfile = radar_img)

# webcam
webcam_url <- "https://cctv.travelmidwest.com/snapshots/IL-IDOTD4_5_Champaign_NB_US-45_4011007_-8824329_1_N.jpg"
webcam_img <- tempfile(fileext = "jpg")
download.file(url = webcam_url, destfile = webcam_img)

# text ----
now <- as_datetime(now())
now_formatted <- strftime(x = now, 
                          tz = "US/Central",
                          format = "%I:%M% %p")

text <- head( paste0(
  "Champaign weather at ",now_formatted,":

- ",champaign_temp,"F
- ",champaign_desc,"
- ",champaign_humidity," humidity
- ",champaign_wind_speed," wind
- ",champaign_clouds," cloud cover
",champaign_aqi,"",champaign_precip,"",champaign_precip_forecast,"

Charts: https://bzigterman.com/projects/weather"))
text

if (rainfall >= 0 && 
    snowfall >= 0 && 
    om_currently$temperature >= -50 &&
    om_currently$temperature <= 150 &&
    om_currently$windspeed >= 0 
) {
  post_toot(
    status   = text,
    media    = if_else(
      champaign_humidity_helper$precipProbability >= 50,
      radar_img, webcam_img),
    alt_text = if_else(
      champaign_humidity_helper$precipProbability >= 50,
      "GIF of the radar for Illinois",
      "Webcam from Champaign, Illinois"))
}




