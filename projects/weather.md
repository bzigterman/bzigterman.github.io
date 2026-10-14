---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 10:25 AM CT, October 14</p>

<picture>
  <source srcset="{{ site.baseurl }}/plots/weather_2026-10-14_1525.png"
          media="(min-width: 750px)">
  <img src="{{ site.baseurl }}/plots/weather_2026-10-14_1525_mobile.png" alt="" />
</picture>

Today's high is 80°, which is 10° *colder* than yesterday. Tomorrow is expected to be 10° *colder* than today.

Currently:

- 75°
- Overcast
- 85% humidity
- 2 mph wind
- 92% cloud cover
- 38 AQI 🟩
- 5.86 inches of rain expected in the next 48 hours

<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Wed:  0.03"                 65 --------- 80
Thu:  5.85"               61 ------ 71
Fri:  0.02"        48 -------- 63
<b>Sat:  0.00"    42 --------- 58</b>
<b>Sun:  0.00"     43 ------------- 66</b>
Mon:  0.00"        48 ------------ 69
Tue:  0.00"          52 ----------- 72
Wed:  0.00"            55 ------------ 77
Thu:  0.65"            56 ----- 65
Fri:  0.00"          52 ---------- 70
<b>Sat:  0.04"          52 --------------- 79</b>
<b>Sun:  0.00"     44 -------- 57</b>
Mon:  0.00"   40 -------------- 64
Tue:  0.01"     44 ------------- 67
Wed:  0.11"          52 ----------- 71
Thu:  0.02"       46 ------ 57</code></pre>

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




