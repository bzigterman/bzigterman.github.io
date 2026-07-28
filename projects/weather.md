---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 11:15 AM CT, July 28</p>

<iframe src="/interactive/champaign_weather.html" width="100%" height="600"> 
</iframe>

Today's high is 84°, which is 9° *colder* than yesterday. Tomorrow is expected to be 3° **warmer** than today.

Currently:

- 80°
- Partly Cloudy
- 79% humidity
- 12 mph wind
- 38% cloud cover
- 32 AQI 🟩

<noscript>
<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Tue:  0.00"              68 -------------------- 84
Wed:  0.00"    60 ---------------------------------- 87
Thu:  0.00"      61 -------------------------- 82
Fri:  0.26"       62 ---------------- 75
Sat:  0.66"        63 ------------- 73
Sun:  0.00"          64 -------------------- 80
Mon:  0.00"        63 ----------------------- 81
Tue:  0.05"             67 ----------------------- 85
Wed:  0.01"              68 ---------------------- 85
Thu:  0.00"                69 -------------------- 85
Fri:  0.00"              68 ------------------------ 87
Sat:  0.00"                  71 ----------------------- 89
Sun:  0.00"                      74 ---------------------- 92
Mon:  0.54"                      74 -------------------- 90
Tue:  0.11"              68 ------------------- 83
Wed:  0.19"                 70 -------------- 81</code></pre>
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




