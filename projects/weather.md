---
layout: page
title: Weather
permalink: /projects/weather
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign Forecast

<p class="updated_time"> Latest data: 02:09 PM CT, February 07</p>

<iframe src="/interactive/champaign_weather.html" width="100%" height="600"> 
</iframe>

Currently:

- 50°
- Cloudy
- 54% humidity
- 15 mph wind
- 100% cloud cover
- 43 AQI 🟩
- 1 inches of rain and 0.62 inches of snow expected in the next 72 hours


The current weather is posted regularly on Mastodon <a rel="me" href="https://mastodon.social/@ChampaignWeather">@ChampaignWeather@mastodon.social</a>

## Temperature History

<iframe src="/interactive/champaign_weather_year.html" width="100%" height="500"> 
</iframe>

The chart above is my attempt at recreating the classic [*New York Times* weather chart](https://www.nytimes.com/interactive/2016/02/18/upshot/the-times-classic-weather-chart-now-online-with-3000-cities.html), which was [highlighted by Ed Tufte](https://www.edwardtufte.com/bboard/q-and-a-fetch-msg?msg_id=00014g) in his book *The Visual Display of Quantitative Information*.

<picture>
  <source srcset="{{ site.baseurl }}/plots/temp_history.png"
          media="(min-width: 750px)">
  <img src="{{ site.baseurl }}/plots/temp_history_mobile.png" alt="" />
</picture>

## Severe Thunderstorm Outlook

![](https://www.spc.noaa.gov/products/activity_loop.gif)

<p class="updated_time">Source: <a href="https://www.spc.noaa.gov">NOAA/NWS Storm Prediction Center</a>.</p> 

## Winter Storm Severity Index

![](https://origin.wpc.ncep.noaa.gov/wwd/wssi/images/WSSI_Overall_CONUS.png)

<p class="updated_time">Source: <a href="https://www.wpc.ncep.noaa.gov/wwd/wssi/wssi.php">NOAA/NWS Weather Prediction Center</a>.</p> 


