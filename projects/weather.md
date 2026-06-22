---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 06:33 PM CT, June 22</p>

<iframe src="/interactive/champaign_weather.html" width="100%" height="600"> 
</iframe>

Today's high is 71°, which is 3° *colder* than yesterday. Tomorrow is expected to be 4° **warmer** than today.

Currently:

- 70°
- Clear
- 59% humidity
- 8 mph wind
- 1% cloud cover
- 41 AQI 🟩
- 0.08 inches of rain in the past 24 hours
- 0.05 inches of rain expected in the next 48 hours

<noscript>
<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Mon:  0.00"        58 -------------- 71
Tue:  0.00"    55 ----------------------- 75
Wed:  0.10"         59 -------------------- 77
Thu:  1.25"              64 --------------------- 82
Fri:  0.95"                 66 ------------- 78
Sat:  0.15"                    69 ------------------ 85
Sun:  0.01"                      71 ------------------- 88
Mon:  0.00"                       72 --------------------- 90
Tue:  0.00"                           75 ------------------ 91
Wed:  0.01"                           75 ------------------ 91
Thu:  0.08"                          74 ------------------ 90
Fri:  0.15"                     70 -------------- 82
Sat:  0.00"                65 -------------- 78
Sun:  0.00"          60 --------------------- 79
Mon:  0.00"                 66 ------------------- 83
Tue:  0.00"                65 ---------------------- 85</code></pre>
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




