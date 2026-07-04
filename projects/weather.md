---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 06:44 PM CT, July 04</p>

<iframe src="/interactive/champaign_weather.html" width="100%" height="600"> 
</iframe>

Today's high is 87°, which is 9° *colder* than yesterday. Tomorrow is expected to be 4° *colder* than today.

Currently:

- 76°
- Overcast
- 93% humidity
- 0 mph wind
- 98% cloud cover
- 56 AQI 🟨
- 0.33 inches of rain in the past 24 hours
- 0.09 inches of rain expected in the next 48 hours

<noscript>
<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Sat:  0.10"                        70 --------------------- 87
Sun:  0.00"                       69 ----------------- 83
Mon:  0.09"               63 ------------------- 78
Tue:  0.00"         58 -------------------------- 79
Wed:  0.00"               63 ----------------------- 82
Thu:  0.24"                        70 ------------- 81
Fri:  0.08"                        70 ------------------ 85
Sat:  0.04"           59 ------------------- 75
Sun:  0.00"      55 ---------------------- 73
Mon:  0.02"         58 ----------------- 72
Tue:  0.00"    54 --------------------------- 76
Wed:  0.00"             61 ------------------- 77
Thu:  0.00"              62 ----------------------- 81
Fri:  0.01"                     68 ------------------- 83
Sat:  0.13"                    67 ---------- 75
Sun:  0.01"                 64 ------------ 74</code></pre>
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




