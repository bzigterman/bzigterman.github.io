---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 10:30 AM CT, June 27</p>

<iframe src="/interactive/champaign_weather.html" width="100%" height="600"> 
</iframe>

Today's high is 79°, which is 10° **warmer** than yesterday. Tomorrow is expected to be 9° **warmer** than today.

Currently:

- 72°
- Overcast
- 97% humidity
- 8 mph wind
- 98% cloud cover
- 22 AQI 🟩
- 0.17 inches of rain in the past 24 hours
- 0.08 inches of rain expected in the next 48 hours

<noscript>
<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Sat:  0.17"                   68 ------------- 79
Sun:  0.02"                   68 ----------------------- 88
Mon:  0.00"                        73 ------------------- 89
Tue:  0.00"                        73 --------------------- 90
Wed:  0.01"                          74 ------------------- 90
Thu:  0.00"                        73 --------------------- 90
Fri:  0.02"                        73 ------------------ 88
Sat:  0.02"                       72 ------------------- 88
Sun:  0.02"                        73 ------------------ 88
Mon:  0.02"                       72 -------------------- 89
Tue:  0.09"                       72 ------------------ 87
Wed:  0.07"                     70 ------------------- 86
Thu:  0.02"             63 --------------------- 81
Fri:  0.00"    56 ------------------------ 76
Sat:  0.00"       58 --------------------------- 81
Sun:  0.01"               65 ------------------------ 85</code></pre>
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




