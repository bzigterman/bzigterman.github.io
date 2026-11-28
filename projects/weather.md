---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 02:52 PM CT, November 28</p>

<picture>
  <source srcset="{{ site.baseurl }}/plots/weather_2026-11-28_2052.png"
          media="(min-width: 750px)">
  <img src="{{ site.baseurl }}/plots/weather_2026-11-28_2052_mobile.png" alt="" />
</picture>

Today's high is 51°, which is 9° **warmer** than yesterday. Tomorrow is expected to be 8° *colder* than today.

Currently:

- 49°
- Clear
- 72% humidity
- 9 mph wind
- 11% cloud cover
- 35 AQI 🟩
- 1.29 inches of rain expected in the next 48 hours

<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;"><b>Sat:  0.00"      35 ---------- 51</b>
<b>Sun:  1.29"   31 --------- 44</b>
Mon:  0.00"   31 -------- 43
Tue:  0.00"     33 ---------- 49
Wed:  0.00"        38 ------------ 56
Thu:  0.05"              48 --------- 61
Fri:  0.24"               49 ----------- 65
<b>Sat:  0.00"       37 -------- 49</b>
<b>Sun:  0.00"       36 --------- 51</b>
Mon:  0.07"                51 ------ 60
Tue:  0.02"       36 ---------- 52
Wed:  0.00"      35 ------- 45
Thu:  0.00"       37 ------- 47
Fri:  0.00"        38 -------- 50
<b>Sat:  0.00"       37 ---------- 52</b>
<b>Sun:  0.00"        38 -------- 50</b></code></pre>

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




