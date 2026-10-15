---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 05:23 AM CT, October 15</p>

<picture>
  <source srcset="{{ site.baseurl }}/plots/weather_2026-10-15_1023.png"
          media="(min-width: 750px)">
  <img src="{{ site.baseurl }}/plots/weather_2026-10-15_1023_mobile.png" alt="" />
</picture>

Today's high is 73°, which is 4° *colder* than yesterday. Tomorrow is expected to be 9° *colder* than today.

Currently:

- 65°
- Mostly Cloudy
- 83% humidity
- 8 mph wind
- 86% cloud cover
- 52 AQI 🟨
- 0.36 inches of rain expected in the next 48 hours

<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Thu:  0.22"                    64 ----- 73
Fri:  0.16"        43 ------------ 64
<b>Sat:  0.00"     38 ---------- 55</b>
<b>Sun:  0.00"      40 -------------- 64</b>
Mon:  0.00"          46 ------------- 69
Tue:  0.00"              53 ---------- 70
Wed:  0.00"            51 ------------ 70
Thu:  0.00"            50 ------------ 71
Fri:  0.00"            51 -------------- 74
<b>Sat:  0.48"               56 ----- 64</b>
<b>Sun:  0.17"        44 ----------- 63</b>
Mon:  0.00"     39 --------- 54
Tue:  0.00"    37 ------ 46
Wed:  0.00"   35 -------------- 58
Thu:  0.00"        44 ----------- 62</code></pre>

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




