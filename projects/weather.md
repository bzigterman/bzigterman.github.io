---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 12:04 PM CT, August 05</p>

<iframe src="/interactive/champaign_weather.html" width="100%" height="600"> 
</iframe>

Today's high is 87°, which is 4° **warmer** than yesterday. Tomorrow is expected to be 5° *colder* than today.

Currently:

- 82°
- Partly Cloudy
- 61% humidity
- 7 mph wind
- 54% cloud cover
- 51 AQI 🟨
- 0.79 inches of rain expected in the next 48 hours

<noscript>
<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Wed:  0.68"              64 ----------------------------- 87
Thu:  0.15"                  67 -------------------- 83
Fri:  0.10"                      70 ------------------ 84
Sat:  0.08"                 66 ----------------------- 84
Sun:  0.00"                        72 -------------------- 88
Mon:  0.24"                     69 --------------------- 86
Tue:  0.42"                 66 ----------------- 80
Wed:  0.00"           61 ------------------- 76
Thu:  0.00"           61 ----------------------- 80
Fri:  0.01"       58 ------------------------- 78
Sat:  0.55"              64 ----------------- 77
Sun:  0.02"          60 ------------ 70
Mon:  0.00"    56 -------------------------- 76
Tue:  0.19"          60 ----------------- 74
Wed:  1.41"             63 --------- 70
Thu:  0.26"              64 ------ 68</code></pre>
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




