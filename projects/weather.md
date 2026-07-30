---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 12:26 PM CT, July 30</p>

<iframe src="/interactive/champaign_weather.html" width="100%" height="600"> 
</iframe>

Today's high is 86°, which is 4° **warmer** than yesterday. Tomorrow is expected to be 0° *colder* than today.

Currently:

- 83°
- Clear
- 52% humidity
- 6 mph wind
- 1% cloud cover
- 31 AQI 🟩
- 1.58 inches of rain expected in the next 48 hours

<noscript>
<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Thu:  0.00"     58 --------------------------------------- 86
Fri:  0.16"               65 ----------------------------- 86
Sat:  1.69"               65 --------- 72
Sun:  0.45"            63 ----------------- 75
Mon:  0.00"     58 ------------------------- 76
Tue:  0.00"     58 ---------------------------- 78
Wed:  0.00"         61 --------------------------- 80
Thu:  0.06"             64 ----------------------- 80
Fri:  0.45"               65 -------------- 75
Sat:  0.64"                 67 ------------------------ 84
Sun:  0.29"                 67 --------------------------- 86
Mon:  0.37"                   68 ------------- 77
Tue:  0.32"                      70 ------------ 79
Wed:  0.35"                 67 ---------------- 78
Thu:  0.02"               65 ----------------- 77
Fri:  0.00"        60 ------------------------- 78</code></pre>
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




