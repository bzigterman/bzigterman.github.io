---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 01:12 PM CT, July 10</p>

<iframe src="/interactive/champaign_weather.html" width="100%" height="600"> 
</iframe>

Today's high is 89°, which is 1° *colder* than yesterday. Tomorrow is expected to be 5° *colder* than today.

Currently:

- 87°
- Mostly Clear
- 62% humidity
- 5 mph wind
- 28% cloud cover
- 33 AQI 🟩
- 2.32 inches of rain expected in the next 48 hours

<noscript>
<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Fri:  0.00"                  69 -------------------------- 89
Sat:  2.08"                     71 ----------------- 84
Sun:  0.00"             65 ------------------- 80
Mon:  0.00"     59 --------------------------- 80
Tue:  0.01"              66 ------------------------ 84
Wed:  0.05"                     71 ------------------- 86
Thu:  0.11"                      72 ------------------ 86
Fri:  0.12"                       73 ----------------- 86
Sat:  0.00"                      72 ---------------------- 89
Sun:  0.00"                        74 ------------------- 88
Mon:  0.00"                 68 ----------------------- 86
Tue:  0.02"                       73 ----- 77
Wed:  0.06"                   70 ------------------------ 88
Thu:  0.00"           64 --------------------- 80
Fri:  0.02"         62 -------------------------- 82
Sat:  0.00"                            77 ---------------- 89</code></pre>
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




