---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 06:48 AM CT, July 26</p>

<iframe src="/interactive/champaign_weather.html" width="100%" height="600"> 
</iframe>

Today's high is 88°, which is 15° **warmer** than yesterday. Tomorrow is expected to be 7° *colder* than today.

Currently:

- 70°
- Foggy
- 97% humidity
- 4 mph wind
- 89% cloud cover
- 52 AQI 🟨
- 0.05 inches of rain expected in the next 48 hours

<noscript>
<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Sun:  0.00"                       69 ---------------------- 88
Mon:  0.05"                       69 -------------- 81
Tue:  0.00"                      68 ---------------- 82
Wed:  0.00"           58 ------------------------ 79
Thu:  0.00"           58 ------------------------- 80
Fri:  0.00"                 63 ---------- 72
Sat:  0.04"                62 --------------------- 81
Sun:  0.00"                 63 --------------------- 82
Mon:  0.00"                   65 --------------------- 84
Tue:  0.00"                     67 ----------------------- 87
Wed:  0.11"                     67 ------------------- 84
Thu:  0.00"        55 --------------------- 74
Fri:  0.00"    52 -------------------------- 75
Sat:  0.03"          57 ------------------------- 79
Sun:  0.25"                62 ---------------------- 82
Mon:  0.00"            59 --------------------- 78</code></pre>
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




