---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 02:36 AM CT, August 18</p>

<iframe src="/interactive/champaign_weather.html" width="100%" height="600"> 
</iframe>

Today's high is 84°, which is 4° **warmer** than yesterday. Tomorrow is expected to be 6° *colder* than today.

Currently:

- 63°
- Mostly Clear
- 95% humidity
- 3 mph wind
- 15% cloud cover
- 20 AQI 🟩

<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Tue:  0.00"           63 --------------- 84
Wed:  0.00"             66 -------- 78
Thu:  0.00"        59 ------------ 76
Fri:  0.00"       58 -------------- 77
Sat:  0.01"          62 ------------- 81
Sun:  0.07"        60 ---------- 73
Mon:  0.35"         61 ---- 67
Tue:  0.00"          62 ----------- 78
Wed:  0.00"      56 ------------ 74
Thu:  0.02"      57 ---------- 70
Fri:  0.00"      56 ------------ 73
Sat:  0.00"    54 --------------- 75
Sun:  0.00"      57 --------------- 78
Mon:  0.00"   53 ----------- 68</code></pre>

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




