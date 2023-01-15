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
library(RColorBrewer)
library(rtoot)

champaign_lat <-  40.08408
champaign_lon <- -88.24039

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
  mutate(time = as_datetime(time, tz = "America/Chicago")) |> 
  filter(time >= now(tzone = "America/Chicago"))
pirate_daily <- pirate_forecast_content$daily$data %>%
  map(as_tibble) %>%
  reduce(bind_rows) |> 
  mutate(time = as_datetime(time, tz = "America/Chicago")) |> 
  filter(time >= now(tzone = "America/Chicago"))

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
  mutate(time = as_datetime(time, tz = "America/Chicago")) %>%
  filter(time < now(tzone = "America/Chicago"))
pirate_history_daily <- pirate_history_content$daily$data %>%
  map(as_tibble) %>%
  reduce(bind_rows) |> 
  mutate(time = as_datetime(time, tz = "America/Chicago")) 

pirate_daylight <- full_join(pirate_daily,pirate_history_daily) %>%
  select(sunriseTime, sunsetTime) %>%
  unique() %>%
  mutate(top = Inf) %>%
  mutate(bottom = -Inf) %>%
  mutate(sunrise = as_datetime(sunriseTime, tz = "America/Chicago")) %>%
  mutate(sunset = as_datetime(sunsetTime, tz = "America/Chicago"))

pirate_champaign <- full_join(pirate_hourly,pirate_history_hourly) |> 
  mutate(precipProbability = 100*precipProbability) 
pirate_champaign_longer <- pirate_champaign |> 
  select(time,summary,precipProbability,precipAccumulation,precipType,
         temperature,windSpeed) |> 
  pivot_longer(!c(time,summary,precipType),
               names_to = "names",
               values_to = "values") |> 
  mutate(names = recode_factor(names, 
                               "temperature"        = "°F",
                               "precipProbability"  = "Precip%",
                               "precipAccumulation" = "Precip.",
                               "windSpeed"          = "Wind"))

p <- ggplot()+
  geom_rect(data = pirate_daylight,
            aes(xmin = sunrise, xmax = sunset,
                ymin = bottom, ymax = top),
            #color = "#FFFFaf",
            fill = "#FFFFe2",
            alpha = .8) +
  geom_line(data = pirate_champaign_longer, aes(x = time,
                                                y = values,
                                                color = names)) +
  geom_vline(xintercept = now(tzone = "America/Chicago")) +
  facet_wrap(~ names, scales = "free_y",
             ncol = 1,
             strip.position = "left") +
  labs(caption = "Source: NWS") +
  xlab(NULL) +
  ylab(NULL) +
  coord_cartesian(xlim = c(min(pirate_champaign_longer$time),
                           max(pirate_champaign_longer$time))) +
  scale_y_continuous(position = "right") +
  scale_x_datetime(expand = c(0,0),
                   date_labels = "%a",
                   date_breaks = "1 day",
                   position = "top",
                   timezone = "America/Chicago") +
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

### rainfall total ----
pirate_rain <- pirate_history_hourly |> 
  select(time,precipAccumulation,precipType) |> 
  filter(precipType == "rain")
pirate_snow <- pirate_history_hourly |> 
  select(time,precipAccumulation,precipType) |> 
  filter(precipType == "snow")

rainfall <- round(sum(pirate_rain$precipAccumulation),1)
snowfall <- round(sum(pirate_snow$precipAccumulation),1)

# mastodon api setup ----
token <- Sys.getenv("RTOOT_DEFAULT_TOKEN")
verify_envvar(verbose = TRUE)

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
    mutate(aqi_plus_text = paste0("- ", AQI, " AQI ", color))
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
  rainfall > 0 && snowfall > 0   ~ paste("-",rainfall,"inches of rain and",snowfall,"inches of snow"),
  rainfall > 0 && snowfall == 0  ~ paste("-",rainfall,"inches of rain"),
  snowfall > 0 && rainfall == 0  ~ paste("-",snowfall,"inches of snow"),
  rainfall == 0 && snowfall == 0 ~ paste(""))
champaign_clouds <- paste0(round(100*pirate_currently$cloudCover),"%")

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
",champaign_aqi,"
",champaign_precip,"

More charts: https://bzigterman.com/projects/weather")
text

if (rainfall >= 0 && 
    snowfall >= 0 && 
    pirate_currently$humidity >= 0 && 
    pirate_currently$humidity <= 100 && 
    pirate_currently$temperature >= -50 &&
    pirate_currently$temperature <= 150 &&
    pirate_currently$windSpeed >= 0 
) {
  post_toot(
    status   = text,
    media    = if_else(
      pirate_currently$precipProbability >= 50,
      radar_img, file),
    alt_text = if_else(
      pirate_currently$precipProbability >= 50,
      "GIF of the radar for Illinois",
      "Line chart with today's weather forecast for Champaign, Illinois"))
}




