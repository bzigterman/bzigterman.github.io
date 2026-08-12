---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 10:58 AM CT, August 12</p>

<iframe src="/interactive/champaign_weather.html" width="100%" height="600"> 
</iframe>

Today's high is 83°, which is 5° *colder* than yesterday. Tomorrow is expected to be 1° **warmer** than today.

Currently:

- 82°
- Overcast
- 85% humidity
- 8 mph wind
- 91% cloud cover
- 25 AQI 🟩
- 0.07 inches of rain in the past 24 hours
- 0.32 inches of rain expected in the next 48 hours

<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Wed:  0.00"           68 ---------- 83
Thu:  0.02"          67 ----------- 83
Fri:  0.29"            69 -------- 82
Sat:  0.00"              72 ------------ 91
Sun:  0.00"            70 ----------- 87
Mon:  0.00"        64 -------- 76
Tue:  0.00"     58 -------------- 80
Wed:  0.00"        63 ------------- 83
Thu:  0.00"          67 ------------- 86
Fri:  0.00"      61 -------- 73
Sat:  0.33"       62 ----------- 79
Sun:  0.49"          66 ------- 77
Mon:  1.63"        64 ----- 71
Tue:  0.01"       62 --------- 76
Wed:  0.17"     59 ----------- 76
Thu:  0.15"   56 --------- 70</code></pre>

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




