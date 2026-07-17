---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 11:16 AM CT, July 17</p>

<iframe src="/interactive/champaign_weather.html" width="100%" height="600"> 
</iframe>

Today's high is 88°, which is 5° *colder* than yesterday. Tomorrow is expected to be 4° **warmer** than today.

Currently:

- 85°
- Mostly Clear
- 75% humidity
- 7 mph wind
- 27% cloud cover
- 26 AQI 🟩
- 0.21 inches of rain expected in the next 48 hours

<noscript>
<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Fri:  0.00"                            76 ------------- 88
Sat:  0.20"                            76 ----------------- 92
Sun:  0.02"                   68 -------------- 81
Mon:  0.01"                 66 --------------------- 86
Tue:  0.04"            61 ---------------------- 82
Wed:  0.00"     55 --------------- 69
Thu:  0.00"    54 ---------------------- 74
Fri:  0.05"          59 -------------------- 78
Sat:  0.00"             62 ---------------- 77
Sun:  0.00"        58 --------------------- 77
Mon:  0.00"           60 ------------------ 77
Tue:  0.00"                65 --------------- 79
Wed:  0.44"                   68 ------------------- 86
Thu:  0.11"                     70 -------------------- 88
Fri:  0.00"                 66 ----------------- 82
Sat:  0.03"            61 ------------------ 78</code></pre>
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




