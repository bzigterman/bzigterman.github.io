---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 07:50 PM CT, October 15</p>

<picture>
  <source srcset="{{ site.baseurl }}/plots/weather_2026-10-16_0050.png"
          media="(min-width: 750px)">
  <img src="{{ site.baseurl }}/plots/weather_2026-10-16_0050_mobile.png" alt="" />
</picture>

Today's high is 72°, which is 5° *colder* than yesterday. Tomorrow is expected to be 8° *colder* than today.

Currently:

- 72°
- Mostly Clear
- 94% humidity
- 10 mph wind
- 25% cloud cover
- 43 AQI 🟩
- 0.42 inches of rain in the past 24 hours

<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Thu:  0.21"                  62 ------ 72
Fri:  0.00"      41 ------------- 64
<b>Sat:  0.00"   35 ----------- 55</b>
<b>Sun:  0.00"      40 ------------- 63</b>
Mon:  0.00"         45 ------------ 68
Tue:  0.00"           50 ------------ 70
Wed:  0.00"           49 ------------ 71
Thu:  0.00"             52 ------------ 74
Fri:  0.00"             53 ------------- 76
<b>Sat:  0.00"              54 ---------- 72</b>
<b>Sun:  0.00"              54 ---------- 73</b>
Mon:  0.00"              55 --------- 71
Tue:  0.00"           50 --------- 66
Wed:  0.77"           49 ------------- 72
Thu:  0.08"          48 ----- 57
Fri:  0.00"         46 ---------- 64</code></pre>

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




