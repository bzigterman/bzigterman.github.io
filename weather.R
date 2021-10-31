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
permalink: /projects/weather/
---

## Severe Weather Outlook

",severe_weather_outlook_url,"

<p class=\"updated_time\">Source: <a href=\"https://www.spc.noaa.gov\">NWS</a>.</p> 

",
sep = ""
)

write_lines(web_text,"projects/weather.md")


