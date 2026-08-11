---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 03:10 PM CT, August 11</p>

<iframe src="/interactive/champaign_weather.html" width="100%" height="600"> 
</iframe>

Today's high is 91°, which is 2° **warmer** than yesterday. Tomorrow is expected to be 3° **warmer** than today.

Currently:

- 86°
- Mostly Cloudy
- 71% humidity
- 10 mph wind
- 74% cloud cover
- 33 AQI 🟩
- 0.04 inches of rain in the past 24 hours
- 2.53 inches of rain expected in the next 48 hours

<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Tue:  0.28"              76 --------- 91
Wed:  2.53"        68 ------------------ 95
Thu:  0.01"        68 -------- 80
Fri:  0.17"          70 ------ 80
Sat:  0.02"         69 ------------ 88
Sun:  0.00"           72 -------- 85
Mon:  0.00"      64 --------- 78
Tue:  0.00"   60 ------------ 79
Wed:  0.00"      65 ----------- 82
Thu:  0.00"    61 ------------- 82
Fri:  0.00"               78 ---------- 94
Sat:  0.00"         69 ----------- 86
Sun:  0.00"      64 ------ 74
Mon:  0.00"     62 ---------- 79
Tue:  0.18"     63 -------------- 84
Wed:  0.38"        68 ------- 78</code></pre>

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




