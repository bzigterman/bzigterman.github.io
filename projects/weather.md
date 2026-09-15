---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 12:27 AM CT, September 15</p>

<picture>
  <source srcset="{{ site.baseurl }}/plots/weather_2026-09-15_0528.png"
          media="(min-width: 750px)">
  <img src="{{ site.baseurl }}/plots/weather_2026-09-15_0528_mobile.png" alt="" />
</picture>

Today's high is 96°, which is 16° **warmer** than yesterday. Tomorrow is expected to be 11° *colder* than today.

Currently:

- 65°
- Mostly Clear
- 75% humidity
- 8 mph wind
- 13% cloud cover
- 41 AQI 🟩
- 0.32 inches of rain expected in the next 48 hours

<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Tue:  0.07"          65 ---------------- 96
Wed:  0.18"              71 ------ 84
Thu:  0.17"             70 ---------- 90
Fri:  0.00"            68 ---------- 88
<b>Sat:  0.00"              72 ------------ 95</b>
<b>Sun:  0.32"           66 --------- 83</b>
Mon:  0.36"        61 -- 65
Tue:  0.02"       58 --- 63
Wed:  0.00"     54 ------ 66
Thu:  0.00"   50 ---------- 70
Fri:  0.00"      57 -------- 71
<b>Sat:  0.01"      57 ---------- 77</b>
<b>Sun:  0.00"     54 --------------- 83</b>
Mon:  0.00"          63 ------------ 88
Tue:  0.00"            67 -------- 84</code></pre>

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




