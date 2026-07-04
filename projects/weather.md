---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 08:20 AM CT, July 04</p>

<iframe src="/interactive/champaign_weather.html" width="100%" height="600"> 
</iframe>

Today's high is 90°, which is 6° *colder* than yesterday. Tomorrow is expected to be 10° *colder* than today.

Currently:

- 75°
- Partly Cloudy
- 88% humidity
- 6 mph wind
- 54% cloud cover
- 30 AQI 🟩
- 0.19 inches of rain in the past 24 hours
- 0.01 inches of rain expected in the next 48 hours

<noscript>
<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Sat:  0.10"                     70 ------------------------ 90
Sun:  0.00"                    69 ------------- 80
Mon:  0.00"                66 ------------------- 82
Tue:  0.00"          61 ----------------------- 80
Wed:  0.00"          61 ------------------------- 82
Thu:  0.10"                     70 --------------- 83
Fri:  0.03"                      71 ------- 77
Sat:  0.01"                66 ------------------- 82
Sun:  0.01"       58 --------------- 71
Mon:  0.00"    56 ------------------ 71
Tue:  0.00"        59 --------------------- 77
Wed:  0.00"             63 -------------------- 80
Thu:  0.00"               65 -------------------- 82
Fri:  0.05"                    69 ------------- 80
Sat:  0.00"                      71 ----------------- 85
Sun:  0.26"                      71 ------------ 81</code></pre>
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




