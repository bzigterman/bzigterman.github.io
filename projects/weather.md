---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 08:18 AM CT, August 01</p>

<iframe src="/interactive/champaign_weather.html" width="100%" height="600"> 
</iframe>

Today's high is 74°, which is 5° *colder* than yesterday. Tomorrow is expected to be 3° **warmer** than today.

Currently:

- 70°
- Drizzle
- 93% humidity
- 11 mph wind
- 78% cloud cover
- 31 AQI 🟩
- 0.52 inches of rain in the past 24 hours
- 1.87 inches of rain expected in the next 48 hours

<noscript>
<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Sat:  2.00"               68 --------- 74
Sun:  0.02"              67 -------------- 77
Mon:  0.00"     61 ----------------------- 77
Tue:  0.00"      62 ------------------------- 79
Wed:  0.02"           65 -------------------------- 83
Thu:  1.23"        63 -------------------- 77
Fri:  0.01"               68 -------------------- 82
Sat:  2.15"              67 ----------------------- 83
Sun:  1.03"                 69 -------------------- 83
Mon:  0.02"                      73 ------------------- 86
Tue:  0.12"            66 -------------------- 80
Wed:  0.16"              67 ------------------ 80
Thu:  0.10"                  70 ----------------------- 86
Fri:  0.04"                   71 ------------------------ 87
Sat:  0.02"                        74 -------------- 84
Sun:  0.07"                     72 ----------------------- 88</code></pre>
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




