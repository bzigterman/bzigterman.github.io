---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 11:00 AM CT, August 25</p>

<picture>
  <source srcset="{{ site.baseurl }}/plots/weather_2026-08-25_1600.png"
          media="(min-width: 750px)">
  <img src="{{ site.baseurl }}/plots/weather_2026-08-25_1600_mobile.png" alt="" />
</picture>

Today's high is 80°, which is 2° **warmer** than yesterday. Tomorrow is expected to be 8° **warmer** than today.

Currently:

- 75°
- Clear
- 65% humidity
- 5 mph wind
- 1% cloud cover
- 57 AQI 🟨

<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Tue:  0.00"   55 ---------------- 80
Wed:  0.00"         64 --------------- 88
Thu:  0.04"        62 ----------- 79
Fri:  0.00"      60 ------------ 78
<b>Sat:  0.00"       61 ------------ 80</b>
<b>Sun:  0.00"          66 ------------- 86</b>
Mon:  0.29"              71 --------- 86
Tue:  0.58"            69 ------- 79
Wed:  0.00"      60 ------------- 79
Thu:  0.42"          66 ------ 75
Fri:  0.00"            68 ---------- 84
<b>Sat:  0.08"            69 ------ 78</b>
<b>Sun:  0.00"               74 ----------- 90</b>
Mon:  0.46"              71 ------------ 90
Tue:  0.16"        63 --------- 76
Wed:  0.05"      60 --------------- 83</code></pre>

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




