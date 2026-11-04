---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 07:20 PM CT, November 03</p>

<picture>
  <source srcset="{{ site.baseurl }}/plots/weather_2026-11-04_0120.png"
          media="(min-width: 750px)">
  <img src="{{ site.baseurl }}/plots/weather_2026-11-04_0120_mobile.png" alt="" />
</picture>

Today's high is 75°, which is 13° **warmer** than yesterday. Tomorrow is expected to be 10° *colder* than today.

Currently:

- 72°
- Overcast
- 64% humidity
- 16 mph wind
- 100% cloud cover
- 37 AQI 🟩
- 0.34 inches of rain expected in the next 48 hours

<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Tue:  0.14"                   62 ------- 75
Wed:  0.14"             50 -------- 65
Thu:  0.00"           46 -------- 62
Fri:  0.00"       39 ------ 50
<b>Sat:  0.00"    34 --------- 50</b>
<b>Sun:  0.00"     36 ----------- 57</b>
Mon:  0.00"       40 ------------ 62
Tue:  0.00"        42 ---------- 61
Wed:  0.00"         44 ------- 56
Thu:  0.00"         43 ------- 56
Fri:  0.00"        41 ---------- 60
<b>Sat:  0.00"      38 --------- 55</b>
<b>Sun:  0.00"   32 -------- 47</b>
Mon:  0.00"   32 ----------- 52
Tue:  0.00"     35 ----------- 57
Wed:  0.00"       40 ---------- 58</code></pre>

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




