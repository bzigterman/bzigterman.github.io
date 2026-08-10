---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 04:11 PM CT, August 10</p>

<iframe src="/interactive/champaign_weather.html" width="100%" height="600"> 
</iframe>

Today's high is 91°, which is 3° **warmer** than yesterday. Tomorrow is expected to be 4° **warmer** than today.

Currently:

- 91°
- Mostly Clear
- 64% humidity
- 13 mph wind
- 37% cloud cover
- 40 AQI 🟩
- 0.09 inches of rain expected in the next 48 hours

<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Mon:  0.00"              75 --------- 91
Tue:  0.00"              75 ------------ 95
Wed:  0.09"            71 ---------- 88
Thu:  0.18"         66 -------- 81
Fri:  0.04"       64 --------- 78
Sat:  0.07"       63 --------- 78
Sun:  0.00"          68 ------------- 90
Mon:  0.00"       63 ---------- 80
Tue:  0.00"   57 ------------- 78
Wed:  0.00"      61 ------------ 82
Thu:  0.00"         67 -------------- 90
Fri:  0.00"              75 ------- 87
Sat:  0.25"         67 ---------------- 93
Sun:  0.18"        65 ------- 77
Mon:  0.00"       64 --------- 79
Tue:  0.00"      62 ----------- 80</code></pre>

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




