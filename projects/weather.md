---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 08:17 AM CT, June 25</p>

<iframe src="/interactive/champaign_weather.html" width="100%" height="600"> 
</iframe>

Today's high is 84°, which is 3° **warmer** than yesterday. Tomorrow is expected to be 14° *colder* than today.

Currently:

- 71°
- Partly Cloudy
- 93% humidity
- 7 mph wind
- 39% cloud cover
- 23 AQI 🟩
- 0.04 inches of rain in the past 24 hours
- 1.76 inches of rain expected in the next 48 hours

<noscript>
<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Thu:  0.00"             66 --------------------- 84
Fri:  1.76"             66 ---- 70
Sat:  0.00"    59 ------------------- 75
Sun:  0.29"           65 ----------------------- 84
Mon:  0.00"                    72 --------------------- 90
Tue:  0.00"                      74 --------------------- 92
Wed:  0.00"                        76 ------------------- 92
Thu:  0.01"                          77 ----------------- 92
Fri:  0.00"                           78 ------------------ 93
Sat:  0.00"                          77 ----------------- 92
Sun:  0.01"                           78 -------------- 90
Mon:  0.00"                    72 -------------------- 89
Tue:  0.00"                69 ------------------------ 89
Wed:  0.13"                   71 -------------- 83
Thu:  0.00"               68 ----------------- 82
Fri:  0.00"             66 -------------------- 83</code></pre>
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




