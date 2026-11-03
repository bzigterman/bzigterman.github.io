---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 08:12 PM CT, November 02</p>

<picture>
  <source srcset="{{ site.baseurl }}/plots/weather_2026-11-03_0212.png"
          media="(min-width: 750px)">
  <img src="{{ site.baseurl }}/plots/weather_2026-11-03_0212_mobile.png" alt="" />
</picture>

Today's high is 62°, which is 7° *colder* than yesterday. Tomorrow is expected to be 11° **warmer** than today.

Currently:

- 61°
- Mostly Cloudy
- 99% humidity
- 13 mph wind
- 72% cloud cover
- 28 AQI 🟩
- 0.46 inches of rain expected in the next 48 hours

<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Mon:  0.00"              54 ----- 62
Tue:  0.32"                 58 --------- 72
Wed:  0.14"               55 ----- 63
Thu:  0.00"           49 ---------- 64
Fri:  0.00"     40 --------- 54
<b>Sat:  0.00"   37 --------- 51</b>
<b>Sun:  0.00"    38 ------------- 58</b>
Mon:  0.00"       43 -------------- 64
Tue:  0.00"          47 ------------- 68
Wed:  0.00"      42 --------- 56
Thu:  0.00"    38 ----------- 55
Fri:  0.00"        44 ----------- 61
<b>Sat:  0.00"            51 ---------- 66</b>
<b>Sun:  0.00"           49 ------------ 68</b>
Mon:  0.00"            51 ------------ 70
Tue:  0.00"              53 ---------- 70</code></pre>

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




