---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 02:00 PM CT, August 26</p>

<picture>
  <source srcset="{{ site.baseurl }}/plots/weather_2026-08-26_1900.png"
          media="(min-width: 750px)">
  <img src="{{ site.baseurl }}/plots/weather_2026-08-26_1900_mobile.png" alt="" />
</picture>

Today's high is 86°, which is 7° **warmer** than yesterday. Tomorrow is expected to be 4° *colder* than today.

Currently:

- 86°
- Partly Cloudy
- 61% humidity
- 10 mph wind
- 41% cloud cover
- 41 AQI 🟩

<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Wed:  0.00"        64 ------------- 86
Thu:  0.00"         65 ---------- 83
Fri:  0.00"       62 ---------- 79
<b>Sat:  0.00"      60 ----------- 78</b>
<b>Sun:  0.01"         65 ---------- 83</b>
Mon:  0.00"              73 -------- 88
Tue:  0.00"              74 ----------- 92
Wed:  0.00"              74 ------------ 94
Thu:  0.00"               75 --------- 90
Fri:  0.05"              73 -------- 87
<b>Sat:  0.02"           69 ---- 75</b>
<b>Sun:  0.00"            71 ------------ 90</b>
Mon:  0.00"           68 ---------- 85
Tue:  0.06"        64 --------- 78
Wed:  0.00"      60 -------- 74
Thu:  0.00"   55 ----------------- 84</code></pre>

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




