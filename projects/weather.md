---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 04:59 AM CT, November 05</p>

<picture>
  <source srcset="{{ site.baseurl }}/plots/weather_2026-11-05_1059.png"
          media="(min-width: 750px)">
  <img src="{{ site.baseurl }}/plots/weather_2026-11-05_1059_mobile.png" alt="" />
</picture>

Today's high is 55°, which is 12° *colder* than yesterday. Tomorrow is expected to be 5° *colder* than today.

Currently:

- 49°
- Clear
- 82% humidity
- 9 mph wind
- 0% cloud cover
- 23 AQI 🟩
- 0.03 inches of rain in the past 24 hours
- 0.04 inches of rain expected in the next 48 hours

<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Thu:  0.03"           48 --- 55
Fri:  0.02"     38 ------- 50
<b>Sat:  0.00"    36 -------- 51</b>
<b>Sun:  0.00"     38 ----------- 57</b>
Mon:  0.00"        43 ------------ 65
Tue:  0.00"           48 ---------- 66
Wed:  0.00"     39 ---------- 56
Thu:  0.00"   35 ------ 46
Fri:  0.00"     38 -------- 53
<b>Sat:  0.00"    37 ------------- 60</b>
<b>Sun:  0.00"         45 ------------ 66</b>
Mon:  0.04"               56 ---------- 73
Tue:  0.03"                 59 --------- 75
Wed:  0.05"             52 ---- 60
Thu:  0.00"    37 --------- 52</code></pre>

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




