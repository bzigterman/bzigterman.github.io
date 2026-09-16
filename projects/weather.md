---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 05:00 AM CT, September 16</p>

<picture>
  <source srcset="{{ site.baseurl }}/plots/weather_2026-09-16_1000.png"
          media="(min-width: 750px)">
  <img src="{{ site.baseurl }}/plots/weather_2026-09-16_1000_mobile.png" alt="" />
</picture>

Today's high is 89°, which is 7° *colder* than yesterday. Tomorrow is expected to be 0° **warmer** than today.

Currently:

- 72°
- Mostly Cloudy
- 95% humidity
- 6 mph wind
- 81% cloud cover
- 28 AQI 🟩
- 0.14 inches of rain expected in the next 48 hours

<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Wed:  0.00"                 72 --------- 89
Thu:  0.02"                70 ---------- 90
Fri:  0.30"               68 -------- 84
<b>Sat:  0.03"                70 ------- 84</b>
<b>Sun:  0.04"                70 -------- 86</b>
Mon:  0.00"            62 -------- 79
Tue:  0.00"         56 --------- 75
Wed:  0.04"          59 ------------ 83
Thu:  0.02"      49 ---------- 69
Fri:  0.00"    45 ---------- 65
<b>Sat:  0.00"   44 ------------- 70</b>
<b>Sun:  0.00"    47 -------------- 75</b>
Mon:  0.00"        53 ------------- 80
Tue:  0.00"          58 ------------- 84
Wed:  0.00"          58 -------- 74</code></pre>

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




