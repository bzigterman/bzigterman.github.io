---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 08:17 PM CT, June 26</p>

<iframe src="/interactive/champaign_weather.html" width="100%" height="600"> 
</iframe>

Today's high is 68°, which is 14° *colder* than yesterday. Tomorrow is expected to be 11° **warmer** than today.

Currently:

- 68°
- Overcast
- 96% humidity
- 10 mph wind
- 91% cloud cover
- 30 AQI 🟩
- 0.08 inches of rain in the past 24 hours
- 0.05 inches of rain expected in the next 48 hours

<noscript>
<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Fri:  0.06"                66 -- 68
Sat:  0.06"                66 --------------- 79
Sun:  0.00"                66 ------------------------ 88
Mon:  0.00"                      71 --------------------- 90
Tue:  0.00"                        73 ------------------- 90
Wed:  0.02"                         74 -------------------- 92
Thu:  0.01"                          75 ----------------- 90
Fri:  0.01"                         74 ----------------- 89
Sat:  0.08"                       72 --------------- 86
Sun:  0.00"                    69 --------------- 83
Mon:  0.00"                66 --------------------- 85
Tue:  0.04"                    69 ------------------ 86
Wed:  0.01"                66 ---------------- 80
Thu:  0.04"            62 ---------------- 77
Fri:  0.00"    55 --------------------- 74
Sat:  0.00"          60 --------------------- 79</code></pre>
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




