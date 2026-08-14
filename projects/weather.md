---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 04:23 PM CT, August 14</p>

<iframe src="/interactive/champaign_weather.html" width="100%" height="600"> 
</iframe>

Today's high is 78°, which is 5° *colder* than yesterday. Tomorrow is expected to be 6° **warmer** than today.

Currently:

- 78°
- Mostly Cloudy
- 86% humidity
- 3 mph wind
- 71% cloud cover
- 39 AQI 🟩
- 0.93 inches of rain in the past 24 hours
- 1.15 inches of rain expected in the next 48 hours

<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Fri:  0.18"             69 ----- 78
Sat:  1.49"              71 -------- 84
Sun:  0.26"               73 -------- 86
Mon:  0.05"             69 ------- 80
Tue:  0.00"           66 ---------- 82
Wed:  0.08"             69 -------- 82
Thu:  0.20"        61 ------ 72
Fri:  0.00"     57 --------- 72
Sat:  0.00"   54 ------------ 73
Sun:  0.00"     57 ------------- 78
Mon:  0.00"        62 ------------- 82
Tue:  0.00"             70 ------------- 90
Wed:  0.00"              71 ------------ 90
Thu:  0.00"              72 ----------- 89
Fri:  0.09"          64 ----------- 82
Sat:  0.02"        61 ----------- 79</code></pre>

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




