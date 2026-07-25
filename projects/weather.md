---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 01:40 PM CT, July 25</p>

<iframe src="/interactive/champaign_weather.html" width="100%" height="600"> 
</iframe>

Today's high is 75°, which is 3° *colder* than yesterday. Tomorrow is expected to be 22° **warmer** than today.

Currently:

- 69°
- Overcast
- 95% humidity
- 8 mph wind
- 100% cloud cover
- 48 AQI 🟩
- 0.1 inches of rain expected in the next 48 hours

<noscript>
<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Sat:  0.00"           64 ----------- 75
Sun:  0.00"           64 ---------------------------------- 96
Mon:  0.10"                  71 ----------------- 87
Tue:  0.00"               68 --------------------- 88
Wed:  0.00"          63 ------------------ 80
Thu:  0.00"    58 -------------------- 77
Fri:  0.00"        62 ---------------- 77
Sat:  0.00"       61 --------------------- 80
Sun:  0.00"           64 --------------------- 84
Mon:  0.00"              67 -------------------- 86
Tue:  0.01"                  71 ----------------- 87
Wed:  0.05"                   72 ---------------- 87
Thu:  0.00"                     74 ------------------- 91
Fri:  0.00"                       76 -------------------- 94
Sat:  0.00"                       76 -------------------- 94
Sun:  0.07"                     74 --------------------- 93</code></pre>
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




