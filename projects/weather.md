---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 06:39 PM CT, August 20</p>

<picture>
  <source srcset="{{ site.baseurl }}/plots/weather_2026-08-20_2339.png"
          media="(min-width: 750px)">
  <img src="{{ site.baseurl }}/plots/weather_2026-08-20_2339_mobile.png" alt="" />
</picture>

Today's high is 80°, which is 2° *colder* than yesterday. Tomorrow is expected to be 2° **warmer** than today.

Currently:

- 77°
- Mostly Clear
- 69% humidity
- 4 mph wind
- 33% cloud cover
- 46 AQI 🟩
- 0.19 inches of rain in the past 24 hours

<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Thu:  0.00"          66 ----------- 80
Fri:  0.00"      60 ---------------- 82
<b>Sat:  0.02"         64 ---------- 78</b>
<b>Sun:  0.00"     59 ------------- 76</b>
Mon:  0.03"     59 ------ 67
Tue:  0.00"      60 ------------- 77
Wed:  0.10"       62 --------------- 81
Thu:  0.01"        63 ------------ 79
Fri:  0.00"       62 -------------- 80
<b>Sat:  0.01"       62 --------------- 82</b>
<b>Sun:  0.10"          66 -------------- 84</b>
Mon:  1.13"          66 ------------ 81
Tue:  0.37"       61 ---------- 75
Wed:  0.05"    57 -------------- 76
Thu:  0.02"                73 --------- 86
Fri:  0.11"         64 ------------- 81</code></pre>

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




