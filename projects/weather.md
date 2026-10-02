---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 01:27 PM CT, October 02</p>

<picture>
  <source srcset="{{ site.baseurl }}/plots/weather_2026-10-02_1827.png"
          media="(min-width: 750px)">
  <img src="{{ site.baseurl }}/plots/weather_2026-10-02_1827_mobile.png" alt="" />
</picture>

Today's high is 67°, which is 21° *colder* than yesterday. Tomorrow is expected to be 1° *colder* than today.

Currently:

- 66°
- Mostly Cloudy
- 57% humidity
- 11 mph wind
- 81% cloud cover
- 30 AQI 🟩
- 0.85 inches of rain in the past 24 hours

<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Fri:  1.05"        52 -------- 67
<b>Sat:  0.00"      47 ---------- 67</b>
<b>Sun:  0.00"      48 -------------- 75</b>
Mon:  0.00"       49 --------- 68
Tue:  0.00"    44 ------------- 70
Wed:  0.00"        52 -------------- 80
Thu:  0.00"            59 ------------- 86
Fri:  0.00"        52 ---------- 71
<b>Sat:  0.00"       49 ----------------- 83</b>
<b>Sun:  0.00"              64 ------------ 87</b>
Mon:  1.35"                67  68
Tue:  0.01"         54 ------- 67
Wed:  0.00"      48 ------------- 73
Thu:  0.02"          55 ------------- 82
Fri:  0.54"     45 ------------ 70
<b>Sat:  0.02"   42 ----- 52</b></code></pre>

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




