---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 08:26 PM CT, June 17</p>

<iframe src="/interactive/champaign_weather.html" width="100%" height="600"> 
</iframe>

Today's high is 71°, which is 9° *colder* than yesterday. Tomorrow is expected to be 1° *colder* than today.

Currently:

- 71°
- Overcast
- 96% humidity
- 14 mph wind
- 100% cloud cover
- 39 AQI 🟩
- 1.92 inches of rain in the past 24 hours
- 0.04 inches of rain expected in the next 48 hours

<noscript>
<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Wed:  3.19"          55 ----------------- 71
Thu:  0.00"                61 ---------- 70
Fri:  0.00"             58 ----------------- 74
Sat:  0.05"               60 ------------------- 78
Sun:  0.55"              59 --------------- 73
Mon:  0.00"      52 ------------------ 69
Tue:  0.00"    50 ------------------------ 72
Wed:  0.05"                61 ------------- 73
Thu:  0.00"             58 ----------------- 74
Fri:  0.01"              59 ---------------------- 80
Sat:  0.04"                      67 -------------- 80
Sun:  0.21"                 62 -------------- 75
Mon:  0.00"                61 ------------------ 78
Tue:  0.20"                   64 ----------------- 80
Wed:  0.01"                      67 ------------------- 84
Thu:  0.01"                            72 ----------------- 88</code></pre>
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




