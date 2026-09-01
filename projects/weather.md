---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 10:09 AM CT, September 01</p>

<picture>
  <source srcset="{{ site.baseurl }}/plots/weather_2026-09-01_1509.png"
          media="(min-width: 750px)">
  <img src="{{ site.baseurl }}/plots/weather_2026-09-01_1509_mobile.png" alt="" />
</picture>

Today's high is 96°, which is 3° **warmer** than yesterday. Tomorrow is expected to be 1° **warmer** than today.

Currently:

- 85°
- Clear
- 70% humidity
- 9 mph wind
- 0% cloud cover
- 35 AQI 🟩

<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Tue:  0.00"              73 ------------ 96
Wed:  0.00"               75 ----------- 97
Thu:  0.02"              74 ------------ 96
Fri:  0.00"                76 ------- 91
<b>Sat:  0.18"              72 --------- 91</b>
<b>Sun:  0.08"            68 -------- 85</b>
Mon:  0.88"            69 ----------- 91
Tue:  0.31"        60 ---------- 81
Wed:  0.31"        60 ------------------ 96
Thu:  0.00"            68 ------- 83
Fri:  0.21"           67 ----------- 89
<b>Sat:  0.67"            69 ------------ 92</b>
<b>Sun:  0.21"            68 -- 74</b>
Mon:  0.08"            68 -------- 84
Tue:  0.00"     55 ------- 69
Wed:  0.00"   51 ---------- 71</code></pre>

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




