---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 05:38 PM CT, October 15</p>

<picture>
  <source srcset="{{ site.baseurl }}/plots/weather_2026-10-15_2238.png"
          media="(min-width: 750px)">
  <img src="{{ site.baseurl }}/plots/weather_2026-10-15_2238_mobile.png" alt="" />
</picture>

Today's high is 72°, which is 5° *colder* than yesterday. Tomorrow is expected to be 8° *colder* than today.

Currently:

- 70°
- Overcast
- 96% humidity
- 11 mph wind
- 100% cloud cover
- 46 AQI 🟩
- 0.41 inches of rain in the past 24 hours
- 0.1 inches of rain expected in the next 48 hours

<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Thu:  0.21"                 62 ------ 72
Fri:  0.00"      41 ------------ 64
<b>Sat:  0.00"   35 ----------- 56</b>
<b>Sun:  0.00"      40 ------------ 64</b>
Mon:  0.00"         46 ------------ 69
Tue:  0.00"            51 ---------- 70
Wed:  0.00"              55 -------- 71
Thu:  0.00"            52 ------------ 74
Fri:  0.00"             54 ----------- 75
<b>Sat:  0.00"               58 ---------- 76</b>
<b>Sun:  0.00"               57 --------- 75</b>
Mon:  0.00"           50 ------------- 74
Tue:  0.00"              55 ---------- 75
Wed:  0.00"                60 --------- 76
Thu:  0.01"             54 ------------- 78
Fri:  0.23"          48 -------- 63</code></pre>

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




