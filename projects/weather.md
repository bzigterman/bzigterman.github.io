---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 05:31 AM CT, October 27</p>

<picture>
  <source srcset="{{ site.baseurl }}/plots/weather_2026-10-27_1031.png"
          media="(min-width: 750px)">
  <img src="{{ site.baseurl }}/plots/weather_2026-10-27_1031_mobile.png" alt="" />
</picture>

Today's high is 70°, which is 6° *colder* than yesterday. Tomorrow is expected to be 5° **warmer** than today.

Currently:

- 49°
- Partly Cloudy
- 97% humidity
- 4 mph wind
- 52% cloud cover
- 61 AQI 🟨

<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Tue:  0.00"        46 -------------- 70
Wed:  0.00"            53 ------------- 75
Thu:  0.01"               58 ----------- 76
Fri:  0.00"           50 ----------- 70
<b>Sat:  0.29"              55 ------- 68</b>
<b>Sun:  0.59"              56 --- 61</b>
Mon:  0.00"            52 -- 56
Tue:  0.00"            53 -- 56
Wed:  0.85"           50 -- 54
Thu:  0.42"         47 ----- 55
Fri:  0.00"     40 ------- 52
<b>Sat:  0.00"   37 -------- 50</b>
<b>Sun:  0.00"     40 ---------- 57</b>
Mon:  0.02"        45 ----------- 64
Tue:  0.35"             54 -- 58</code></pre>

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




