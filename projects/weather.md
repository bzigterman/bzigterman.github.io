---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 01:01 PM CT, July 20</p>

<iframe src="/interactive/champaign_weather.html" width="100%" height="600"> 
</iframe>

Today's high is 86°, which is 2° **warmer** than yesterday. Tomorrow is expected to be 2° **warmer** than today.

Currently:

- 85°
- Clear
- 61% humidity
- 6 mph wind
- 11% cloud cover
- 58 AQI 🟨
- 0.02 inches of rain expected in the next 48 hours

<noscript>
<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Mon:  0.00"                 64 ------------------------ 86
Tue:  0.02"                          72 ------------------ 89
Wed:  0.00"        56 --------------- 70
Thu:  0.00"    52 ---------------------- 72
Fri:  0.00"            59 ----------- 70
Sat:  0.00"            59 ------------ 71
Sun:  0.04"                 64 --------------------- 84
Mon:  0.11"                        71 ------------------- 88
Tue:  1.61"              61 ------------- 73
Wed:  0.00"        56 ---------------------- 76
Thu:  0.00"               62 ------------------ 79
Fri:  0.00"                       70 ------------------ 86
Sat:  0.00"                          72 ------------------- 90
Sun:  0.15"                       70 -------------- 83
Mon:  0.01"        56 -------------------- 74
Tue:  0.00"    52 ------------------ 69</code></pre>
</noscript>
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




