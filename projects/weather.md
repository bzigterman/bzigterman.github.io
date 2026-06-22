---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 08:53 PM CT, June 21</p>

<iframe src="/interactive/champaign_weather.html" width="100%" height="600"> 
</iframe>

Today's high is 74°, which is 7° *colder* than yesterday. Tomorrow is expected to be 3° *colder* than today.

Currently:

- 67°
- Drizzle
- 95% humidity
- 8 mph wind
- 86% cloud cover
- 50 AQI 🟩
- 0.87 inches of rain in the past 24 hours
- 0.01 inches of rain expected in the next 48 hours

<noscript>
<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Sun:  3.84"          61 ---------------- 74
Mon:  0.00"         60 ------------- 71
Tue:  0.00"    56 ---------------------- 74
Wed:  0.00"        59 -------------------- 76
Thu:  0.00"              64 ------------------ 79
Fri:  0.01"           62 --------------------- 79
Sat:  0.29"                   68 --------------------- 86
Sun:  0.01"                      71 ------------------- 87
Mon:  0.00"                            76 --------------- 89
Tue:  0.09"                 67 ------------------ 82
Wed:  0.00"             63 --------------------- 81
Thu:  0.00"                    69 ------------------------- 90
Fri:  0.02"           62 ------------------------ 82
Sat:  0.00"                66 ----------------------------- 90
Sun:  0.13"                      71 ---------------- 84
Mon:  0.06"                 67 ---------------- 80</code></pre>
</noscript>
The current weather is posted regularly on Mastodon <a rel="me" href="https://mastodon.social/@ChampaignWeather">@ChampaignWeather@mastodon.social</a>

## [Compare Forecast Models »]({{ site.baseurl }}/projects/weather/forecasts)



## Temperature History

<iframe src="/interactive/champaign_weather_year.html" width="100%" height="500"> 
</iframe>

The chart above is my attempt at recreating the classic [*New York Times* weather chart](https://www.nytimes.com/interactive/2016/02/18/upshot/the-times-classic-weather-chart-now-online-with-3000-cities.html), which was [highlighted by Ed Tufte](https://www.edwardtufte.com/bboard/q-and-a-fetch-msg?msg_id=00014g) in his book *The Visual Display of Quantitative Information*.

## [Seasonal Forecast »]({{ site.baseurl }}/projects/weather/seasonal)

<picture>
  <source srcset="{{ site.baseurl }}/plots/temp_history.png"
          media="(min-width: 750px)">
  <img src="{{ site.baseurl }}/plots/temp_history_mobile.png" alt="" />
</picture>

## [Soil »]({{ site.baseurl }}/projects/weather/soil)

## Severe Thunderstorm Outlook

![](https://www.spc.noaa.gov/products/activity_loop.gif)

<p class="updated_time">Source: <a href="https://www.spc.noaa.gov">NOAA/NWS Storm Prediction Center</a>.</p> 




