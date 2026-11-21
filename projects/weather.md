---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 09:42 AM CT, November 21</p>

<picture>
  <source srcset="{{ site.baseurl }}/plots/weather_2026-11-21_1542.png"
          media="(min-width: 750px)">
  <img src="{{ site.baseurl }}/plots/weather_2026-11-21_1542_mobile.png" alt="" />
</picture>

Today's high is 69°, which is 1° *colder* than yesterday. Tomorrow is expected to be 9° *colder* than today.

Currently:

- 56°
- Clear
- 62% humidity
- 8 mph wind
- 0% cloud cover
- 24 AQI 🟩
- 0.52 inches of rain expected in the next 48 hours

<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;"><b>Sat:  0.00"          39 ---------------- 69</b>
<b>Sun:  0.52"         37 ------------ 60</b>
Mon:  0.00"     31 -------- 45
Tue:  0.00"   27 ------- 40
Wed:  0.13"     31 ------- 44
Thu:  0.83"         38 --- 44
Fri:  0.55"            44 - 46
<b>Sat:  0.00"         38 -------- 52</b>
<b>Sun:  0.00"         37 ---- 46</b>
Mon:  0.00"       35 ---------- 52
Tue:  0.00"         38 --------- 54
Wed:  0.09"           42 ---- 49
Thu:  0.00"             46 --- 51
Fri:  0.01"          40 --- 46
<b>Sat:  0.00"        36 ---- 44</b>
<b>Sun:  0.00"       35 ---------- 52</b></code></pre>

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




