library(tidyverse)

severe_weather_outlook_url <- 
  paste("![](",
        "https://www.spc.noaa.gov/products/activity_loop.gif",
        ")",
        sep = ""
  )
  
winter_storm_url <- 
  paste("![](",
        "https://origin.wpc.ncep.noaa.gov/wwd/wssi/images/WSSI_Overall_Day1_CONUS_Day1.png",
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

<p class=\"updated_time\">Source: <a href=\"https://www.spc.noaa.gov\">NOAA/NWS Storm Prediction Center</a>.</p> 

## Winter Storm Severity Index

",winter_storm_url,"

<p class=\"updated_time\">Source: <a href=\"https://www.wpc.ncep.noaa.gov/wwd/wssi/wssi.php\">NOAA/NWS Weather Prediction Center</a>.</p> 


",
sep = ""
)

write_lines(web_text,"projects/weather.md")


