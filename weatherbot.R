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

om_2day_forecast <- om_hourly |> 
  filter(time > now(tzone = "America/Chicago")) |> 
  filter(time < now(tzone = "America/Chicago")+days(2)) 

rainfall_forecast <- round(sum(om_2day_forecast$rain, na.rm = TRUE),2)
snowfall_forecast <- round(sum(om_2day_forecast$snowfall, na.rm = TRUE),2)

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
  rainfall_forecast > 0 && snowfall_forecast > 0 && rainfall_forecast >= snowfall_forecast ~ paste("-",rainfall_forecast,"inches of rain and",snowfall_forecast,"inches of snow expected in the next 48 hours\n"),
  rainfall_forecast > 0 && snowfall_forecast > 0 && rainfall_forecast < snowfall_forecast  ~ paste("-",snowfall_forecast,"inches of snow and",rainfall_forecast,"inches of rain expected in the next 48 hours\n"),
  rainfall_forecast > 0 && snowfall_forecast == 0  ~ paste("-",rainfall_forecast,"inches of rain expected in the next 48 hours\n"),
  snowfall_forecast > 0 && rainfall_forecast == 0  ~ paste("-",snowfall_forecast,"inches of snow expected in the next 48 hours\n"),
  rainfall_forecast == 0 && snowfall_forecast == 0 ~ paste(""))
champaign_clouds <- paste0(round(champaign_dewpoint_helper$cloudCover),"%")

# webcam
webcam_url1 <- "https://cctv.travelmidwest.com/snapshots/IL-IDOTD4_5_Champaign_NEB_I-57_4018104_-8824489_1_S.jpg"
webcam_url2 <- "https://cctv.travelmidwest.com/snapshots/IL-IDOTD4_5_Champaign_NB_Mattis_4013945_-8827704_1_S.jpg"
webcam_url3 <- "https://cctv.travelmidwest.com/snapshots/IL-IDOTD4_5_Champaign_EB_I-74_4013475_-8825781_1_E.jpg"
webcam_url4 <- "https://cctv.travelmidwest.com/snapshots/IL-IDOTD4_5_Champaign_EB_I-74_4013446_-8824351_1_E.jpg"
webcam_url5 <- "https://cctv.travelmidwest.com/snapshots/IL-IDOTD4_5_Champaign_WB_I-74_4013535_-8821938_1_E.jpg"
webcam_url6 <- "https://cctv.travelmidwest.com/snapshots/IL-IDOTD4_5_Champaign_EB_Bradley_4012728_-8827668_1_N.jpg"
webcam_url7 <- "https://cctv.travelmidwest.com/snapshots/IL-IDOTD4_5_Champaign_SB_US-150_4012701_-8825815_1_N.jpg"
webcam_url8 <- "https://cctv.travelmidwest.com/snapshots/IL-IDOTD4_5_Champaign_EB_I-72_4012026_-8837032_1_W.jpg"
webcam_url9 <- "https://cctv.travelmidwest.com/snapshots/IL-IDOTD4_5_Champaign_SB_Mattis_4011831_-8827712_1_N.jpg"
webcam_url10 <- "https://cctv.travelmidwest.com/snapshots/IL-IDOTD4_5_Champaign_SB_Mattis_4011296_-8827709_1_E.jpg"
webcam_url11 <- "https://cctv.travelmidwest.com/snapshots/IL-IDOTD4_5_Champaign_SB_US-150_4011614_-8825801_1_N.jpg"
webcam_url12 <- "https://cctv.travelmidwest.com/snapshots/IL-IDOTD4_5_Champaign_EB_US-150_4011253_-8825761_1_W.jpg"
webcam_url13 <- "https://cctv.travelmidwest.com/snapshots/IL-IDOTD4_5_Champaign_WB_US-150_4011268_-8824364_1_S.jpg"
webcam_url14 <- "https://cctv.travelmidwest.com/snapshots/IL-IDOTD4_5_Champaign_EB_US-150_4011258_-8822908_1_N.jpg"
webcam_url15 <- "https://cctv.travelmidwest.com/snapshots/IL-IDOTD4_5_Champaign_WB_US-150_4011652_-8821923_1_W.jpg"
webcam_url16 <- "https://cctv.travelmidwest.com/snapshots/IL-IDOTD4_5_Champaign_EB_US-150_4011617_-8820461_1_E.jpg"
webcam_url17 <- "https://cctv.travelmidwest.com/snapshots/IL-IDOTD4_5_Champaign_EB_US-150_4011324_-8816240_1_W.jpg"
webcam_url18 <- "https://cctv.travelmidwest.com/snapshots/IL-IDOTD4_5_Champaign_WB_I-74_4012166_-8817337_1_E.jpg"
webcam_url19 <- "https://cctv.travelmidwest.com/snapshots/IL-IDOTD4_5_Champaign_WB_I-74_4012079_-8810461_1_E.jpg"
webcam_url20 <- "https://cctv.travelmidwest.com/snapshots/IL-IDOTD4_5_Champaign_NB_US-45_4011007_-8824329_1_N.jpg"
webcam_url21 <- "https://cctv.travelmidwest.com/snapshots/IL-IDOTD4_5_Champaign_NB_US-45_4009829_-8824440_1_S.jpg"
webcam_url22 <- "https://cctv.travelmidwest.com/snapshots/IL-IDOTD4_5_Champaign_NB_US-45_4008379_-8824666_1_S.jpg"
webcam_url23 <- "https://cctv.travelmidwest.com/snapshots/IL-IDOTD4_5_Champaign_NB_US-45_4006919_-8824896_1_S.jpg"
webcam_url24 <- "https://cctv.travelmidwest.com/snapshots/IL-IDOTD4_5_Champaign_NB_I-57_4006935_-8830332_1_S.jpg"
webcam_url25 <- "https://cctv.travelmidwest.com/snapshots/IL-IDOTD4_5_Champaign_NB_US-45_4005464_-8825121_1_S.jpg"
urls <- c(webcam_url1,webcam_url2,webcam_url3,
          webcam_url4,webcam_url5,webcam_url6,
          webcam_url7,webcam_url8,webcam_url9,
          webcam_url10,webcam_url11,webcam_url12,
          webcam_url13,webcam_url14,webcam_url15,
          webcam_url16,webcam_url17,webcam_url18,
          webcam_url19,webcam_url20,webcam_url21,
          webcam_url22,webcam_url23,webcam_url24,
          webcam_url25)

webcam1_text <- "I-57 at Market St."
webcam2_text <- "Mattis Ave. at Bloomington"
webcam3_text <- "I-74 at Prospect Ave."
webcam4_text <- "I-74 at Neil St."
webcam5_text <- "I-74 at Lincoln Ave."
webcam6_text <- "Mattis Ave. at Bradley"
webcam7_text <- "US 150 (Prospect) at Bradley"
webcam8_text <- "I-72 at Mile Post 178.3"
webcam9_text <- "Mattis Ave. at Church"
webcam10_text <- "Mattis Ave. at Springfield"
webcam11_text <- "US 150 (Prospect) at University"
webcam12_text <- "US 150 (Prospect) at Springfield"
webcam13_text <- "US 150 (Springfield) at Neil"
webcam14_text <- "US 150 (Springfield) at Wright"
webcam15_text <- "US 150 (University) at Lincoln"
webcam16_text <- "US 150 (University) at Cunningham"
webcam17_text <- "US 150 (University) at High Cross"
webcam18_text <- "I-74 at University Ave."
webcam19_text <- "I-74 at Mile Post 189.1"
webcam20_text <- "US 45 (Neil St.) at Green"
webcam21_text <- "US 45 (Neil St.) at Kirby"
webcam22_text <- "US 45 at Windsor"
webcam23_text <- "US 45 at Curtis"
webcam24_text <- "I-57 at Curtis Rd."
webcam25_text <- "US 45 at Church"
webcam_texts <- c(webcam1_text,webcam2_text,webcam3_text,
                  webcam4_text,webcam5_text,webcam6_text,
                  webcam7_text,webcam8_text,webcam9_text,
                  webcam10_text,webcam11_text,webcam12_text,
                  webcam13_text,webcam14_text,webcam15_text,
                  webcam16_text,webcam17_text,webcam18_text,
                  webcam19_text,webcam20_text,webcam21_text,
                  webcam22_text,webcam23_text,webcam24_text,
                  webcam25_text)

random_number <- sample(1:25, 1, replace=TRUE)
webcam_url <- urls[[random_number]]
webcam_text <- webcam_texts[[random_number]]

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
    media    = webcam_img,
    alt_text = webcam_text
    )
}




