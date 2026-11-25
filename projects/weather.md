---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 08:46 PM CT, November 24</p>

<picture>
  <source srcset="{{ site.baseurl }}/plots/weather_2026-11-25_0246.png"
          media="(min-width: 750px)">
  <img src="{{ site.baseurl }}/plots/weather_2026-11-25_0246_mobile.png" alt="" />
</picture>

Today's high is 42°, which is 1° **warmer** than yesterday. Tomorrow is expected to be 1° *colder* than today.

Currently:

- 32°
- Mostly Clear
- 80% humidity
- 7 mph wind
- 32% cloud cover
- 50 AQI 🟩
- 0.38 inches of rain expected in the next 48 hours

<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Tue:  0.00"   23 ----------- 42
Wed:  0.00"    24 ---------- 41
Thu:  0.49"          35 ---- 42
Fri:  0.08"          35 -------- 48
<b>Sat:  0.00"          35 --------- 51</b>
<b>Sun:  0.02"             40 ------ 51</b>
Mon:  0.00"          35 -------- 48
Tue:  0.48"            38 ------ 49
Wed:  0.00"                 46 ----- 55
Thu:  0.00"                45 ---------- 62
Fri:  0.00"             40 -------- 53
<b>Sat:  0.00"           36 ----- 45</b>
<b>Sun:  0.00"          34 ------- 46</b>
Mon:  0.16"          35 ---- 42
Tue:  1.14"          35 ---- 42
Wed:  0.03"          35 ------ 45</code></pre>

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




