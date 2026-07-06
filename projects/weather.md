---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 12:43 PM CT, July 06</p>

<iframe src="/interactive/champaign_weather.html" width="100%" height="600"> 
</iframe>

Today's high is 80°, which is 3° *colder* than yesterday. Tomorrow is expected to be 7° **warmer** than today.

Currently:

- 78°
- Mostly Cloudy
- 80% humidity
- 4 mph wind
- 83% cloud cover
- 31 AQI 🟩

<noscript>
<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Mon:  0.00"               67 ------------------ 80
Tue:  0.00"             66 ------------------------------ 87
Wed:  0.00"             66 ------------------------ 83
Thu:  0.51"                68 ----------------------- 84
Fri:  0.48"                68 -------------------- 82
Sat:  0.13"                68 --------------------- 83
Sun:  0.00"                   70 ---------------------- 86
Mon:  0.00"                       73 --------------------- 88
Tue:  0.02"                68 ------------------------- 86
Wed:  0.00"          64 -------------------- 78
Thu:  0.01"      61 -------------------------- 79
Fri:  0.01"      61 ----------------------- 77
Sat:  0.04"            65 ---------------------- 81
Sun:  0.00"     60 ---------------------------- 80
Mon:  0.00"        62 ------------------------- 80
Tue:  0.00"         63 ------------------------- 81</code></pre>
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




