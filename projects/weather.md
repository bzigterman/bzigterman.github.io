---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 10:37 AM CT, August 10</p>

<iframe src="/interactive/champaign_weather.html" width="100%" height="600"> 
</iframe>

Today's high is 97°, which is 8° **warmer** than yesterday. Tomorrow is expected to be 1° **warmer** than today.

Currently:

- 86°
- Clear
- 77% humidity
- 12 mph wind
- 3% cloud cover
- 33 AQI 🟩
- 0.43 inches of rain expected in the next 48 hours

<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Mon:  0.02"            75 ------------- 97
Tue:  0.42"          72 ---------------- 98
Wed:  0.01"         70 ---------- 87
Thu:  0.12"       67 --------- 82
Fri:  0.66"      64 ------- 76
Sat:  0.13"      64 ----------- 84
Sun:  0.00"         69 ---------- 86
Mon:  0.00"   60 --------- 75
Tue:  0.00"    61 ----------- 80
Wed:  0.00"         70 ------------ 90
Thu:  0.02"              79 --------- 93
Fri:  0.10"          72 --------- 87
Sat:  0.34"         69 ------------ 90
Sun:  0.17"         70 ---------- 86
Mon:  0.24"          72 ------- 83
Tue:  0.00"           73 ----------- 92</code></pre>

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




