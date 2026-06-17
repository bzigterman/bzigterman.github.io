---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 01:18 PM CT, June 17</p>

<iframe src="/interactive/champaign_weather.html" width="100%" height="600"> 
</iframe>

Today's high is 73°, which is 6° *colder* than yesterday. Tomorrow is expected to be 3° *colder* than today.

Currently:

- 69°
- Drizzle
- 90% humidity
- 17 mph wind
- 100% cloud cover
- 23 AQI 🟩
- 0.28 inches of rain in the past 24 hours
- 0.63 inches of rain expected in the next 48 hours

<noscript>
<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Wed:  0.63"            55 ----------------------- 73
Thu:  0.00"                    61 ------------ 70
Fri:  0.00"                58 ---------------------- 75
Sat:  0.06"                   60 ---------------------- 77
Sun:  2.74"            55 ------------ 64
Mon:  0.00"     49 ---------------------------- 71
Tue:  0.00"            55 ----------------------- 73
Wed:  0.02"                   60 ---------------------- 77
Thu:  0.00"                58 ------------------------- 77
Fri:  0.24"                     62 --------------------- 78
Sat:  0.06"                            67 ----------- 76
Sun:  0.07"                         65 ------------------- 80
Mon:  0.00"                         65 ----------------- 78
Tue:  0.04"                        64 -------------------- 80
Wed:  0.32"                         65 ------------------- 80
Thu:  0.00"                     62 ------------------ 76</code></pre>
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




