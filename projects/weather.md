---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 04:22 PM CT, July 31</p>

<iframe src="/interactive/champaign_weather.html" width="100%" height="600"> 
</iframe>

Today's high is 78°, which is 6° *colder* than yesterday. Tomorrow is expected to be 1° *colder* than today.

Currently:

- 74°
- Mostly Cloudy
- 80% humidity
- 12 mph wind
- 81% cloud cover
- 38 AQI 🟩
- 0.04 inches of rain in the past 24 hours
- 1.63 inches of rain expected in the next 48 hours

<noscript>
<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Fri:  0.00"          62 --------------------- 78
Sat:  1.99"                 67 ------------- 77
Sun:  0.07"              65 ------------ 74
Mon:  0.00"       60 ----------------------- 77
Tue:  0.01"     58 ----------------------------- 80
Wed:  0.00"              65 --------------------- 81
Thu:  1.07"                  68 ------------------ 82
Fri:  0.41"                      71 ----------------- 84
Sat:  0.01"                        73 ------------------- 87
Sun:  0.12"                     70 ------------- 80
Mon:  0.49"               66 ----------------- 79
Tue:  0.06"                 67 --------------- 79
Wed:  0.39"               66 ------------------------- 85
Thu:  0.07"                     70 ------------------- 85
Fri:  0.00"                      71 ---------------------- 88
Sat:  0.00"                            76 -------------- 86</code></pre>
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




