---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 06:28 AM CT, October 26</p>

<picture>
  <source srcset="{{ site.baseurl }}/plots/weather_2026-10-26_1128.png"
          media="(min-width: 750px)">
  <img src="{{ site.baseurl }}/plots/weather_2026-10-26_1128_mobile.png" alt="" />
</picture>

Today's high is 73°, which is 3° *colder* than yesterday. Tomorrow is expected to be 1° **warmer** than today.

Currently:

- 47°
- Clear
- 87% humidity
- 1 mph wind
- 4% cloud cover
- 50 AQI 🟩

<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Mon:  0.00"        47 --------------- 73
Tue:  0.00"          50 -------------- 74
Wed:  0.00"            54 ---------- 72
Thu:  0.01"               59 ----------- 78
Fri:  0.02"               59 --------- 74
<b>Sat:  0.03"               59 ------ 69</b>
<b>Sun:  0.18"               59 -- 63</b>
Mon:  0.00"                61 --- 66
Tue:  0.21"           52 ------ 63
Wed:  0.00"        47 ------ 58
Thu:  0.00"          50 ----------- 70
Fri:  0.00"        48 ------------- 70
<b>Sat:  0.00"    40 ------ 50</b>
<b>Sun:  0.00"   39 ------------ 59</b>
Mon:  0.00"      44 ----------- 63
Tue:  0.00"       46 ----------- 65</code></pre>

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




