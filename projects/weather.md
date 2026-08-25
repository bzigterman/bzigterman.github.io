---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 08:25 PM CT, August 24</p>

<picture>
  <source srcset="{{ site.baseurl }}/plots/weather_2026-08-25_0126.png"
          media="(min-width: 750px)">
  <img src="{{ site.baseurl }}/plots/weather_2026-08-25_0126_mobile.png" alt="" />
</picture>

Today's high is 78°, which is 1° *colder* than yesterday. Tomorrow is expected to be 2° **warmer** than today.

Currently:

- 70°
- Clear
- 70% humidity
- 3 mph wind
- 0% cloud cover
- 47 AQI 🟩
- 0.01 inches of rain expected in the next 48 hours

<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Mon:  0.00"   54 ------------- 78
Tue:  0.00"     58 ------------- 80
Wed:  0.08"        63 ------------ 84
Thu:  0.01"        62 ---------- 80
Fri:  0.00"        62 ---------- 80
<b>Sat:  0.00"        62 --------- 79</b>
<b>Sun:  0.00"          66 ----------- 87</b>
Mon:  0.34"           68 ---------- 86
Tue:  0.00"             72 ------------ 94
Wed:  0.00"               76 ---------- 94
Thu:  0.40"           69 --------------- 95
Fri:  0.41"           68 --------- 84
<b>Sat:  0.09"            70 --------- 86</b>
<b>Sun:  0.24"            70 ----------- 90</b>
Mon:  0.34"        62 -------- 78
Tue:  0.00"     58 ------------- 80</code></pre>

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




