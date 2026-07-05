---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 03:13 PM CT, July 05</p>

<iframe src="/interactive/champaign_weather.html" width="100%" height="600"> 
</iframe>

Today's high is 82°, which is 5° *colder* than yesterday. Tomorrow is expected to be 3° *colder* than today.

Currently:

- 82°
- Mostly Clear
- 72% humidity
- 5 mph wind
- 37% cloud cover
- 36 AQI 🟩
- 0.28 inches of rain in the past 24 hours

<noscript>
<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Sun:  0.00"                       68 ----------------- 82
Mon:  0.00"                    66 ----------------- 80
Tue:  0.00"                   65 ------------------ 80
Wed:  0.00"                   65 ---------------------- 83
Thu:  0.17"                        69 ------------------ 84
Fri:  0.32"                       68 ----------------- 82
Sat:  0.12"                        69 --------------------- 86
Sun:  0.02"                       68 ------------------ 83
Mon:  0.00"            59 ------------------- 75
Tue:  0.00"    53 ------------------------ 72
Wed:  0.00"        56 ----------------------- 75
Thu:  0.00"               62 --------------------- 79
Fri:  0.00"                  64 -------------------- 81
Sat:  0.00"                    66 --------------------- 83
Sun:  0.00"                     67 ------------------- 82
Mon:  0.00"                     67 --------------------- 84</code></pre>
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




