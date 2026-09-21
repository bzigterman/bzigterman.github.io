---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 01:18 AM CT, September 21</p>

<picture>
  <source srcset="{{ site.baseurl }}/plots/weather_2026-09-21_0618.png"
          media="(min-width: 750px)">
  <img src="{{ site.baseurl }}/plots/weather_2026-09-21_0618_mobile.png" alt="" />
</picture>

Today's high is 66°, which is 15° *colder* than yesterday. Tomorrow is expected to be 1° *colder* than today.

Currently:

- 65°
- Drizzle
- 96% humidity
- 12 mph wind
- 81% cloud cover
- 39 AQI 🟩
- 0.71 inches of rain in the past 24 hours
- 0.37 inches of rain expected in the next 48 hours

<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Mon:  0.67"           59 ---- 66
Tue:  0.00"        55 ------- 65
Wed:  0.00"         56 ----- 64
Thu:  0.00"        54 ----------- 71
Fri:  0.00"        55 ---------- 70
<b>Sat:  0.02"         56 -- 59</b>
<b>Sun:  0.00"       53 ------------- 73</b>
Mon:  0.00"     50 ---------------- 74
Tue:  0.00"        54 --------------- 78
Wed:  0.00"       53 ------------- 73
Thu:  0.00"   47 ---------------- 72
Fri:  0.00"      52 ------------ 70
<b>Sat:  0.00"             62 ----- 70</b>
<b>Sun:  0.00"              64 ------------ 82</b>
Mon:  0.01"           59 ------------- 80</code></pre>

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




