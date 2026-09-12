---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 02:24 PM CT, September 12</p>

<picture>
  <source srcset="{{ site.baseurl }}/plots/weather_2026-09-12_1924.png"
          media="(min-width: 750px)">
  <img src="{{ site.baseurl }}/plots/weather_2026-09-12_1924_mobile.png" alt="" />
</picture>

Today's high is 88°, which is 6° **warmer** than yesterday. Tomorrow is expected to be 6° *colder* than today.

Currently:

- 87°
- Clear
- 47% humidity
- 6 mph wind
- 1% cloud cover
- 51 AQI 🟨
- 0.16 inches of rain expected in the next 48 hours

<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;"><b>Sat:  0.06"          67 ------------ 88</b>
<b>Sun:  0.16"        63 ----------- 82</b>
Mon:  0.00"    56 ---------- 73
Tue:  0.01"         64 ----------------- 95
Wed:  0.27"          67 ---------- 84
Thu:  0.51"         65 ----- 73
Fri:  0.00"        62 ------- 76
<b>Sat:  0.67"         65 ------------ 87</b>
<b>Sun:  0.31"      60 --- 65</b>
Mon:  0.19"     58 ----- 67
Tue:  1.47"      59 -- 62
Wed:  0.00"       61 ---- 68
Thu:  0.00"   54 ------------ 75
Fri:  0.00"      60 ------------- 82
<b>Sat:  0.00"       61 ------------ 82</b>
<b>Sun:  0.00"        62 ------------ 84</b></code></pre>

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




