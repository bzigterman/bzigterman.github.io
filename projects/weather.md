---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 11:20 PM CT, July 31</p>

<iframe src="/interactive/champaign_weather.html" width="100%" height="600"> 
</iframe>

Today's high is 78°, which is 6° *colder* than yesterday. Tomorrow is expected to be 0° **warmer** than today.

Currently:

- 69°
- Overcast
- 85% humidity
- 8 mph wind
- 91% cloud cover
- 38 AQI 🟩
- 0.13 inches of rain in the past 24 hours
- 1.15 inches of rain expected in the next 48 hours

<noscript>
<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Fri:  0.02"       62 ---------------------- 78
Sat:  1.03"                68 --------------- 79
Sun:  0.14"            65 ----------------- 78
Mon:  0.00"      61 ----------------------- 78
Tue:  0.00"     60 --------------------------- 80
Wed:  0.00"          64 ------------------------- 82
Thu:  0.01"              67 -------------------------- 86
Fri:  0.09"                  70 ----------------- 82
Sat:  0.00"                  70 -------------------------- 89
Sun:  0.01"                        74 ------------------ 87
Mon:  0.10"                  70 ------------------------- 88
Tue:  1.33"                    71 --------------- 82
Wed:  0.57"                68 ----- 72
Thu:  0.50"             66 -------------- 76
Fri:  0.59"             66 ------------ 75
Sat:  0.09"              67 ------------------ 80</code></pre>
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




