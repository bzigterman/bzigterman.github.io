---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 12:34 PM CT, June 22</p>

<iframe src="/interactive/champaign_weather.html" width="100%" height="600"> 
</iframe>

Today's high is 70°, which is 3° *colder* than yesterday. Tomorrow is expected to be 5° **warmer** than today.

Currently:

- 65°
- Overcast
- 81% humidity
- 11 mph wind
- 91% cloud cover
- 34 AQI 🟩
- 0.88 inches of rain in the past 24 hours

<noscript>
<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Mon:  0.00"       58 -------------- 70
Tue:  0.00"    56 ------------------------ 76
Wed:  0.10"       58 ----------------------- 78
Thu:  1.25"              64 ------------------- 80
Fri:  0.95"              64 -------------- 76
Sat:  0.15"              64 -------------------- 81
Sun:  0.01"                     70 --------------------- 88
Mon:  0.00"                       72 -------------------- 89
Tue:  0.00"                        73 -------------- 84
Wed:  0.01"                       72 -------------------- 89
Thu:  0.08"                       72 ---------------------- 90
Fri:  0.15"                 67 ------------------- 83
Sat:  0.00"           62 ---------------- 75
Sun:  0.00"       58 ---------------- 72
Mon:  0.00"    56 ------------------------ 76
Tue:  0.00"           62 ------------------- 78</code></pre>
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




