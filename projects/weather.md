---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 10:58 AM CT, August 13</p>

<iframe src="/interactive/champaign_weather.html" width="100%" height="600"> 
</iframe>

Today's high is 86°, which is 6° **warmer** than yesterday. Tomorrow is expected to be 1° *colder* than today.

Currently:

- 78°
- Clear
- 86% humidity
- 6 mph wind
- 0% cloud cover
- 16 AQI 🟩
- 0.42 inches of rain in the past 24 hours
- 0.22 inches of rain expected in the next 48 hours

<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Thu:  0.00"            66 ----------- 86
Fri:  0.21"               71 -------- 85
Sat:  0.01"                73 --------- 90
Sun:  0.09"              70 --------- 85
Mon:  0.03"           64 ------- 77
Tue:  0.00"          61 ----------- 82
Wed:  0.18"            66 --------- 82
Thu:  0.00"                72 ------- 85
Fri:  0.02"           64 --------------- 91
Sat:  0.00"         60 ---- 67
Sun:  0.00"         60 ------- 72
Mon:  0.00"         59 ----------- 81
Tue:  0.00"           64 ------------ 85
Wed:  0.06"         60 ----------- 80
Thu:  0.00"     53 ----------- 73
Fri:  0.00"   49 ------------ 71</code></pre>

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




