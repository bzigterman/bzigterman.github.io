---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 08:26 PM CT, July 05</p>

<iframe src="/interactive/champaign_weather.html" width="100%" height="600"> 
</iframe>

Today's high is 83°, which is 5° *colder* than yesterday. Tomorrow is expected to be 1° **warmer** than today.

Currently:

- 75°
- Drizzle
- 82% humidity
- 2 mph wind
- 24% cloud cover
- 46 AQI 🟩

<noscript>
<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Sun:  1.42"                 68 --------------------- 83
Mon:  0.00"                  69 ---------------------- 84
Tue:  0.00"            65 ----------------------- 81
Wed:  0.00"            65 ------------------------- 82
Thu:  0.35"                 68 -------------------------- 86
Fri:  0.19"               67 -------------------- 81
Sat:  0.07"                   70 --------------------- 84
Sun:  0.01"                 68 ------------------ 81
Mon:  0.00"                   70 ------------------------- 87
Tue:  0.00"           64 -------------------------- 82
Wed:  0.00"     60 ----------------------- 76
Thu:  0.00"        62 ---------------------- 77
Fri:  0.57"      61 ---------------- 72
Sat:  0.12"           64 ----------- 72
Sun:  0.05"     60 -------------------------- 78
Mon:  0.00"           64 ------------------------ 81</code></pre>
</noscript>
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




