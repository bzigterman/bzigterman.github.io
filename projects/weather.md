---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 11:51 AM CT, September 16</p>

<picture>
  <source srcset="{{ site.baseurl }}/plots/weather_2026-09-16_1651.png"
          media="(min-width: 750px)">
  <img src="{{ site.baseurl }}/plots/weather_2026-09-16_1651_mobile.png" alt="" />
</picture>

Today's high is 85°, which is 12° *colder* than yesterday. Tomorrow is expected to be 3° **warmer** than today.

Currently:

- 81°
- Clear
- 86% humidity
- 4 mph wind
- 4% cloud cover
- 41 AQI 🟩
- 1.24 inches of rain in the past 24 hours
- 0.01 inches of rain expected in the next 48 hours

<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Wed:  0.02"                71 ------ 85
Thu:  0.00"               70 --------- 88
Fri:  0.19"              68 -------- 85
<b>Sat:  0.11"               70 ---------- 90</b>
<b>Sun:  0.18"              69 --------- 86</b>
Mon:  0.48"            64 ------- 78
Tue:  0.00"          61 --- 66
Wed:  0.00"      53 ----------- 74
Thu:  0.00"        57 ------------- 82
Fri:  0.00"            64 ------ 76
<b>Sat:  0.00"          59 -------- 75</b>
<b>Sun:  0.00"        56 -------------- 84</b>
Mon:  0.00"            65 -------------- 92
Tue:  0.13"            65 -------- 79
Wed:  0.00"    49 --------- 66
Thu:  0.00"   46 ----------- 67</code></pre>

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




