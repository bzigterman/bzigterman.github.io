---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 06:57 PM CT, July 10</p>

<iframe src="/interactive/champaign_weather.html" width="100%" height="600"> 
</iframe>

Today's high is 88°, which is 2° *colder* than yesterday. Tomorrow is expected to be 6° *colder* than today.

Currently:

- 80°
- Mostly Cloudy
- 77% humidity
- 4 mph wind
- 67% cloud cover
- 90 AQI 🟨
- 0.02 inches of rain in the past 24 hours
- 1.35 inches of rain expected in the next 48 hours

<noscript>
<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Fri:  1.89"                 69 --------------------------- 88
Sat:  0.07"                   70 ----------------- 82
Sun:  0.00"             66 -------------------- 80
Mon:  0.00"     60 ---------------------------- 80
Tue:  0.00"          64 ----------------------------- 84
Wed:  0.07"                   70 --------------------- 85
Thu:  0.11"                      72 ------------------ 85
Fri:  0.07"                   70 ---------------------- 86
Sat:  0.02"                 69 ---------------------- 84
Sun:  0.23"          64 ---------------- 75
Mon:  0.44"             66 ------ 70
Tue:  0.07"             66 ------------------------------ 87
Wed:  0.00"                    71 ---------- 78
Thu:  0.00"               67 ----------------- 79
Fri:  0.00"               67 ------------------------- 85
Sat:  0.00"         63 --------------------- 78</code></pre>
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




