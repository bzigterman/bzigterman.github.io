---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 02:56 PM CT, August 16</p>

<iframe src="/interactive/champaign_weather.html" width="100%" height="600"> 
</iframe>

Today's high is 86°, which is 5° **warmer** than yesterday. Tomorrow is expected to be 5° *colder* than today.

Currently:

- 86°
- Mostly Clear
- 75% humidity
- 9 mph wind
- 19% cloud cover
- 44 AQI 🟩
- 0.03 inches of rain in the past 24 hours
- 0.03 inches of rain expected in the next 48 hours

<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Sun:  0.04"                  73 -------- 86
Mon:  0.00"                71 ------- 81
Tue:  0.00"             66 ---------- 82
Wed:  0.16"              68 ------- 78
Thu:  0.18"            64 ------ 73
Fri:  0.00"          61 ---------- 76
Sat:  0.00"        58 ------------- 79
Sun:  0.00"         59 ----------- 77
Mon:  0.09"      54 ----------- 72
Tue:  0.15"          61 ---------- 76
Wed:  0.00"            64 --------- 79
Thu:  0.00"         59 ----------- 76
Fri:  0.00"       56 ----------- 74
Sat:  0.00"   50 -------------- 72
Sun:  0.00"    52 -------------- 73
Mon:  0.00"      55 --------------- 79</code></pre>

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




