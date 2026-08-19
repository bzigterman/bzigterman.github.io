---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 12:24 PM CT, August 19</p>

<iframe src="/interactive/champaign_weather.html" width="100%" height="600"> 
</iframe>

Today's high is 84°, which is 4° **warmer** than yesterday. Tomorrow is expected to be 4° *colder* than today.

Currently:

- 80°
- Partly Cloudy
- 78% humidity
- 6 mph wind
- 55% cloud cover
- 48 AQI 🟩
- 1.19 inches of rain expected in the next 48 hours

<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Wed:  1.29"              68 ---------- 84
Thu:  0.38"            64 ---------- 80
Fri:  0.13"       57 --------------- 80
Sat:  0.00"            65 --------- 78
Sun:  0.15"            65 --------- 79
Mon:  0.19"             66 - 68
Tue:  0.00"              67 --- 73
Wed:  0.12"           63 ---------- 78
Thu:  0.00"       57 ---------- 72
Fri:  0.00"   51 -------------- 72
Sat:  0.00"      56 --------------- 78
Sun:  0.00"         60 ------------ 79
Mon:  0.00"          61 ------------ 80
Tue:  0.00"        58 -------------- 80
Wed:  0.03"             66 ----------- 84
Thu:  0.04"              68 ------------ 86</code></pre>

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




