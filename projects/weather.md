---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 06:29 PM CT, June 26</p>

<iframe src="/interactive/champaign_weather.html" width="100%" height="600"> 
</iframe>

Today's high is 70°, which is 12° *colder* than yesterday. Tomorrow is expected to be 9° **warmer** than today.

Currently:

- 69°
- Overcast
- 95% humidity
- 8 mph wind
- 96% cloud cover
- 28 AQI 🟩
- 0.08 inches of rain in the past 24 hours

<noscript>
<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Fri:  0.06"      66 ------ 70
Sat:  0.00"      66 -------------------- 79
Sun:  0.00"      66 ---------------------------------- 88
Mon:  0.00"                72 -------------------------- 90
Tue:  0.00"                 73 --------------------------- 91
Wed:  0.01"                  74 -------------------------- 91
Thu:  0.06"                      76 -------------------- 90
Fri:  0.00"                  74 ------------------ 86
Sat:  0.07"                72 ------------------------ 88
Sun:  0.02"                  74 ---------------------- 88
Mon:  0.11"                  74 -------------------- 87
Tue:  0.00"            70 ---------------------------- 88
Wed:  0.00"              71 ------------------------ 87
Thu:  0.26"              71 --------------------- 85
Fri:  0.00"      66 ---------------------- 80
Sat:  0.00"     65 ------------------------- 82</code></pre>
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




