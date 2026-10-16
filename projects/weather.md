---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 02:56 PM CT, October 16</p>

<picture>
  <source srcset="{{ site.baseurl }}/plots/weather_2026-10-16_1957.png"
          media="(min-width: 750px)">
  <img src="{{ site.baseurl }}/plots/weather_2026-10-16_1957_mobile.png" alt="" />
</picture>

Today's high is 64°, which is 8° *colder* than yesterday. Tomorrow is expected to be 11° *colder* than today.

Currently:

- 53°
- Drizzle
- 73% humidity
- 15 mph wind
- 98% cloud cover
- 23 AQI 🟩
- 0.41 inches of rain in the past 24 hours
- 0.01 inches of rain expected in the next 48 hours

<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Fri:  0.10"       44 ----------- 64
<b>Sat:  0.00"     40 -------- 54</b>
<b>Sun:  0.00"    39 -------------- 64</b>
Mon:  0.00"        45 ------------ 67
Tue:  0.00"         47 ------------ 69
Wed:  0.00"         48 ------------- 70
Thu:  0.00"           50 ------------- 74
Fri:  0.00"             55 ------------ 75
<b>Sat:  0.00"              57 ------------ 77</b>
<b>Sun:  0.00"             54 ------------- 77</b>
Mon:  0.00"       43 ------------ 65
Tue:  0.00"   37 ----------- 57
Wed:  0.00"        45 ---------- 64
Thu:  0.01"             54 ------- 67
Fri:  0.00"          49 ------- 62
<b>Sat:  0.10"        46 ----------- 65</b></code></pre>

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




