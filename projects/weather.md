---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 08:53 PM CT, August 12</p>

<iframe src="/interactive/champaign_weather.html" width="100%" height="600"> 
</iframe>

Today's high is 80°, which is 8° *colder* than yesterday. Tomorrow is expected to be 2° **warmer** than today.

Currently:

- 71°
- Clear
- 95% humidity
- 5 mph wind
- 0% cloud cover
- 34 AQI 🟩
- 0.42 inches of rain in the past 24 hours

<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Wed:  0.13"             68 ------- 80
Thu:  0.00"             67 -------- 82
Fri:  0.00"              70 ------- 82
Sat:  0.00"               72 ----------- 91
Sun:  0.02"              69 ---------- 87
Mon:  0.02"          63 -------- 76
Tue:  0.00"         60 ---------- 79
Wed:  0.05"           64 -------------- 89
Thu:  0.21"             68 ------------- 91
Fri:  0.00"         61 -------- 75
Sat:  0.00"       57 ------------ 78
Sun:  0.00"         60 ------------ 82
Mon:  0.00"         61 ---------------- 90
Tue:  0.00"           64 --------- 80
Wed:  0.07"          62 ----------- 82
Thu:  0.00"   50 -------- 65</code></pre>

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




