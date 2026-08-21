---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 03:24 PM CT, August 21</p>

<picture>
  <source srcset="{{ site.baseurl }}/plots/weather_2026-08-21_2024.png"
          media="(min-width: 750px)">
  <img src="{{ site.baseurl }}/plots/weather_2026-08-21_2024_mobile.png" alt="" />
</picture>

Today's high is 82°, which is 2° **warmer** than yesterday. Tomorrow is expected to be 1° *colder* than today.

Currently:

- 82°
- Mostly Clear
- 55% humidity
- 3 mph wind
- 24% cloud cover
- 56 AQI 🟨
- 0.09 inches of rain expected in the next 48 hours

<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Fri:  0.00"     58 ---------------- 82
<b>Sat:  0.09"          66 ---------- 81</b>
<b>Sun:  0.00"      60 ----------- 76</b>
Mon:  0.00"    57 ------------ 75
Tue:  0.00"   56 -------------- 76
Wed:  0.09"       62 ------------- 81
Thu:  0.11"         64 ---------- 79
Fri:  0.00"      60 ------------ 78
<b>Sat:  1.21"         65 ----------- 80</b>
<b>Sun:  0.01"             70 --------- 84</b>
Mon:  0.48"           68 --------------- 89
Tue:  0.35"           68 ------------- 86
Wed:  0.00"         65 ----------- 80
Thu:  1.63"            69 ------ 78
Fri:  0.01"             70 ----------- 86
<b>Sat:  0.02"          66 ---------- 80</b></code></pre>

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




