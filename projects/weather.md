---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 10:26 PM CT, October 16</p>

<picture>
  <source srcset="{{ site.baseurl }}/plots/weather_2026-10-17_0326.png"
          media="(min-width: 750px)">
  <img src="{{ site.baseurl }}/plots/weather_2026-10-17_0326_mobile.png" alt="" />
</picture>

Today's high is 64°, which is 8° *colder* than yesterday. Tomorrow is expected to be 9° *colder* than today.

Currently:

- 47°
- Mostly Clear
- 79% humidity
- 11 mph wind
- 35% cloud cover
- 27 AQI 🟩
- 0.02 inches of rain in the past 24 hours

<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Fri:  0.09"        45 ----------- 64
<b>Sat:  0.00"    39 ---------- 55</b>
<b>Sun:  0.00"   37 ---------------- 63</b>
Mon:  0.00"        45 ------------- 67
Tue:  0.00"          48 ------------ 69
Wed:  0.00"          48 ------------- 70
Thu:  0.00"            51 ------------- 74
Fri:  0.00"             54 ------------ 74
<b>Sat:  0.00"             53 ------------- 75</b>
<b>Sun:  0.00"            51 ------- 64</b>
Mon:  0.00"            51 --------- 67
Tue:  0.10"               57 ------ 67
Wed:  0.70"         47 -------- 60
Thu:  0.31"       44 -------- 57
Fri:  0.02"            51 ----------- 70
<b>Sat:  0.00"        45 ------ 56</b></code></pre>

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




