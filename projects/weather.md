---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 10:04 AM CT, June 21</p>

<iframe src="/interactive/champaign_weather.html" width="100%" height="600"> 
</iframe>

Today's high is 78°, which is 3° *colder* than yesterday. Tomorrow is expected to be 7° *colder* than today.

Currently:

- 73°
- Mostly Cloudy
- 68% humidity
- 8 mph wind
- 74% cloud cover
- 19 AQI 🟩
- 0.88 inches of rain expected in the next 48 hours

<noscript>
<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Sun:  1.65"           61 -------------------- 78
Mon:  0.00"         59 -------------- 71
Tue:  0.00"     56 ---------------------- 75
Wed:  0.09"       57 ---------------------- 76
Thu:  0.36"                 66 -------------- 78
Fri:  0.18"            62 ------------------ 77
Sat:  0.16"                   68 --------------- 81
Sun:  0.09"                       71 ------------------ 87
Mon:  0.00"                          74 ---------------- 88
Tue:  0.00"                          74 ------------------- 90
Wed:  0.05"                         73 ------------------- 89
Thu:  0.12"                   68 ---------------------- 87
Fri:  0.15"                 66 -------------- 78
Sat:  0.00"              63 ----------------- 78
Sun:  0.00"          60 ------------------- 76
Mon:  0.00"    55 --------------------- 73</code></pre>
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




