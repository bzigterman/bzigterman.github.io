---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 08:25 PM CT, July 04</p>

<iframe src="/interactive/champaign_weather.html" width="100%" height="600"> 
</iframe>

Today's high is 87°, which is 9° *colder* than yesterday. Tomorrow is expected to be 4° *colder* than today.

Currently:

- 73°
- Mostly Cloudy
- 93% humidity
- 3 mph wind
- 83% cloud cover
- 52 AQI 🟨
- 0.34 inches of rain in the past 24 hours
- 0.1 inches of rain expected in the next 48 hours

<noscript>
<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Sat:  0.10"                       70 --------------------- 87
Sun:  0.00"                       70 ---------------- 83
Mon:  0.10"                65 ------------------ 79
Tue:  0.00"           61 ------------------------ 80
Wed:  0.00"                65 ----------------------- 83
Thu:  0.33"                     69 -------------- 80
Fri:  0.12"                 66 ---------------- 78
Sat:  0.00"        59 ------------------------ 77
Sun:  0.00"        59 ---------------------- 76
Mon:  0.00"     56 --------------------------- 77
Tue:  0.00"          60 ------------------------- 80
Wed:  0.06"                    68 ------------------ 82
Thu:  0.22"                 66 -------------------- 81
Fri:  0.51"                   67 ------------------- 82
Sat:  0.00"                          73 ----------------- 86
Sun:  0.01"                         72 ------------- 82</code></pre>
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




