---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 07:02 PM CT, August 05</p>

<iframe src="/interactive/champaign_weather.html" width="100%" height="600"> 
</iframe>

Today's high is 84°, which is 0° **warmer** than yesterday. Tomorrow is expected to be 3° *colder* than today.

Currently:

- 75°
- Drizzle
- 84% humidity
- 6 mph wind
- 93% cloud cover
- 52 AQI 🟨
- 0.13 inches of rain in the past 24 hours
- 0.12 inches of rain expected in the next 48 hours

<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Wed:  0.47"          64 ------------- 84
Thu:  0.02"              70 -------- 82
Fri:  0.04"             68 ----------- 85
Sat:  0.11"             69 ----------- 85
Sun:  0.00"              70 ------------ 88
Mon:  0.04"               72 --------- 86
Tue:  0.48"              70 ----- 78
Wed:  0.57"              70 ---------- 85
Thu:  0.00"        61 ---------- 76
Fri:  0.93"       60 ------ 69
Sat:  0.57"             69 -------- 81
Sun:  0.94"              70 ------- 81
Mon:  1.14"       60 ----------- 76
Tue:  0.00"   54 --------------- 77
Wed:  0.11"        61 ------------ 80
Thu:  0.00"               72 --------- 86</code></pre>

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




