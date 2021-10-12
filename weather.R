library(tidyverse)

severe_weather_outlook_url <- 
  paste("![](",
        "https://www.spc.noaa.gov/products/activity_loop.gif",
        ")",
        sep = ""
  )

# web text ----

web_text <- paste(
  "---
layout: page
title: Weather
permalink: /charts/weather/
---

## Severe Weather Outlook

",severe_weather_outlook_url,"

Source: [NWS](https://www.spc.noaa.gov)

",
sep = ""
)

write_lines(web_text,"charts/weather.md")


