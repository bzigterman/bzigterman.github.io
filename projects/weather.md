---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 08:15 PM CT, August 01</p>

<iframe src="/interactive/champaign_weather.html" width="100%" height="600"> 
</iframe>

Today's high is 73°, which is 5° *colder* than yesterday. Tomorrow is expected to be 8° **warmer** than today.

Currently:

- 69°
- Drizzle
- 96% humidity
- 10 mph wind
- 83% cloud cover
- 34 AQI 🟩
- 0.79 inches of rain in the past 24 hours
- 0.35 inches of rain expected in the next 48 hours

<noscript>
<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Sat:  2.87"                68 ------ 73
Sun:  0.00"             66 -------------------- 81
Mon:  0.00"          64 ------------------- 78
Tue:  0.00"     60 -------------------------- 79
Wed:  0.14"          64 ------------------------- 82
Thu:  2.89"            65 --------------------- 81
Fri:  0.07"              67 --------------- 78
Sat:  0.24"                 69 ------------------- 83
Sun:  0.18"                 69 -------------------- 84
Mon:  0.05"                      73 ---------------------- 89
Tue:  0.00"             66 ----------------------------- 87
Wed:  0.00"                     72 ----------------------- 89
Thu:  0.00"                      73 ------------------ 86
Fri:  0.00"                68 ------------------- 82
Sat:  0.00"       62 ---------------------- 78
Sun:  0.00"      61 --------------------------- 81</code></pre>
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




