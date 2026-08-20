---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 12:27 PM CT, August 20</p>

<picture>
  <source srcset="{{ site.baseurl }}/plots/weather_2026-08-20_1727.png"
          media="(min-width: 750px)">
  <img src="{{ site.baseurl }}/plots/weather_2026-08-20_1727_mobile.png" alt="" />
</picture>

Today's high is 80°, which is 2° *colder* than yesterday. Tomorrow is expected to be 3° **warmer** than today.

Currently:

- 77°
- Clear
- 66% humidity
- 6 mph wind
- 3% cloud cover
- 24 AQI 🟩
- 0.19 inches of rain in the past 24 hours

<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Thu:  0.00"          67 -------- 80
Fri:  0.00"     60 --------------- 83
Sat:  0.00"        64 --------- 78
Sun:  0.00"   57 ----------- 74
Mon:  0.00"     60 --------- 74
Tue:  0.01"      61 ------------ 80
Wed:  0.24"         66 ----------- 82
Thu:  0.28"       62 --------- 77
Fri:  0.00"      61 ------------ 80
Sat:  0.00"        64 ---------------- 88
Sun:  0.00"             71 ------------- 91
Mon:  0.00"             72 ------------- 91
Tue:  0.04"           69 ------- 80
Wed:  0.01"            70 ----------- 87
Thu:  0.65"             71 ----- 80
Fri:  0.06"           68 ---------- 84</code></pre>

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




