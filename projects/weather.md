---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 01:55 PM CT, September 14</p>

<picture>
  <source srcset="{{ site.baseurl }}/plots/weather_2026-09-14_1855.png"
          media="(min-width: 750px)">
  <img src="{{ site.baseurl }}/plots/weather_2026-09-14_1855_mobile.png" alt="" />
</picture>

Today's high is 78°, which is 4° *colder* than yesterday. Tomorrow is expected to be 17° **warmer** than today.

Currently:

- 75°
- Mostly Clear
- 33% humidity
- 10 mph wind
- 35% cloud cover
- 27 AQI 🟩
- 0.46 inches of rain expected in the next 48 hours

<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Mon:  0.00"    55 ------------ 78
Tue:  0.02"         65 ---------------- 96
Wed:  0.48"           68 ------ 80
Thu:  0.07"            70 --------- 88
Fri:  0.05"          67 ------------ 89
<b>Sat:  0.01"             73 ------------- 97</b>
<b>Sun:  0.10"           69 ------------ 92</b>
Mon:  0.26"            71 -------- 86
Tue:  0.07"           68 ------ 80
Wed:  0.13"        62 -------------- 90
Thu:  0.15"   53 ------ 64
Fri:  0.08"    54 --------- 72
<b>Sat:  0.00"      59 ---------- 78</b>
<b>Sun:  0.00"       60 ----------- 81</b>
Mon:  0.00"        63 ------------ 85
Tue:  0.00"      59 ----------- 79</code></pre>

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




