---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 02:01 PM CT, September 13</p>

<picture>
  <source srcset="{{ site.baseurl }}/plots/weather_2026-09-13_1901.png"
          media="(min-width: 750px)">
  <img src="{{ site.baseurl }}/plots/weather_2026-09-13_1901_mobile.png" alt="" />
</picture>

Today's high is 82°, which is 8° *colder* than yesterday. Tomorrow is expected to be 4° *colder* than today.

Currently:

- 81°
- Clear
- 47% humidity
- 14 mph wind
- 0% cloud cover
- 46 AQI 🟩

<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;"><b>Sun:  0.00"         64 ---------- 82</b>
Mon:  0.00"       59 --------- 77
Tue:  0.18"           67 ------------- 93
Wed:  0.20"         64 --------- 81
Thu:  0.15"         63 ------- 76
Fri:  0.00"           68 ------- 81
<b>Sat:  0.02"           68 --------------- 96</b>
<b>Sun:  0.39"         64 ---- 72</b>
Mon:  0.29"       59 --------- 77
Tue:  0.05"    54 -- 58
Wed:  0.00"    54 -------- 70
Thu:  0.00"     55 --------- 74
Fri:  0.00"   52 ---------- 71
<b>Sat:  0.02"     56 ----------- 76</b>
<b>Sun:  0.00"       59 ------------ 82</b>
Mon:  0.21"           67 ----- 77</code></pre>

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




