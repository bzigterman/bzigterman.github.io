---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 09:40 PM CT, August 16</p>

<iframe src="/interactive/champaign_weather.html" width="100%" height="600"> 
</iframe>

Today's high is 86°, which is 4° **warmer** than yesterday. Tomorrow is expected to be 6° *colder* than today.

Currently:

- 74°
- Partly Cloudy
- 95% humidity
- 4 mph wind
- 60% cloud cover
- 35 AQI 🟩
- 0.05 inches of rain in the past 24 hours

<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Sun:  0.04"                  73 -------- 86
Mon:  0.00"             66 -------- 79
Tue:  0.00"           62 ------------- 84
Wed:  0.10"              68 -------- 80
Thu:  0.00"           62 ------- 74
Fri:  0.00"          61 ----------- 79
Sat:  0.09"           62 ---------- 79
Sun:  0.01"       56 ---------- 72
Mon:  0.00"   50 -------------- 72
Tue:  0.02"        58 -------------- 80
Wed:  0.28"             66 ---------- 82
Thu:  0.00"          61 --------- 75
Fri:  0.00"        57 ------------- 78
Sat:  0.01"          60 ------------- 82
Sun:  0.00"      55 ---------- 71
Mon:  0.00"    52 ---------- 68</code></pre>

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




