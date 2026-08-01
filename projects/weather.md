---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 02:21 PM CT, August 01</p>

<iframe src="/interactive/champaign_weather.html" width="100%" height="600"> 
</iframe>

Today's high is 71°, which is 7° *colder* than yesterday. Tomorrow is expected to be 9° **warmer** than today.

Currently:

- 74°
- Overcast
- 89% humidity
- 3 mph wind
- 94% cloud cover
- 24 AQI 🟩
- 0.88 inches of rain in the past 24 hours
- 0.09 inches of rain expected in the next 48 hours

<noscript>
<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Sat:  2.96"                68 --- 71
Sun:  0.00"               67 --------------- 80
Mon:  0.00"          63 --------------- 76
Tue:  0.00"    58 ------------------------- 79
Wed:  0.00"       60 ------------------------- 82
Thu:  0.20"                68 --------------- 81
Fri:  0.01"                68 ------------------- 85
Sat:  0.94"               67 ------------------- 84
Sun:  0.28"                68 --------------------- 86
Mon:  0.50"                68 -------------- 80
Tue:  0.12"         62 ---------------- 76
Wed:  0.00"         62 ---------------------- 81
Thu:  0.00"                68 -------------- 80
Fri:  0.00"         62 ----------------------- 82
Sat:  0.00"           64 --------------------------- 87
Sun:  0.00"                   71 -------------------------- 93</code></pre>
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




