---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 12:43 PM CT, July 25</p>

<iframe src="/interactive/champaign_weather.html" width="100%" height="600"> 
</iframe>

Today's high is 75°, which is 3° *colder* than yesterday. Tomorrow is expected to be 22° **warmer** than today.

Currently:

- 70°
- Overcast
- 96% humidity
- 6 mph wind
- 94% cloud cover
- 50 AQI 🟩

<noscript>
<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Sat:  0.00"          64 ------------ 75
Sun:  0.00"          64 ----------------------------------- 96
Mon:  0.01"                      75 --------------- 89
Tue:  0.00"                  72 -------------------- 90
Wed:  0.00"            66 -------------------- 84
Thu:  0.00"            66 ----------------- 82
Fri:  0.00"          64 ------------------- 82
Sat:  0.00"      61 --------- 69
Sun:  0.00"    59 ------------------------ 81
Mon:  0.00"          64 ----------------- 80
Tue:  0.01"            66 --------------------- 85
Wed:  0.05"         63 ---------------- 78
Thu:  0.00"     60 ------------------- 77
Fri:  0.00"      61 -------------------- 79
Sat:  0.00"          64 ------------------- 82
Sun:  0.07"     60 ------------------ 76</code></pre>
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




