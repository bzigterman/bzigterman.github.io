---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 11:07 PM CT, August 13</p>

<iframe src="/interactive/champaign_weather.html" width="100%" height="600"> 
</iframe>

Today's high is 83°, which is 3° **warmer** than yesterday. Tomorrow is expected to be 7° **warmer** than today.

Currently:

- 71°
- Clear
- 95% humidity
- 5 mph wind
- 10% cloud cover
- 39 AQI 🟩
- 0.15 inches of rain in the past 24 hours
- 1.46 inches of rain expected in the next 48 hours

<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Thu:  0.07"          66 ---------- 83
Fri:  0.02"            70 ------------ 90
Sat:  1.40"             71 -------- 85
Sun:  0.01"              74 ------- 85
Mon:  0.11"      60 ---------- 77
Tue:  0.00"   55 -------------- 79
Wed:  0.00"           68 -------------- 91
Thu:  0.00"       62 ---------- 78
Fri:  0.00"         65 ---------------- 91
Sat:  0.00"              74 ----------- 92
Sun:  0.00"                77 --------- 92
Mon:  0.04"              74 ----------- 92
Tue:  0.06"         64 ----------- 83
Wed:  0.00"       62 ------------- 83
Thu:  0.00"       62 -------------- 85
Fri:  0.00"          66 ---------------- 93</code></pre>

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




