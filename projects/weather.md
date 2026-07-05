---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 10:38 AM CT, July 05</p>

<iframe src="/interactive/champaign_weather.html" width="100%" height="600"> 
</iframe>

Today's high is 84°, which is 4° *colder* than yesterday. Tomorrow is expected to be 4° *colder* than today.

Currently:

- 77°
- Overcast
- 87% humidity
- 6 mph wind
- 95% cloud cover
- 24 AQI 🟩
- 0.32 inches of rain in the past 24 hours

<noscript>
<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Sun:  0.00"                     68 ------------------- 84
Mon:  0.00"                 65 ------------------ 80
Tue:  0.00"               63 -------------------- 80
Wed:  0.00"                64 ---------------------- 82
Thu:  0.59"                    67 ------------------ 82
Fri:  0.06"                          72 -------------- 84
Sat:  0.12"                      69 -------------- 81
Sun:  0.00"                     68 -------------------- 85
Mon:  0.00"                      69 --------------------- 87
Tue:  0.00"                             75 ---------------- 88
Wed:  0.00"          59 ------------------------ 79
Thu:  0.00"    54 ---------------------------- 77
Fri:  0.00"          59 ------------------------- 80
Sat:  0.01"                 65 ------------------------ 85
Sun:  0.06"                       70 ----------------- 84
Mon:  0.00"                       70 ------------------ 85</code></pre>
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




