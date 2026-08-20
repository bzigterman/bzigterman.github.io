---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 12:57 AM CT, August 20</p>

<picture>
  <source srcset="{{ site.baseurl }}/plots/weather_2026-08-20_0557.png"
          media="(min-width: 750px)">
  <img src="{{ site.baseurl }}/plots/weather_2026-08-20_0557_mobile.png" alt="" />
</picture>

Today's high is 80°, which is 2° *colder* than yesterday. Tomorrow is expected to be 3° **warmer** than today.

Currently:

- 68°
- Drizzle
- 93% humidity
- 12 mph wind
- 78% cloud cover
- 38 AQI 🟩
- 0.19 inches of rain in the past 24 hours
- 0.01 inches of rain expected in the next 48 hours

<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Thu:  0.02"          66 -------- 80
Fri:  0.00"       61 ------------ 82
Sat:  0.09"        62 --------- 78
Sun:  0.00"    56 ----------- 74
Mon:  0.00"   54 ------------ 74
Tue:  0.00"     58 ------------- 80
Wed:  0.05"          66 --------- 82
Thu:  0.00"        62 ----------- 81
Fri:  0.00"        62 ----------- 82
Sat:  0.17"           68 --------------- 93
Sun:  0.00"        63 ----------- 81
Mon:  0.00"       60 --------- 76
Tue:  0.05"          65 --------------- 92
Wed:  0.00"     57 ------------ 77
Thu:  0.00"   54 ---------- 71</code></pre>

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




