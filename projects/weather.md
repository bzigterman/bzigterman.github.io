---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 08:30 PM CT, September 11</p>

<picture>
  <source srcset="{{ site.baseurl }}/plots/weather_2026-09-12_0130.png"
          media="(min-width: 750px)">
  <img src="{{ site.baseurl }}/plots/weather_2026-09-12_0130_mobile.png" alt="" />
</picture>

Today's high is 82°, which is 8° **warmer** than yesterday. Tomorrow is expected to be 6° **warmer** than today.

Currently:

- 73°
- Mostly Cloudy
- 86% humidity
- 5 mph wind
- 72% cloud cover
- 42 AQI 🟩
- 0.02 inches of rain expected in the next 48 hours

<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Fri:  0.00"        60 ------------ 82
<b>Sat:  0.00"           66 ------------- 89</b>
<b>Sun:  0.02"        60 ---------- 78</b>
Mon:  0.00"    53 --------- 69
Tue:  0.11"          64 ---------------- 92
Wed:  0.00"              71 ----------- 90
Thu:  0.06"             69 -------- 84
Fri:  0.00"        59 -------- 75
<b>Sat:  0.00"     55 ----------- 75</b>
<b>Sun:  0.00"    53 -------------- 77</b>
Mon:  0.00"     55 ------------- 78
Tue:  0.00"    53 -------------- 77
Wed:  0.00"   51 -------------- 76
Thu:  0.00"     55 ------------ 76
Fri:  0.01"      57 ------------------ 89
<b>Sat:  0.09"       58 --------- 75</b></code></pre>

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




