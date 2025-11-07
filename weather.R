library(tidyverse)
library(scales)
library(lubridate)
library(httr)
library(rvest)
library(janitor)
library(jsonlite)
library(cowplot)
library(imputeTS)
library(highcharter)
library(RColorBrewer)
library(htmlwidgets)
library(xml2)

champaign_lat <- 40.11
champaign_lon <- -88.21

now <- as_datetime(now())
now_formatted <- strftime(
  x = now,
  tz = "US/Central",
  format = "%I:%M% %p CT, %B %d"
)

now_html <- paste(
  "<p class=\"updated_time\"> Latest data: ",
  now_formatted,
  "</p>",
  sep = ""
)

today <- strftime(x = now, tz = "US/Central", format = "%B %d")

# get data ----

# pirate api ----
Sys.getenv("PIRATE_WEATHER")

pirate_url <- paste0(
  "https://api.pirateweather.net/forecast/",
  Sys.getenv("PIRATE_WEATHER"),
  "/",
  champaign_lat,
  ",",
  champaign_lon,
  "?exclude=minutely,alerts&extend=hourly"
)
pirate_forecast <- GET(pirate_url)
pirate_status <- status_code(pirate_forecast)
pirate_status
pirate_forecast_content <- content(pirate_forecast)
pirate_hourly <- pirate_forecast_content$hourly$data %>%
  map(as_tibble) %>%
  reduce(bind_rows) |>
  mutate(datetime = as_datetime(time, tz = "America/Chicago")) |>
  filter(datetime >= now(tzone = "America/Chicago"))
pirate_currently <- pirate_forecast_content$currently

# open meteo ----
om_url <- paste0(
  "https://api.open-meteo.com/v1/forecast?latitude=",
  champaign_lat,
  "&longitude=",
  champaign_lon,
  "&hourly=temperature_2m,uv_index,apparent_temperature,relativehumidity_2m,dewpoint_2m,precipitation_probability,precipitation,rain,showers,snowfall,snow_depth,cloudcover,windspeed_10m,windgusts_10m&daily=sunrise,sunset&current_weather=true&temperature_unit=fahrenheit&windspeed_unit=mph&precipitation_unit=inch&timeformat=unixtime&past_days=1&forecast_days=16&timezone=America%2FChicago"
)
om <- rio::import(om_url, format = "json")
om_hourly <- as_tibble(om$hourly) |>
  mutate(datetime = as_datetime(time, tz = "America/Chicago")) |>
  mutate(rain = rain + showers) |>
  select(!showers) |>
  mutate(precipProbability = precipitation_probability) |>
  mutate(
    precipProbability = if_else(
      time < now(tzone = "America/Chicago"),
      NA,
      precipProbability
    )
  ) |>
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
  mutate(windGust = windgusts_10m) |>
  mutate(
    windGust_limited = if_else(
      windgusts_10m - windSpeed > 10,
      windgusts_10m,
      NA
    )
  ) |>
  select(!windgusts_10m) |>
  mutate(windGust = if_else(windGust - windSpeed < 0, windSpeed, windGust)) |>
  mutate(dewPoint = dewpoint_2m) |>
  select(!dewpoint_2m) |>
  filter(time > now(tzone = "America/Chicago") - days(1)) |>
  mutate(rain = if_else(rain == 0, NA, rain)) |>
  mutate(snowfall = if_else(snowfall == 0, NA, snowfall)) |>
  mutate(snow_depth = if_else(snow_depth <= 0, NA, snow_depth)) |>
  mutate(
    snow_depth = if_else(
      datetime < now(tzone = "America/Chicago") + days(2),
      snow_depth,
      NA
    )
  ) |>
  mutate(
    apparent_temperature_limited = case_when(
      apparent_temperature - temperature > 5 ~ apparent_temperature,
      apparent_temperature - temperature < -5 ~ apparent_temperature,
      .default = NA
    )
  )
om_currently <- om$current_weather
om_daily <- as_tibble(om$daily)

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
  filter(time > now(tzone = "America/Chicago") - days(1))

rainfall <- round(sum(om_past24$rain, na.rm = TRUE), 2)
snowfall <- round(sum(om_past24$snowfall, na.rm = TRUE), 2)

om_2day_forecast <- om_hourly |>
  filter(time > now(tzone = "America/Chicago")) |>
  filter(time < now(tzone = "America/Chicago") + days(2))

rainfall_forecast <- round(sum(om_2day_forecast$rain, na.rm = TRUE), 2)
snowfall_forecast <- round(sum(om_2day_forecast$snowfall, na.rm = TRUE), 2)

any_rain <- if_else(all(is.na(om_hourly$rain)), FALSE, TRUE)
any_snow <- if_else(all(is.na(om_hourly$snowfall)), FALSE, TRUE)

## interactive ----
offset <- 60 * (hour(now(tzone = "America/Chicago")) - hour(now(tzone = "UTC")))
global <- getOption("highcharter.global")
global$useUTC <- FALSE
global$timezoneOffset <- offset
options(highcharter.global = global)

fig <- highchart() |>
  hc_add_series(
    data = om_hourly, ### temp ----
    type = "line",
    name = "Temperature",
    states = list(
      inactive = list(
        enabled = FALSE
      )
    ),
    label = list(
      enabled = TRUE
    ),
    zones = list(
      c(value = 0, color = "#F8D4FC"),
      c(value = 5, color = "#E5A4EB"),
      c(value = 10, color = "#D392DD"),
      c(value = 15, color = "#C07ECC"),
      c(value = 20, color = "#9D63C2"),
      c(value = 25, color = "#794DB4"),
      c(value = 30, color = "#5B4FA6"),
      c(value = 32, color = "#527DC7"),
      c(value = 40, color = "#65C1DE"),
      c(value = 45, color = "#6EDAE0"),
      c(value = 50, color = "#6EDBA2"),
      c(value = 55, color = "#69C954"),
      c(value = 60, color = "#93D452"),
      c(value = 65, color = "#E3E65B"),
      c(value = 70, color = "#FFFF61"),
      c(value = 75, color = "#F8D456"),
      c(value = 80, color = "#ED9749"),
      c(value = 85, color = "#DC6641"),
      c(value = 90, color = "#CA593E"),
      c(value = 95, color = "#B6493B"),
      c(value = 200, color = "#A44139")
    ),
    color = "black",
    lineWidth = 3,
    connectNulls = TRUE,
    tooltip = list(valueSuffix = "°", valueDecimals = 0),
    hcaes(x = time * 1000, y = temperature),
    yAxis = 0
  ) |>
  hc_add_series(
    data = om_hourly, ### feels like
    type = "line",
    name = "Feels Like",
    states = list(
      hover = list(
        enabled = FALSE
      ),
      inactive = list(
        enabled = FALSE
      )
    ),
    label = list(
      enabled = TRUE
    ),
    zones = list(
      c(value = 0, color = "#F8D4FC"),
      c(value = 5, color = "#E5A4EB"),
      c(value = 10, color = "#D392DD"),
      c(value = 15, color = "#C07ECC"),
      c(value = 20, color = "#9D63C2"),
      c(value = 25, color = "#794DB4"),
      c(value = 30, color = "#5B4FA6"),
      c(value = 32, color = "#527DC7"),
      c(value = 40, color = "#65C1DE"),
      c(value = 45, color = "#6EDAE0"),
      c(value = 50, color = "#6EDBA2"),
      c(value = 55, color = "#69C954"),
      c(value = 60, color = "#93D452"),
      c(value = 65, color = "#E3E65B"),
      c(value = 70, color = "#FFFF61"),
      c(value = 75, color = "#F8D456"),
      c(value = 80, color = "#ED9749"),
      c(value = 85, color = "#DC6641"),
      c(value = 90, color = "#CA593E"),
      c(value = 95, color = "#B6493B"),
      c(value = 200, color = "#A44139")
    ),
    color = "black",
    lineWidth = 0,
    connectNulls = FALSE,
    tooltip = list(valueSuffix = "°", valueDecimals = 0),
    hcaes(x = time * 1000, y = apparent_temperature_limited),
    yAxis = 0
  ) |>
  hc_add_series(
    data = om_hourly,
    type = "arearange",
    enableMouseTracking = FALSE,
    name = "Feels Like",
    states = list(
      inactive = list(
        enabled = FALSE
      )
    ),
    label = list(
      enabled = FALSE
    ),
    zones = list(
      c(value = 0, color = "#F8D4FC"),
      c(value = 5, color = "#E5A4EB"),
      c(value = 10, color = "#D392DD"),
      c(value = 15, color = "#C07ECC"),
      c(value = 20, color = "#9D63C2"),
      c(value = 25, color = "#794DB4"),
      c(value = 30, color = "#5B4FA6"),
      c(value = 32, color = "#527DC7"),
      c(value = 40, color = "#65C1DE"),
      c(value = 45, color = "#6EDAE0"),
      c(value = 50, color = "#6EDBA2"),
      c(value = 55, color = "#69C954"),
      c(value = 60, color = "#93D452"),
      c(value = 65, color = "#E3E65B"),
      c(value = 70, color = "#FFFF61"),
      c(value = 75, color = "#F8D456"),
      c(value = 80, color = "#ED9749"),
      c(value = 85, color = "#DC6641"),
      c(value = 90, color = "#CA593E"),
      c(value = 95, color = "#B6493B"),
      c(value = 200, color = "#A44139")
    ),
    color = "black",
    opacity = .4,
    lineWidth = 0,
    connectNulls = FALSE,
    tooltip = list(valueSuffix = "°", valueDecimals = 0),
    hcaes(x = time * 1000, low = apparent_temperature, high = temperature),
    yAxis = 0
  ) |>
  hc_add_series(
    data = om_hourly, ### dew point ----
    type = "line",
    name = "Dew Point",
    states = list(
      inactive = list(
        enabled = FALSE
      )
    ),
    label = list(
      enabled = TRUE
    ),
    zones = list(
      c(value = 0 - 10, color = "#F8D4FC"),
      c(value = 5 - 10, color = "#E5A4EB"),
      c(value = 10 - 10, color = "#D392DD"),
      c(value = 15 - 10, color = "#C07ECC"),
      c(value = 20 - 10, color = "#9D63C2"),
      c(value = 25 - 10, color = "#794DB4"),
      c(value = 30 - 10, color = "#5B4FA6"),
      c(value = 32 - 10, color = "#527DC7"),
      c(value = 40 - 10, color = "#65C1DE"),
      c(value = 45 - 10, color = "#6EDAE0"),
      c(value = 50 - 10, color = "#6EDBA2"),
      c(value = 55 - 10, color = "#69C954"),
      c(value = 60 - 10, color = "#93D452"),
      c(value = 65 - 10, color = "#E3E65B"),
      c(value = 70 - 10, color = "#FFFF61"),
      c(value = 75 - 10, color = "#F8D456"),
      c(value = 80 - 10, color = "#ED9749"),
      c(value = 85 - 10, color = "#DC6641"),
      c(value = 90 - 10, color = "#CA593E"),
      c(value = 95 - 10, color = "#B6493B"),
      c(value = 200, color = "#A44139")
    ),
    color = "black",
    lineWidth = 1,
    connectNulls = TRUE,
    tooltip = list(valueSuffix = "°", valueDecimals = 0),
    hcaes(x = time * 1000, y = dewPoint),
    yAxis = 0
  ) |>
  hc_add_series(
    data = om_hourly, ### precip ----
    type = "line",
    name = "Precip. Chance",
    states = list(
      inactive = list(
        enabled = FALSE
      )
    ),
    tooltip = list(valueSuffix = "%"),
    color = "#698490",
    label = list(
      enabled = TRUE
    ),
    hcaes(x = time * 1000, y = precipProbability),
    yAxis = 1
  ) |>
  hc_add_series(
    data = om_hourly,
    type = "column",
    name = "Rain",
    borderWidth = 0,
    groupPadding = 0,
    pointPadding = 0,
    pointWidth = 5,
    tooltip = list(valueSuffix = "″", valueDecimals = 2),
    states = list(
      inactive = list(
        enabled = FALSE
      )
    ),
    #tooltip = list(pointFormat = "{point.precipType}: <b>{point.precipAccumulation:.2f}″<b>"),
    hcaes(x = time * 1000, y = rain),
    color = "#b0dcf0",
    yAxis = 2
  ) |>
  hc_add_series(
    data = om_hourly,
    type = "column",
    name = "Snow",
    borderWidth = 0,
    groupPadding = 0,
    pointPadding = 0,
    pointWidth = 5,
    tooltip = list(valueSuffix = "″", valueDecimals = 2),
    states = list(
      inactive = list(
        enabled = FALSE
      )
    ),
    color = "#8AA5F1",
    #tooltip = list(pointFormat = "{point.precipType}: <b>{point.precipAccumulation:.2f}″<b>"),
    hcaes(x = time * 1000, y = snowfall),
    yAxis = 2
  ) |>
  hc_add_series(
    data = om_hourly,
    type = "line",
    name = "Snow Depth",
    states = list(
      inactive = list(
        enabled = FALSE
      )
    ),
    color = "#8AA5F1",
    tooltip = list(valueSuffix = "″", valueDecimals = 1),
    label = list(
      enabled = TRUE
    ),
    hcaes(x = time * 1000, y = snow_depth * 12),
    yAxis = 2
  ) |>
  hc_add_series(
    data = om_hourly, ### clouds ----
    type = "area",
    name = "Cloud Cover",
    states = list(
      inactive = list(
        enabled = FALSE
      )
    ),
    color = "lightgray",
    lineWidth = 0,
    tooltip = list(valueSuffix = "%"),
    label = list(
      enabled = TRUE
    ),
    hcaes(x = time * 1000, y = cloudCover),
    yAxis = 3
  ) |>
  hc_add_series(
    data = om_hourly, ### wind ----
    type = "line",
    name = "Wind",
    states = list(
      inactive = list(
        enabled = FALSE
      )
    ),
    connectNulls = TRUE,
    color = "gray",
    tooltip = list(valueSuffix = " mph", valueDecimals = 0),
    label = list(
      enabled = TRUE
    ),
    hcaes(x = time * 1000, y = windSpeed),
    yAxis = 4
  ) |>
  hc_add_series(
    data = om_hourly,
    type = "line",
    name = "Gusts",
    states = list(
      hover = list(
        enabled = FALSE
      ),
      inactive = list(
        enabled = FALSE
      )
    ),
    connectNulls = FALSE,
    color = "gray",
    tooltip = list(valueSuffix = " mph", valueDecimals = 0),
    label = list(
      enabled = TRUE
    ),
    lineWidth = 0,
    hcaes(x = time * 1000, y = windGust_limited),
    yAxis = 4
  ) |>
  hc_add_series(
    data = om_hourly,
    type = "arearange",
    name = "Gusts",
    states = list(
      inactive = list(
        enabled = FALSE
      )
    ),
    connectNulls = FALSE,
    color = "gray",
    tooltip = list(valueSuffix = " mph", valueDecimals = 0),
    label = list(
      enabled = TRUE
    ),
    lineWidth = 0,
    enableMouseTracking = FALSE,
    opacity = .35,
    hcaes(x = time * 1000, low = windSpeed, high = windGust),
    yAxis = 4
  ) |>
  hc_add_series(
    data = om_hourly, ### humidity ----
    type = "line",
    name = "Humidity",
    connectNulls = TRUE,
    states = list(
      inactive = list(
        enabled = FALSE
      )
    ),
    color = "#3288bd",
    tooltip = list(valueSuffix = "%", valueDecimals = 0),
    label = list(
      enabled = TRUE
    ),
    hcaes(x = time * 1000, y = humidity),
    yAxis = 5
  ) |>
  hc_add_series(
    data = om_hourly, ### uv ----
    type = "line",
    name = "UV Index",
    states = list(
      inactive = list(
        enabled = FALSE
      )
    ),
    tooltip = list(valueDecimals = 1),
    zones = list(
      c(value = 2, color = "#4C9329"),
      c(value = 5, color = "#F4E54C"),
      c(value = 7, color = "#E7652B"),
      c(value = 10, color = "#C72A23"),
      c(value = 100, color = "#674AC2")
    ),
    color = "black",
    label = list(
      enabled = TRUE
    ),
    hcaes(x = time * 1000, y = uv_index),
    yAxis = 6
  ) |>
  hc_add_series(
    data = om_air_quality,
    type = "line",
    name = "AQI",
    states = list(
      inactive = list(
        enabled = FALSE
      )
    ),
    tooltip = list(valueDecimals = 0),
    zones = list(
      c(value = 50, color = "#74C9AC"),
      c(value = 100, color = "#EEE661"),
      c(value = 150, color = "#E5AA55"),
      c(value = 200, color = "#EC5E57"),
      c(value = 300, color = "#891A34"),
      c(value = 500, color = "#73287D")
    ),
    color = "black",
    label = list(
      enabled = TRUE
    ),
    hcaes(x = time * 1000, y = us_aqi),
    yAxis = 7
  ) |>
  hc_yAxis_multiples(create_axis(
    naxis = 8,
    gridLineColor = "#D9D9D9",
    gridLineWidth = 2,
    heights = c(2, 1, 1, 1, 1, 1, 1, 1),
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
      ),
      NA,
      NA,
      NA,
      NA,
      NA,
      NA,
      NA
    ),
    softMax = c(NA, NA, .25, NA, 20, NA, NA, NA),
    endOnTick = FALSE,
    startOnTick = FALSE,
    max = c(NA, 100, NA, 100, NA, 100, NA, NA),
    min = c(NA, 0, NA, 0, 0, 0, 0, 0)
  )) |>
  hc_xAxis(
    type = "datetime",
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
        width = 1,
        zIndex = 2,
        value = as.numeric(now(tzone = "America/Chicago")) * 1000
      )
    ),
    min = 1000 * min(om_hourly$time),
    max = 1000 * max(om_hourly$time),
    plotBands = list(
      list(
        #label = list(text = "Now"),
        color = "#FFFFF5",
        width = 1,
        zIndex = 1,
        from = 1000 * om_daylight$sunriseTime[[1]],
        to = 1000 * om_daylight$sunsetTime[[1]]
      ),
      list(
        #label = list(text = "Now"),
        color = "#FFFFF5",
        width = 1,
        zIndex = 1,
        from = 1000 * om_daylight$sunriseTime[[2]],
        to = 1000 * om_daylight$sunsetTime[[2]]
      ),
      list(
        #label = list(text = "Now"),
        color = "#FFFFF5",
        width = 1,
        zIndex = 1,
        from = 1000 * om_daylight$sunriseTime[[3]],
        to = 1000 * om_daylight$sunsetTime[[3]]
      ),
      list(
        #label = list(text = "Now"),
        color = "#FFFFF5",
        width = 1,
        zIndex = 1,
        from = 1000 * om_daylight$sunriseTime[[4]],
        to = 1000 * om_daylight$sunsetTime[[4]]
      ),
      list(
        #label = list(text = "Now"),
        color = "#FFFFF5",
        width = 1,
        zIndex = 1,
        from = 1000 * om_daylight$sunriseTime[[5]],
        to = 1000 * om_daylight$sunsetTime[[5]]
      ),
      list(
        #label = list(text = "Now"),
        color = "#FFFFF5",
        width = 1,
        zIndex = 1,
        from = 1000 * om_daylight$sunriseTime[[6]],
        to = 1000 * om_daylight$sunsetTime[[6]]
      ),
      list(
        #label = list(text = "Now"),
        color = "#FFFFF5",
        width = 1,
        zIndex = 1,
        from = 1000 * om_daylight$sunriseTime[[7]],
        to = 1000 * om_daylight$sunsetTime[[7]]
      ),
      list(
        #label = list(text = "Now"),
        color = "#FFFFF5",
        width = 1,
        zIndex = 1,
        from = 1000 * om_daylight$sunriseTime[[8]],
        to = 1000 * om_daylight$sunsetTime[[8]]
      ),
      list(
        #label = list(text = "Now"),
        color = "#FFFFF5",
        width = 1,
        zIndex = 1,
        from = 1000 * om_daylight$sunriseTime[[9]],
        to = 1000 * om_daylight$sunsetTime[[9]]
      ),
      list(
        #label = list(text = "Now"),
        color = "#FFFFF5",
        width = 1,
        zIndex = 1,
        from = 1000 * om_daylight$sunriseTime[[10]],
        to = 1000 * om_daylight$sunsetTime[[10]]
      ),
      list(
        #label = list(text = "Now"),
        color = "#FFFFF5",
        width = 1,
        zIndex = 1,
        from = 1000 * om_daylight$sunriseTime[[11]],
        to = 1000 * om_daylight$sunsetTime[[11]]
      ),
      list(
        #label = list(text = "Now"),
        color = "#FFFFF5",
        width = 1,
        zIndex = 1,
        from = 1000 * om_daylight$sunriseTime[[12]],
        to = 1000 * om_daylight$sunsetTime[[12]]
      ),
      list(
        #label = list(text = "Now"),
        color = "#FFFFF5",
        width = 1,
        zIndex = 1,
        from = 1000 * om_daylight$sunriseTime[[13]],
        to = 1000 * om_daylight$sunsetTime[[13]]
      ),
      list(
        #label = list(text = "Now"),
        color = "#FFFFF5",
        width = 1,
        zIndex = 1,
        from = 1000 * om_daylight$sunriseTime[[14]],
        to = 1000 * om_daylight$sunsetTime[[14]]
      ),
      list(
        #label = list(text = "Now"),
        color = "#FFFFF5",
        width = 1,
        zIndex = 1,
        from = 1000 * om_daylight$sunriseTime[[15]],
        to = 1000 * om_daylight$sunsetTime[[15]]
      ),
      list(
        #label = list(text = "Now"),
        color = "#FFFFF5",
        width = 1,
        zIndex = 1,
        from = 1000 * om_daylight$sunriseTime[[16]],
        to = 1000 * om_daylight$sunsetTime[[16]]
      ),
      list(
        #label = list(text = "Now"),
        color = "#FFFFF5",
        width = 1,
        zIndex = 1,
        from = 1000 * om_daylight$sunriseTime[[17]],
        to = 1000 * om_daylight$sunsetTime[[17]]
      )
    )
  ) %>%
  hc_tooltip(
    shared = TRUE,
    split = TRUE,
    borderWidth = 0,
    padding = 4,
    crosshairs = TRUE,
    dateTimeLabelFormats = list(
      hour = "%A, %b %e, %l%P",
      minute = "%A, %b %e, %l%P",
      millisecond = "%A, %b %e, %l%P"
    )
  ) %>%
  hc_add_theme(
    hc_theme_bloom()
  ) |>
  hc_credits(
    enabled = TRUE,
    text = paste("Source: Open-Meteo. Latest data:", now_formatted),
    href = "https://open-meteo.com"
  ) |>
  hc_legend(enabled = FALSE) |>
  hc_chart(
    plotBackgroundColor = "#E8EEF5",
    scrollablePlotArea = list(
      minWidth = 700
    )
  )
fig
saveWidget(
  widget = fig,
  file = "interactive/champaign_weather.html",
  selfcontained = FALSE,
  libdir = "interactive"
)

# nws snow forecast ----
snow <- GET("https://www.weather.gov/source/ilx/winter/snow_prob.xml")
content <- content(snow)
list <- as_list(content)
date <- ymd_hm(list$forecast$timestamp[[1]], tz = "UTC")
time <- strftime(x = date, tz = "US/Central", format = "%I:%M% %p CT, %b %d")
csv <- list$forecast$text[[1]]
table <- read.csv(text = csv, header = FALSE) |>
  janitor::clean_names() |>
  mutate(city = v1) |>
  mutate(state = v2) |>
  mutate(county = v3) |>
  mutate(unsure = v4) |>
  mutate(potential_low_end = v5) |>
  mutate(potential_expected = v6) |>
  mutate(potential_high_end = v7) |>
  mutate(chance_01 = v8) |>
  mutate(chance_1 = v9) |>
  mutate(chance_2 = v10) |>
  mutate(chance_4 = v11) |>
  mutate(chance_6 = v12) |>
  mutate(chance_8 = v13) |>
  mutate(chance_12 = v14) |>
  mutate(chance_18 = v15) |>
  select(!(c(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15)))
intervals_table <- table |>
  mutate(chance_0_01 = 100 - chance_01) |>
  mutate(chance_01_1 = chance_01 - chance_1) |>
  mutate(chance_1_2 = chance_1 - chance_2) |>
  mutate(chance_2_4 = chance_2 - chance_4) |>
  mutate(chance_4_6 = chance_4 - chance_6) |>
  mutate(chance_6_8 = chance_6 - chance_8) |>
  mutate(chance_8_12 = chance_8 - chance_12) |>
  mutate(chance_12_18 = chance_12 - chance_18) |>
  mutate(chance_18_up = chance_18) |>
  select(
    city,
    chance_0_01,
    chance_01_1,
    chance_1_2,
    chance_2_4,
    chance_4_6,
    chance_6_8,
    chance_8_12,
    chance_12_18,
    chance_18_up
  )

champaign_chances <- table |>
  filter(city == "Champaign") |>
  select(
    !c(
      state,
      county,
      unsure,
      potential_low_end,
      potential_expected,
      potential_high_end
    )
  ) |>
  pivot_longer(!c(city)) |>
  mutate(
    name = case_match(
      name,
      "chance_01" ~ ">=0.1″",
      "chance_1" ~ ">=1″",
      "chance_2" ~ ">=2″",
      "chance_4" ~ ">=4″",
      "chance_6" ~ ">=6″",
      "chance_8" ~ ">=8″",
      "chance_12" ~ ">=12″",
      "chance_18" ~ ">=18″"
    )
  )

champaign_any_snow <- champaign_chances$value[[1]]

champaign_intervals_chances <- intervals_table |>
  filter(city == "Champaign") |>
  pivot_longer(!c(city)) |>
  mutate(
    name = case_match(
      name,
      "chance_0_01" ~ "<0.1″",
      "chance_01_1" ~ "0.1–1″",
      "chance_1_2" ~ "1–2″",
      "chance_2_4" ~ "2–4″",
      "chance_4_6" ~ "4–6″",
      "chance_6_8" ~ "6–8″",
      "chance_8_12" ~ "8–12″",
      "chance_12_18" ~ "12–18″",
      "chance_18_up" ~ "≥18″"
    )
  ) |>
  mutate(
    name = case_match(
      name,
      "<0.1″" ~ .01,
      "0.1–1″" ~ .1,
      "1–2″" ~ 1,
      "2–4″" ~ 2,
      "4–6″" ~ 4,
      "6–8″" ~ 6,
      "8–12″" ~ 8,
      "12–18″" ~ 12,
      "≥18″" ~ 18
    )
  )

fig <- highchart() |>
  hc_add_series(
    data = champaign_intervals_chances,
    type = "area",
    step = "left",
    color = "#8AA5F1",
    groupPadding = 0,
    dataLabels = list(
      align = "left",
      enabled = TRUE,
      format = "{point.value}%"
    ),
    hcaes(y = value, x = name)
  ) |>
  hc_tooltip(enabled = FALSE) |>
  hc_legend(enabled = FALSE) |>
  hc_xAxis(
    labels = list(
      format = "{value} in."
    )
  ) |>
  hc_yAxis(visible = FALSE, softMax = 50) |>
  hc_credits(
    enabled = TRUE,
    text = paste("Source: NWS. Latest data:", time),
    href = "https://www.weather.gov/ilx/winter"
  ) |>
  hc_add_theme(hc_theme_bloom())
fig
saveWidget(
  widget = fig,
  file = "interactive/champaign_snow_chance.html",
  selfcontained = FALSE,
  libdir = "interactive"
)

# AQI ----

om_air_quality_now <- om_air_quality_now |>
  mutate(
    color = case_when(
      us_aqi <= 50 ~ "🟩",
      us_aqi <= 100 ~ "🟨",
      us_aqi <= 150 ~ "🟧",
      us_aqi <= 200 ~ "🟥",
      us_aqi <= 300 ~ "🟪",
      us_aqi <= 500 ~ "🟫",
      us_aqi <= 1000 ~ ""
    )
  ) |>
  mutate(aqi_plus_text = paste0("- ", us_aqi, " AQI ", color, "\n"))

if (is.na(om_air_quality_now$us_aqi)) {
  champaign_aqi <- ""
} else {
  champaign_aqi <- om_air_quality_now$aqi_plus_text
}

# set variables ----
champaign_temp <- paste(round(om_currently$temperature), "°", sep = "")
champaign_humidity <- paste(100 * pirate_currently$humidity, "%", sep = "")
champaign_dewpoint_helper <- om_hourly |>
  filter(time > now(tzone = "America/Chicago")) |>
  head(1)
champaign_dewpoint <- paste0(round(champaign_dewpoint_helper$dewPoint), "°")
champaign_desc <- pirate_currently$summary
champaign_wind_speed <- paste(round(om_currently$windspeed), "mph")
champaign_precip <- case_when(
  rainfall > 0 && snowfall > 0 ~
    paste(
      "-",
      rainfall,
      "inches of rain and",
      snowfall,
      "inches of snow in the past 24 hours\n"
    ),
  rainfall > 0 && snowfall == 0 ~
    paste("-", rainfall, "inches of rain in the past 24 hours\n"),
  snowfall > 0 && rainfall == 0 ~
    paste("-", snowfall, "inches of snow in the past 24 hours\n"),
  rainfall == 0 && snowfall == 0 ~ paste("")
)
champaign_precip_forecast <- case_when(
  rainfall_forecast > 0 &&
    snowfall_forecast > 0 &&
    rainfall_forecast >= snowfall_forecast ~
    paste(
      "-",
      rainfall_forecast,
      "inches of rain and",
      snowfall_forecast,
      "inches of snow expected in the next 48 hours\n"
    ),
  rainfall_forecast > 0 &&
    snowfall_forecast > 0 &&
    rainfall_forecast < snowfall_forecast ~
    paste(
      "-",
      snowfall_forecast,
      "inches of snow and",
      rainfall_forecast,
      "inches of rain expected in the next 48 hours\n"
    ),
  rainfall_forecast > 0 && snowfall_forecast == 0 ~
    paste(
      "-",
      rainfall_forecast,
      "inches of rain expected in the next 48 hours\n"
    ),
  snowfall_forecast > 0 && rainfall_forecast == 0 ~
    paste(
      "-",
      snowfall_forecast,
      "inches of snow expected in the next 48 hours\n"
    ),
  rainfall_forecast == 0 && snowfall_forecast == 0 ~ paste("")
)
champaign_clouds <- paste0(round(100 * pirate_currently$cloudCover), "%")
champaign_snow_depth_helper <- om_hourly |>
  filter(time > now(tzone = "America/Chicago")) |>
  head(1)
champaign_snow_depth <- round(champaign_snow_depth_helper$snow_depth, 1)
champaign_snow_depth_text <- if_else(
  is.na(champaign_snow_depth),
  "",
  paste0("About ", champaign_snow_depth, " inches of snow on the ground\n")
)

# save temp data ----

weather_data <- tibble(
  utc_time = as_datetime(pirate_currently$time),
  temp = pirate_currently$temperature
)

write_csv(x = weather_data, file = "data/champaign_weather.csv", append = TRUE)

# temp comparison chart ----

temp_history <- read_csv("data/champaign_weather.csv") %>%
  mutate(central_time = with_tz(utc_time, tzone = "America/Chicago"))

temps_past_hour <- temp_history %>%
  tail(1) %>%
  mutate(period = "Now") %>%
  select(temp, period, central_time) %>%
  arrange(temp)
temps_today <- temp_history %>%
  filter(as_date(central_time) == as_date(today(tzone = "America/Chicago"))) %>%
  mutate(period = "Today") %>%
  select(temp, period, central_time) %>%
  arrange(temp)
temps_yesterday <- temp_history %>%
  filter(
    as_date(central_time) == as_date(today(tzone = "America/Chicago") - days(1))
  ) %>%
  mutate(period = "Yesterday") %>%
  select(temp, period, central_time) %>%
  arrange(temp)
temps_past_day <- temp_history %>%
  filter(central_time > now(tzone = "America/Chicago") - days(1)) %>%
  mutate(period = "Past Day") %>%
  select(temp, period, central_time) %>%
  arrange(temp)
temps_past_week <- temp_history %>%
  filter(central_time > now(tzone = "America/Chicago") - weeks(1)) %>%
  mutate(period = "Past Week") %>%
  select(temp, period, central_time) %>%
  arrange(temp)
temps_past_month <- temp_history %>%
  filter(central_time > now(tzone = "America/Chicago") - days(31)) %>%
  mutate(period = "Past Month") %>%
  select(temp, period, central_time) %>%
  arrange(temp)
temps_past_year <- temp_history %>%
  filter(central_time > now(tzone = "America/Chicago") - years(1)) %>%
  mutate(period = "Past Year") %>%
  select(temp, period, central_time) %>%
  arrange(temp)
temps_past_decade <- temp_history %>%
  filter(central_time > now(tzone = "America/Chicago") - years(10)) %>%
  mutate(period = "Past Decade") %>%
  select(temp, period, central_time) %>%
  arrange(temp)
temps_past_century <- temp_history %>%
  mutate(period = "All Records (since 1888)") %>%
  select(temp, period, central_time) %>%
  arrange(temp)
temps_next_week <- pirate_hourly %>%
  mutate(temp = temperature) |>
  mutate(central_time = datetime) |>
  mutate(period = "Next Week") %>%
  select(temp, period, central_time) %>%
  arrange(temp)

temps <- full_join(temps_past_hour, temps_today) %>%
  full_join(temps_yesterday) %>%
  full_join(temps_past_week) %>%
  full_join(temps_past_month) %>%
  full_join(temps_past_year) %>%
  full_join(temps_past_decade) %>%
  full_join(temps_past_century) %>%
  full_join(temps_next_week)

his_los <- tibble(
  period = c(
    "All Records (since 1888)",
    "Past Decade",
    "Past Year",
    "Past Month",
    "Past Week",
    "Yesterday",
    "Today",
    "Now",
    "Next Week"
  ),
  min = c(
    min(temps_past_century$temp),
    min(temps_past_decade$temp),
    min(temps_past_year$temp),
    min(temps_past_month$temp),
    min(temps_past_week$temp),
    min(temps_yesterday$temp),
    min(temps_today$temp),
    as.numeric("NA"),
    min(temps_next_week$temp)
  ),
  max = c(
    max(temps_past_century$temp),
    max(temps_past_decade$temp),
    max(temps_past_year$temp),
    max(temps_past_month$temp),
    max(temps_past_week$temp),
    max(temps_yesterday$temp),
    max(temps_today$temp),
    max(temps_past_hour$temp),
    max(temps_next_week$temp)
  )
)

his_los_longer <- pivot_longer(his_los, cols = c(min, max))

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

fig1 <- hchart(
  his_los_longer,
  hcaes(x = period, y = round(value), group = period),
  enableMouseTracking = FALSE,
  marker = list(
    #radius = 4,
    symbol = "circle"
  ),
  #label = list(
  #  enabled = TRUE),
  lineWidth = 9,
  zones = list(
    c(value = 10, color = "#5e4fa2"),
    c(value = 10, color = "#3288bd"),
    c(value = 20, color = "#66c2a5"),
    c(value = 32, color = "#abdda4"),
    c(value = 40, color = "#e6f598"),
    c(value = 50, color = "#ffffbf"),
    c(value = 60, color = "#fee08b"),
    c(value = 70, color = "#fdae61"),
    c(value = 80, color = "#f46d43"),
    c(value = 90, color = "#d53e4f"),
    c(value = 200, color = "#9e0142")
  ),
  type = "line"
) %>%
  hc_add_series(
    his_los,
    enableMouseTracking = FALSE,
    hcaes(x = period, y = round(max)),
    dataLabels = list(
      enabled = TRUE,
      align = "left",
      verticalAlign = "middle"
    ),
    zones = list(
      c(value = 10, color = "#5e4fa2"),
      c(value = 10, color = "#3288bd"),
      c(value = 20, color = "#66c2a5"),
      c(value = 32, color = "#abdda4"),
      c(value = 40, color = "#e6f598"),
      c(value = 50, color = "#ffffbf"),
      c(value = 60, color = "#fee08b"),
      c(value = 70, color = "#fdae61"),
      c(value = 80, color = "#f46d43"),
      c(value = 90, color = "#d53e4f"),
      c(value = 200, color = "#9e0142")
    ),
    tooltip = list(
      pointFormat = "Max: {point.max:.0f}°"
    ),
    marker = list(
      radius = 2,
      symbol = "circle"
    ),
    type = "scatter"
  ) %>%
  hc_add_series(
    his_los,
    enableMouseTracking = FALSE,
    hcaes(x = period, y = round(min)),
    tooltip = list(
      pointFormat = "Min: {point.min:.0f}°"
    ),
    dataLabels = list(
      enabled = TRUE,
      align = "right",
      verticalAlign = "middle"
    ),
    marker = list(
      radius = 2,
      symbol = "circle"
    ),
    zones = list(
      c(value = 10, color = "#5e4fa2"),
      c(value = 10, color = "#3288bd"),
      c(value = 20, color = "#66c2a5"),
      c(value = 32, color = "#abdda4"),
      c(value = 40, color = "#e6f598"),
      c(value = 50, color = "#ffffbf"),
      c(value = 60, color = "#fee08b"),
      c(value = 70, color = "#fdae61"),
      c(value = 80, color = "#f46d43"),
      c(value = 90, color = "#d53e4f"),
      c(value = 200, color = "#9e0142")
    ),
    type = "scatter"
  ) %>%
  hc_chart(inverted = TRUE) %>%
  hc_yAxis(
    title = "",
    gridLineWidth = 0,
    labels = list(
      enabled = FALSE
    )
  ) %>%
  hc_xAxis(
    title = "",
    lineWidth = 0,
    categories = c(
      "All Records (since 1888)",
      "Past Decade",
      "Past Year",
      "Past Month",
      "Past Week",
      "Yesterday",
      "Today",
      "Now",
      "Next Week"
    )
  ) %>%
  hc_legend(enabled = FALSE) #%>%
# hc_add_theme(
#   hc_theme_bloom()
# )
fig1
saveWidget(
  widget = fig1,
  file = "interactive/champaign_temp_comparison.html",
  selfcontained = FALSE,
  libdir = "interactive"
)


ggplot(data = temps, aes(x = period, y = temp)) +
  geom_hline(data = temps_past_hour, aes(yintercept = temp, color = temp)) +
  geom_line(data = temps, aes(color = temp), linewidth = 4) +
  geom_text(
    data = his_los,
    aes(x = period, y = min, label = round(min)),
    nudge_y = -4
  ) +
  geom_text(
    data = his_los,
    aes(x = period, y = max, label = round(max)),
    nudge_y = if_else(is.na(his_los$min), 0, 4)
  ) +
  geom_text(
    data = his_los,
    aes(
      x = period,
      y = if_else(is.na(min), max, (min + max) / 2),
      label = period
    ),
    #vjust =.5,
    angle = 90,
    size = 3,
    #nudge_y = 1,
    nudge_x = -.2,
    color = "grey60"
  ) +
  scale_x_discrete(
    limits = c(
      "All Records (since 1888)",
      "Past Decade",
      "Past Year",
      "Past Month",
      "Past Week",
      "Yesterday",
      "Today",
      "Now",
      "Next Week"
    ),
    labels = NULL
  ) +
  scale_color_distiller(palette = "Spectral", guide = NULL) +
  theme_minimal() +
  scale_y_continuous(labels = NULL) +
  labs(x = NULL, y = NULL, caption = "Source: OpenWeather, MRCC, NWS") +
  theme(
    axis.text.x = element_text(angle = 90),
    plot.background = element_rect(fill = "white", color = "white"),
    panel.grid = element_blank(),
    plot.caption = element_text(color = "grey70")
  )

ggsave(
  "plots/temp_history.png",
  bg = "white",
  width = 8,
  height = 8 * (628 / 1200),
  dpi = 320
)

ggplot(data = temps, aes(x = period, y = temp)) +
  geom_hline(data = temps_past_hour, aes(yintercept = temp, color = temp)) +
  geom_line(data = temps, aes(color = temp), linewidth = 4) +
  geom_text(
    data = his_los,
    aes(x = period, y = min, label = round(min)),
    nudge_y = -4
  ) +
  geom_text(
    data = his_los,
    aes(x = period, y = max, label = round(max)),
    nudge_y = if_else(is.na(his_los$min), 0, 4)
  ) +
  geom_text(
    data = his_los,
    aes(
      x = period,
      y = if_else(is.na(min), max, (min + max) / 2),
      label = period
    ),
    #vjust =.5,
    angle = 90,
    size = 2.75,
    #nudge_y = 1,
    nudge_x = -.35,
    color = "grey60"
  ) +
  scale_x_discrete(
    limits = c(
      "All Records (since 1888)",
      "Past Decade",
      "Past Year",
      "Past Month",
      "Past Week",
      "Yesterday",
      "Today",
      "Now",
      "Next Week"
    ),
    labels = NULL
  ) +
  scale_color_distiller(palette = "Spectral", guide = NULL) +
  theme_minimal() +
  scale_y_continuous(labels = NULL) +
  labs(x = NULL, y = NULL, caption = "Source: OpenWeather, MRCC, NWS") +
  theme(
    axis.text.x = element_text(angle = 90),
    plot.background = element_rect(fill = "white", color = "white"),
    panel.grid = element_blank(),
    plot.caption = element_text(color = "grey70")
  )

ggsave(
  "plots/temp_history_mobile.png",
  bg = "white",
  width = 4,
  height = 8 * (628 / 1200),
  dpi = 320
)


# almanac ----
## om ----
om_past_url <- paste0(
  "https://api.open-meteo.com/v1/forecast?latitude=40.11&longitude=-88.21&daily=temperature_2m_max,temperature_2m_min,precipitation_sum&temperature_unit=fahrenheit&windspeed_unit=mph&precipitation_unit=inch&past_days=92&forecast_days=16&timezone=America%2FChicago"
)
om_past <- rio::import(om_past_url, format = "json")
om_past_daily <- as_tibble(om_past$daily) |>
  mutate(DATE = as_date(time)) |>
  mutate(TMAX = temperature_2m_max) |>
  select(!temperature_2m_max) |>
  mutate(TMIN = temperature_2m_min) |>
  select(!temperature_2m_min) |>
  mutate(PRCP = precipitation_sum) |>
  select(!precipitation_sum) |>
  filter(DATE < today(tzone = "America/Chicago")) |>
  select(DATE, PRCP, TMAX, TMIN)

om_forecast_daily <- as_tibble(om_past$daily) |>
  mutate(date = as_date(time)) |>
  mutate(Forecast_max = temperature_2m_max) |>
  select(!temperature_2m_max) |>
  mutate(Forecast_min = temperature_2m_min) |>
  select(!temperature_2m_min) |>
  filter(date >= today(tzone = "America/Chicago")) |>
  select(date, Forecast_max, Forecast_min) |>
  mutate(
    date = as_date(paste0(
      year(today(tzone = "America/Chicago")),
      "-",
      month(date),
      "-",
      day(date)
    ))
  )

## ncei ----
old_ncei <- read_csv(file = "data/ncei.csv") |>
  select(!STATION) |>
  mutate(DATE = as_date(DATE))

ncei <- full_join(
  old_ncei,
  om_past_daily,
  join_by(DATE),
  suffix = c("_NCEI", "_OM")
) |>
  mutate(PRCP = if_else(is.na(PRCP_NCEI), PRCP_OM, PRCP_NCEI)) |>
  select(!c(PRCP_OM, PRCP_NCEI)) |>
  mutate(
    TMAX = case_when(
      is.na(TMAX_NCEI) ~ TMAX_OM,
      is.na(TMAX_OM) ~ TMAX_NCEI,
      .default = TMAX_NCEI
    )
  ) |>
  select(!c(TMAX_NCEI, TMAX_OM)) |>
  mutate(
    TMIN = case_when(
      is.na(TMIN_NCEI) ~ TMIN_OM,
      is.na(TMIN_OM) ~ TMIN_NCEI,
      .default = TMIN_NCEI
    )
  ) |>
  select(!c(TMIN_NCEI, TMIN_OM))

# record_min, record_max, today_current, today_min, today_max, normal_min, normal_max
today_temp_history <- temp_history %>%
  select(temp, central_time) %>%
  filter(month(central_time) == month(today(tzone = "America/Chicago"))) %>%
  filter(mday(central_time) == mday(today(tzone = "America/Chicago"))) %>%
  mutate(date = ymd(as_date(central_time)))

temp_history <- ncei |>
  pivot_longer(cols = c(TMIN, TMAX)) |>
  mutate(central_time = ymd(as_date(DATE))) |>
  mutate(temp = value) |>
  drop_na() |>
  select(central_time, temp)

temps_past_year <- temp_history %>%
  filter(central_time > now(tzone = "America/Chicago") - years(1)) %>%
  mutate(period = "Past Year") %>%
  select(temp, period, central_time) %>%
  arrange(temp)

record_maxs <- temp_history %>%
  mutate(date = date(central_time)) %>%
  mutate(month = month(date)) %>%
  mutate(day = day(date)) %>%
  group_by(month, day) %>%
  summarise(Record_max = max(temp)) %>%
  ungroup() %>%
  mutate(
    date = paste0(year(today(tzone = "America/Chicago")), "-", month, "-", day)
  ) %>%
  filter(date != paste0(year(today(tzone = "America/Chicago")), "-2-29")) %>%
  mutate(date = ymd(date)) %>%
  select(date, Record_max)

record_mins <- temp_history %>%
  mutate(date = date(central_time)) %>%
  mutate(month = month(date)) %>%
  mutate(day = day(date)) %>%
  group_by(month, day) %>%
  summarise(Record_min = min(temp)) %>%
  ungroup() %>%
  mutate(
    date = paste0(year(today(tzone = "America/Chicago")), "-", month, "-", day)
  ) %>%
  filter(date != paste0(year(today(tzone = "America/Chicago")), "-2-29")) %>%
  mutate(date = ymd(date)) %>%
  select(date, Record_min)

records <- full_join(record_maxs, record_mins)

record_range <- today_temp_history %>%
  select(temp) %>%
  mutate(period = "Record (since 1902)")

seq <- seq(
  from = min(record_range$temp),
  to = max(record_range$temp),
  length.out = 100
)
records_range <- tibble(period = "Record (since 1902)", temp = seq)

normal_daily_precip_prep <- read_csv("data/normal_precip.csv") %>%
  clean_names() %>%
  select(date, mly_prcp_normal) %>%
  mutate(
    date = ymd(paste0(year(today(tzone = "America/Chicago")), "-", date, "-01"))
  ) %>%
  mutate(normal_daily_precip = mly_prcp_normal) %>%
  select(date, normal_daily_precip)
normal_daily_precip <- read_csv("data/normals_willard.csv") %>%
  clean_names() %>%
  select(date) %>%
  filter(date != "02-29") %>%
  mutate(
    date = ymd(paste0(year(today(tzone = "America/Chicago")), "-", date))
  ) %>%
  full_join(normal_daily_precip_prep) %>%
  fill(normal_daily_precip, .direction = "down") %>%
  mutate(month = month(date))
df_new <- as.data.frame(
  lapply(normal_daily_precip, as.character),
  stringsAsFactors = FALSE
)
df_new_monthly_precip <- head(
  do.call(rbind, by(df_new, normal_daily_precip$month, rbind, "")),
  -1
) %>%
  mutate(date = ymd(date)) %>%
  mutate(normal_daily_precip = as.numeric(normal_daily_precip)) %>%
  select(date, normal_daily_precip)

normal_monthly_precip <- read_csv("data/normals_willard.csv") %>%
  clean_names() %>%
  select(date, mtd_prcp_normal) %>%
  filter(date != "02-29") %>%
  mutate(
    date = ymd(paste0(year(today(tzone = "America/Chicago")), "-", date))
  ) %>%
  mutate(normal_monthly_precip = mtd_prcp_normal) %>%
  select(date, normal_monthly_precip) %>%
  mutate(month = month(date))
df_new <- as.data.frame(
  lapply(normal_monthly_precip, as.character),
  stringsAsFactors = FALSE
)
df_newer <- head(
  do.call(rbind, by(df_new, normal_monthly_precip$month, rbind, "")),
  -1
) %>%
  mutate(date = ymd(date)) %>%
  mutate(normal_monthly_precip = as.numeric(normal_monthly_precip)) %>%
  select(date, normal_monthly_precip)


normals <- read_csv("data/normals.csv") %>%
  filter(date != "02-29") %>%
  mutate(
    date = ymd(paste0(year(today(tzone = "America/Chicago")), "-", date))
  ) %>%
  select(date, min, max) %>%
  mutate(Normal_min = min) %>%
  mutate(Normal_max = max) %>%
  select(date, Normal_min, Normal_max)

normals_today <- normals %>%
  filter(month(date) == month(today(tzone = "America/Chicago"))) %>%
  filter(mday(date) == mday(today(tzone = "America/Chicago")))

normals_longer <- normals_today %>%
  pivot_longer(cols = c(Normal_min, Normal_max))

seq <- seq(
  from = min(normals_longer$value),
  to = max(normals_longer$value),
  length.out = 100
)
normals_range <- tibble(period = "Normal (1991–2020)", temp = seq)

temps_past_eleven_months <- temps_past_year %>%
  filter(central_time > now(tzone = "America/Chicago") - weeks(48)) %>%
  mutate(period = "Past 11 Months") %>%
  select(temp, period, central_time)

daily_maxs <- temps_past_eleven_months %>%
  mutate(date = date(central_time)) %>%
  mutate(month = month(date)) %>%
  mutate(day = day(date)) %>%
  group_by(month, day) %>%
  summarise(Actual_max = max(temp)) %>%
  ungroup() %>%
  mutate(
    date = paste0(year(today(tzone = "America/Chicago")), "-", month, "-", day)
  ) %>%
  filter(date != paste0(year(today(tzone = "America/Chicago")), "-2-29")) %>%
  mutate(date = ymd(date)) %>%
  select(date, Actual_max)

daily_mins <- temps_past_eleven_months %>%
  mutate(date = date(central_time)) %>%
  mutate(month = month(date)) %>%
  mutate(day = day(date)) %>%
  group_by(month, day) %>%
  summarise(Actual_min = min(temp)) %>%
  ungroup() %>%
  mutate(
    date = paste0(year(today(tzone = "America/Chicago")), "-", month, "-", day)
  ) %>%
  filter(date != paste0(year(today(tzone = "America/Chicago")), "-2-29")) %>%
  mutate(date = ymd(date)) %>%
  select(date, Actual_min)

dailies <- full_join(daily_maxs, daily_mins)

eleven_months_ago <- ceiling_date(
  now(tzone = "America/Chicago") - weeks(48),
  "month"
)

monthly_rain <- ncei %>%
  mutate(date = DATE) |>
  mutate(precip_one_hour = PRCP) |>
  select(date, precip_one_hour) %>%
  filter(date > eleven_months_ago) %>%
  mutate(year = year(date)) %>%
  mutate(month = month(date)) %>%
  mutate(day = day(date)) %>%
  group_by(year, month, day) %>%
  summarise(daily_precip_total = sum(precip_one_hour, na.rm = TRUE)) %>%
  ungroup() %>%
  mutate(date = ymd(paste0(year, "-", month, "-", day), tz = "US/Central")) %>%
  select(date, year, month, daily_precip_total) %>%
  group_by(year, month) %>%
  mutate(month_precip_sum = cumsum(daily_precip_total)) %>%
  ungroup() %>%
  select(date, daily_precip_total, month_precip_sum) %>%
  mutate(
    date = paste0(
      year(today(tzone = "America/Chicago")),
      "-",
      month(date),
      "-",
      day(date)
    )
  ) %>%
  filter(date != paste0(year(today(tzone = "America/Chicago")), "-2-29")) %>%
  mutate(date = ymd(date)) %>%
  select(date, daily_precip_total, month_precip_sum)

today_rain <- full_join(normal_monthly_precip, monthly_rain) %>%
  filter(date == today(tzone = "America/Chicago")) %>%
  mutate("MTD Normal" = normal_monthly_precip) %>%
  mutate("MTD Actual" = month_precip_sum) %>%
  mutate("Daily" = daily_precip_total) %>%
  mutate(date = as.Date(date)) %>%
  select(date, "MTD Normal", "MTD Actual", "Daily") %>%
  pivot_longer(!date)

current_temp <- temps_past_hour %>%
  mutate(date = date(central_time)) %>%
  mutate(Now = temp) %>%
  select(date, Now)

year_weather_data <- full_join(records, normals) %>%
  full_join(dailies) %>%
  full_join(monthly_rain) %>%
  full_join(om_forecast_daily) |>
  mutate(date = ymd(date))

year_precip <- year_weather_data %>%
  select(date, daily_precip_total, month_precip_sum) %>%
  mutate(month = month(date))
df_new <- as.data.frame(
  lapply(year_precip, as.character),
  stringsAsFactors = FALSE
)
df_new_precip <- head(
  do.call(rbind, by(df_new, year_precip$month, rbind, "")),
  -1
) %>%
  mutate(date = ymd(date)) %>%
  mutate(daily_precip_total = as.numeric(daily_precip_total)) %>%
  mutate(month_precip_sum = as.numeric(month_precip_sum)) %>%
  select(date, daily_precip_total, month_precip_sum)


record_his <- year_weather_data %>%
  mutate(
    records = case_when(
      round(Record_max) == round(Actual_max) ~ "Record high",
      round(Record_min) == round(Actual_min) ~ "Record low",
      TRUE ~ ""
    )
  ) %>%
  filter(records == "Record high") %>%
  select(date, Record_max)
record_los <- year_weather_data %>%
  mutate(
    records = case_when(
      round(Record_max) == round(Actual_max) ~ "Record high",
      round(Record_min) == round(Actual_min) ~ "Record low",
      TRUE ~ ""
    )
  ) %>%
  filter(records == "Record low") %>%
  select(date, Record_min)

year_weather_data_longer <- year_weather_data %>%
  pivot_longer(
    !c(date, daily_precip_total, month_precip_sum),
    names_to = c("type", "min_max"),
    names_sep = "_"
  ) %>%
  pivot_wider(names_from = min_max, values_from = value) %>%
  select(date, type, max, min)
year_weather_data_longer$type <- factor(
  year_weather_data_longer$type,
  level = c("Record", "Normal", "Actual", "Forecast")
)
today_weather_data <- year_weather_data %>%
  mutate("Record high" = Record_max) %>%
  mutate("Record low" = Record_min) %>%
  mutate("Normal high" = Normal_max) %>%
  mutate("Normal low" = Normal_min) %>%
  mutate("Actual high" = Actual_max) %>%
  mutate("Actual low" = Actual_min) %>%
  select(
    date,
    "Record high",
    "Record low",
    "Normal high",
    "Normal low",
    "Actual high",
    "Actual low"
  ) %>%
  filter(date == today(tzone = "America/Chicago"))
today_weather_data_longer <- today_weather_data %>%
  pivot_longer(!date)

## weather year plot ----
offset <- 60 * (hour(now(tzone = "America/Chicago")) - hour(now(tzone = "UTC")))
global <- getOption("highcharter.global")
global$useUTC <- TRUE
global$timezoneOffset <- offset
options(highcharter.global = global)


fig <- highchart() |>
  hc_add_series(
    year_weather_data_longer,
    "arearange",
    hcaes(x = date, low = round(min), high = round(max), group = type),
    step = "center",
    states = list(
      hover = list(
        enabled = FALSE
      ),
      inactive = list(
        enabled = FALSE
      )
    ),
    animation = FALSE,
    marker = list(
      radius = 1
    ),
    lineWidth = 0,
    fillOpacity = 1,
    tooltip = list(valueSuffix = "°"),
    yAxis = 0
  ) %>%
  hc_yAxis_multiples(create_axis(
    naxis = 2,
    heights = c(5, 1),
    endOnTick = FALSE,
    startOnTick = FALSE,
    title = list(text = NULL)
  )) %>%
  hc_add_series(
    data = df_newer,
    hcaes(x = date, y = normal_monthly_precip),
    type = "area",
    lineWidth = 1,
    marker = list(
      radius = 1,
      symbol = "circle"
    ),
    name = "MTD Normal",
    animation = FALSE,
    tooltip = list(valueSuffix = "{value}″"),
    step = "center",
    fillOpacity = .1,
    color = "#698490",
    yAxis = 1
  ) %>%
  hc_add_series(
    data = df_new_precip,
    hcaes(x = date, y = month_precip_sum),
    type = "area",
    marker = list(
      radius = 1,
      symbol = "circle"
    ),
    states = list(
      inactive = list(
        enabled = FALSE
      )
    ),
    animation = FALSE,
    lineWidth = 1,
    step = "center",
    name = "MTD Actual",
    tooltip = list(valueSuffix = "{value}″"),
    color = "#b0dcf0",
    yAxis = 1
  ) %>%
  hc_add_series(
    data = df_new_monthly_precip,
    hcaes(x = date, y = normal_daily_precip),
    type = "line",
    marker = list(
      radius = 1,
      symbol = "circle"
    ),
    animation = FALSE,
    lineWidth = 1,
    step = "center",
    name = "Monthly Avg.",
    tooltip = list(valueSuffix = "{value}″"),
    color = "#698490",
    yAxis = 1
  ) %>%
  hc_add_series(
    data = df_new_precip,
    hcaes(x = date, y = daily_precip_total),
    type = "column",
    name = "Daily",
    states = list(
      inactive = list(
        enabled = FALSE
      )
    ),
    animation = FALSE,
    tooltip = list(valueSuffix = "{value}″"),
    color = "#698490",
    yAxis = 1
  ) %>%
  hc_xAxis(
    type = "datetime",
    crosshair = TRUE,
    title = "",
    showLastLabel = FALSE,
    labels = list(
      format = "{value:%b}"
    )
  ) %>%
  hc_legend(enabled = FALSE) %>%
  hc_colors(c("#e9e8df", "#c2afb1", "#a6003f", "#53001f")) %>%
  hc_tooltip(shared = TRUE, xDateFormat = "%B %e") %>%
  hc_credits(
    enabled = TRUE,
    text = "Source: NCEI, Open-Meteo",
    href = "https://bzigterman.com/interactive/champaign_weather_year.html"
  ) %>%
  hc_add_theme(
    hc_theme_bloom()
  )
fig
saveWidget(
  widget = fig,
  file = "interactive/champaign_weather_year.html",
  selfcontained = FALSE,
  libdir = "interactive"
)

p <- ggplot(year_weather_data, aes(x = date)) +
  geom_segment(
    aes(xend = date, y = Record_min, yend = Record_max),
    color = "#e9e8df",
    linewidth = .75
  ) +
  geom_segment(
    aes(xend = date, y = Normal_min, yend = Normal_max),
    color = "#c2afb1",
    linewidth = .75
  ) +
  geom_segment(
    aes(xend = date, y = Actual_min, yend = Actual_max),
    color = "#a6003f",
    linewidth = .75
  ) +
  scale_x_date(
    date_labels = "%b",
    expand = c(0.01, 0.01),
    name = NULL,
    date_breaks = "1 month"
  ) +
  scale_y_continuous(name = NULL) +
  theme_minimal() +
  theme(
    panel.grid.minor = element_blank(),
    panel.grid.major.x = element_line(color = "gray80", linetype = "dashed"),
    panel.grid.major.y = element_line(color = "gray93")
  )
p
ggsave(
  "plots/champaign_weather_year.png",
  bg = "white",
  width = 8,
  height = 8 * (628 / 1200),
  dpi = 320
)

ggsave(
  "plots/champaign_weather_year_mobile.png",
  bg = "white",
  width = 4,
  height = 8 * (628 / 1200),
  dpi = 320
)

temps <- full_join(records_range, normals_range) %>%
  full_join(temps_today) %>%
  full_join(temps_past_hour) %>%
  select(period, temp)

almanac_data <- tibble(
  period = c("Record (since 1888)", "Normal (1991–2020)", "Today", "Now"),
  min = c(
    min(today_temp_history$temp),
    normals_today$Normal_min,
    min(temps_today$temp),
    as.numeric("NA")
  ),
  max = c(
    max(today_temp_history$temp),
    normals_today$Normal_max,
    max(temps_today$temp),
    max(temps_past_hour$temp)
  )
)

almanac_longer <- pivot_longer(almanac_data, cols = c(min, max)) %>%
  mutate(
    period = recode_factor(
      period,
      "current" = "Current",
      "today" = "Today",
      "normal" = "Normal (1991–2020)",
      "record" = "Record (since 1888)"
    )
  )

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
p <- ggplot(data = temps, aes(x = period, y = temp)) +
  geom_hline(data = temps_past_hour, aes(yintercept = temp, color = temp)) +
  geom_line(data = temps, aes(color = temp), size = 4) +
  geom_text(
    data = almanac_data,
    aes(x = period, y = min, label = round(min)),
    nudge_y = -2
  ) +
  geom_text(
    data = almanac_data,
    aes(x = period, y = max, label = round(max)),
    nudge_y = if_else(is.na(almanac_data$min), 0, 2)
  ) +
  geom_text(
    data = almanac_data,
    aes(
      x = period,
      y = if_else(is.na(min), max, (min + max) / 2),
      label = period
    ),
    #vjust =.5,
    angle = 90,
    size = 3,
    #nudge_y = 1,
    nudge_x = -.2,
    color = "grey60"
  ) +
  scale_x_discrete(
    limits = c(
      "Now",
      "Today",
      "Normal (1991–2020)",
      "Record (since 1888)"
    ),
    labels = NULL
  ) +
  scale_color_distiller(palette = "Spectral", guide = NULL) +
  theme_minimal() +
  scale_y_continuous(labels = NULL) +
  labs(x = NULL, y = NULL, caption = "Source: OpenWeather, MRCC, NWS") +
  theme(
    axis.text.x = element_text(angle = 90),
    plot.background = element_rect(fill = "white", color = "white"),
    panel.grid = element_blank(),
    plot.caption = element_text(color = "grey70")
  )
p
ggsave(
  "plots/champaign_almanac_mobile.png",
  bg = "white",
  width = 4,
  height = 8 * (628 / 1200),
  dpi = 320
)

p +
  theme(
    plot.margin = margin(0, 180, 0, 180)
  )

ggsave(
  "plots/champaign_almanac.png",
  bg = "white",
  width = 8,
  height = 8 * (628 / 1200),
  dpi = 320
)

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

# web text ----
severe_weather_outlook_url <-
  paste(
    "![](",
    "https://www.spc.noaa.gov/products/activity_loop.gif",
    ")",
    sep = ""
  )

winter_storm_url <-
  paste(
    "![](",
    "https://www.wpc.ncep.noaa.gov/wwd/wssi/images/WSSI_Overall_CONUS.png",
    ")",
    sep = ""
  )

if (champaign_any_snow > 0) {
  champaign_snow_forecast <-
    paste(
      "## Two-Day Snow Potential

<iframe src=\"/interactive/champaign_snow_chance.html\" width=\"100%\" height=\"250\"> 
</iframe>"
    )
} else {
  champaign_snow_forecast <- ""
}

if (any_rain) {
  rain_map <-
    paste0(
      "## Severe Thunderstorm Outlook

",
      severe_weather_outlook_url,
      "

<p class=\"updated_time\">Source: <a href=\"https://www.spc.noaa.gov\">NOAA/NWS Storm Prediction Center</a>.</p> 
"
    )
} else {
  rain_map = ""
}

if (any_snow) {
  winter_map <-
    paste0(
      "## Winter Storm Severity Index

",
      winter_storm_url,
      "

<p class=\"updated_time\">Source: <a href=\"https://www.wpc.ncep.noaa.gov/wwd/wssi/wssi.php\">NOAA/NWS Weather Prediction Center</a>.</p> 
"
    )
} else {
  winter_map = ""
}

cat(
  "---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

",
  now_html,
  "

<iframe src=\"/interactive/champaign_weather.html\" width=\"100%\" height=\"600\"> 
</iframe>

Currently:

- ",
  champaign_temp,
  "
- ",
  champaign_desc,
  "
- ",
  champaign_humidity,
  " humidity
- ",
  champaign_wind_speed,
  " wind
- ",
  champaign_clouds,
  " cloud cover
",
  champaign_aqi,
  "",
  champaign_snow_depth_text,
  champaign_precip,
  "",
  champaign_precip_forecast,
  "

The current weather is posted regularly on Mastodon <a rel=\"me\" href=\"https://mastodon.social/@ChampaignWeather\">@ChampaignWeather@mastodon.social</a>

## [Compare Forecast Models »]({{ site.baseurl }}/projects/weather/forecasts)

",
  champaign_snow_forecast,
  "

## Temperature History

<iframe src=\"/interactive/champaign_weather_year.html\" width=\"100%\" height=\"500\"> 
</iframe>

The chart above is my attempt at recreating the classic [*New York Times* weather chart](https://www.nytimes.com/interactive/2016/02/18/upshot/the-times-classic-weather-chart-now-online-with-3000-cities.html), which was [highlighted by Ed Tufte](https://www.edwardtufte.com/bboard/q-and-a-fetch-msg?msg_id=00014g) in his book *The Visual Display of Quantitative Information*.

## [Seasonal Forecast]({{ site.baseurl }}/projects/weather/seasonal)

<picture>
  <source srcset=\"{{ site.baseurl }}/plots/temp_history.png\"
          media=\"(min-width: 750px)\">
  <img src=\"{{ site.baseurl }}/plots/temp_history_mobile.png\" alt=\"\" />
</picture>

## [Soil]({{ site.baseurl }}/projects/weather/soil)

",
  rain_map,
  "

",
  winter_map,
  "

",
  file = "projects/weather.md",
  sep = ""
)
