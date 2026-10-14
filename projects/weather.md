---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 12:16 AM CT, October 14</p>

<picture>
  <source srcset="{{ site.baseurl }}/plots/weather_2026-10-14_0517.png"
          media="(min-width: 750px)">
  <img src="{{ site.baseurl }}/plots/weather_2026-10-14_0517_mobile.png" alt="" />
</picture>

Today's high is 77°, which is 13° *colder* than yesterday. Tomorrow is expected to be 6° *colder* than today.

Currently:

- 77°
- Mostly Clear
- 74% humidity
- 10 mph wind
- 24% cloud cover
- 40 AQI 🟩
- 0.03 inches of rain expected in the next 48 hours

<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Wed:  0.00"                  62 -------- 77
Thu:  0.02"                59 ------- 71
Fri:  0.19"         46 ---------- 64
<b>Sat:  0.00"      40 ---------- 58</b>
<b>Sun:  0.00"        44 ------------ 66</b>
Mon:  0.04"            52 ------ 63
Tue:  0.00"           50 -------- 65
Wed:  0.00"            52 ----------- 71
Thu:  0.18"      40 ------------- 64
Fri:  0.00"   35 --------- 52
<b>Sat:  0.01"     39 ------- 52</b>
<b>Sun:  0.06"          47 --- 54</b>
Mon:  0.01"           49 ----- 58
Tue:  0.02"             54 -- 57
Wed:  0.00"            51 ---- 58</code></pre>

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




