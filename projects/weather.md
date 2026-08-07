---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 06:56 AM CT, August 07</p>

<iframe src="/interactive/champaign_weather.html" width="100%" height="600"> 
</iframe>

Today's high is 86°, which is 7° **warmer** than yesterday. Tomorrow is expected to be 3° **warmer** than today.

Currently:

- 68°
- Foggy
- 99% humidity
- 4 mph wind
- 91% cloud cover
- 21 AQI 🟩
- 0.08 inches of rain in the past 24 hours

<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Fri:  0.00"         66 ------------ 86
Sat:  0.00"           69 ----------- 88
Sun:  0.00"         66 ------------ 86
Mon:  0.03"            71 ---------- 88
Tue:  0.16"            71 ---------- 88
Wed:  0.26"            70 ------ 81
Thu:  0.00"        64 -------- 78
Fri:  0.00"        63 --------- 80
Sat:  0.60"         66 -------- 79
Sun:  0.00"    57 ----------- 76
Mon:  0.00"   55 ------------ 76
Tue:  0.00"        64 ------------- 87
Wed:  0.09"           68 ------- 81
Thu:  0.00"          67 ----------- 87
Fri:  0.00"               76 ----------- 95
Sat:  0.00"         65 ------- 78</code></pre>

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




