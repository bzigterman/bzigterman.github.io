---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 01:52 PM CT, November 09</p>

<picture>
  <source srcset="{{ site.baseurl }}/plots/weather_2026-11-09_1952.png"
          media="(min-width: 750px)">
  <img src="{{ site.baseurl }}/plots/weather_2026-11-09_1952_mobile.png" alt="" />
</picture>

Today's high is 63°, which is 1° *colder* than yesterday. Tomorrow is expected to be 2° **warmer** than today.

Currently:

- 62°
- Clear
- 50% humidity
- 7 mph wind
- 0% cloud cover
- 21 AQI 🟩
- 0.09 inches of rain expected in the next 48 hours

<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Mon:  0.00"      35 ------------------ 63
Tue:  0.00"           43 --------------- 66
Wed:  0.23"          40 ------------- 62
Thu:  0.00"      35 -------- 48
Fri:  0.00"    31 ------- 42
<b>Sat:  0.00"   30 ---------- 45</b>
<b>Sun:  0.00"    32 ---------- 48</b>
Mon:  0.00"       36 ---------- 52
Tue:  0.00"       36 ------------ 55
Wed:  0.00"        38 ------------- 58
Thu:  0.00"          41 ------------- 61
Fri:  0.50"                50 --- 55
<b>Sat:  0.51"             46 -------- 59</b>
<b>Sun:  0.00"       36 --------- 51</b>
Mon:  0.00"     33 -------- 46
Tue:  0.00"      35 -------- 48</code></pre>

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




