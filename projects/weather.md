---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 08:00 AM CT, August 04</p>

<iframe src="/interactive/champaign_weather.html" width="100%" height="600"> 
</iframe>

Today's high is 85°, which is 4° **warmer** than yesterday. Tomorrow is expected to be 2° **warmer** than today.

Currently:

- 64°
- Foggy
- 99% humidity
- 3 mph wind
- 63% cloud cover
- 35 AQI 🟩
- 0.39 inches of rain expected in the next 48 hours

<noscript>
<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Tue:  0.00"             60 ---------------------------- 85
Wed:  0.04"                   65 ------------------------- 87
Thu:  0.48"                    66 ------------- 78
Fri:  0.22"                     67 ------------------ 83
Sat:  0.07"                        70 ------------------ 86
Sun:  0.00"                            73 ----------------- 88
Mon:  0.00"                             74 ---------------- 88
Tue:  0.67"                        70 -------------------- 87
Wed:  0.23"                 63 ------------------ 79
Thu:  0.00"          57 --------------------- 76
Fri:  0.00"    52 -------------------- 70
Sat:  0.83"            59 ----- 63
Sun:  0.01"                62 ------------- 74
Mon:  0.13"                 63 ------------------ 79
Tue:  0.00"             60 -------------------- 78
Wed:  0.00"            59 --------------------- 78</code></pre>
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




