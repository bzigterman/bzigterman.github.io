---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 09:35 AM CT, October 30</p>

<picture>
  <source srcset="{{ site.baseurl }}/plots/weather_2026-10-30_1436.png"
          media="(min-width: 750px)">
  <img src="{{ site.baseurl }}/plots/weather_2026-10-30_1436_mobile.png" alt="" />
</picture>

Today's high is 69°, which is 9° *colder* than yesterday. Tomorrow is expected to be 6° *colder* than today.

Currently:

- 53°
- Partly Cloudy
- 65% humidity
- 6 mph wind
- 58% cloud cover
- 51 AQI 🟨
- 0.08 inches of rain expected in the next 48 hours

<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Fri:  0.00"          46 -------------- 69
<b>Sat:  0.07"              53 ------- 64</b>
<b>Sun:  0.02"              54 ------- 65</b>
Mon:  0.00"               55 --- 60
Tue:  0.02"                  59 -------- 72
Wed:  0.24"                   61 --- 66
Thu:  0.00"              54 ------- 64
Fri:  0.00"            50 -- 54
<b>Sat:  0.00"        44 -------- 56</b>
<b>Sun:  0.00"     39 -------- 52</b>
Mon:  0.21"       42 ---- 48
Tue:  0.70"      41 -- 43
Wed:  0.00"    37 -------- 50
Thu:  0.00"   36 ---------- 52
Fri:  0.34"      40 ------- 51
<b>Sat:  0.19"      41 ------- 51</b></code></pre>

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




