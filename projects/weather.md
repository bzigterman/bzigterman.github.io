---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 04:51 PM CT, July 19</p>

<iframe src="/interactive/champaign_weather.html" width="100%" height="600"> 
</iframe>

Today's high is 84°, which is 6° *colder* than yesterday. Tomorrow is expected to be 6° **warmer** than today.

Currently:

- 84°
- Clear
- 56% humidity
- 7 mph wind
- 7% cloud cover
- 59 AQI 🟨
- 0.02 inches of rain in the past 24 hours
- 0.03 inches of rain expected in the next 48 hours

<noscript>
<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Sun:  0.00"                   68 ------------------- 84
Mon:  0.00"              63 ------------------------------- 90
Tue:  0.03"                65 ---------------------- 84
Wed:  0.00"     56 ------------------ 71
Thu:  0.00"     56 --------------------- 74
Fri:  0.08"       57 --------- 65
Sat:  0.00"    55 --------------------------- 78
Sun:  0.00"               64 ------------------- 81
Mon:  0.01"                65 --------------------- 83
Tue:  0.14"                        72 ----------------- 87
Wed:  0.36"                65 ----------------- 80
Thu:  0.00"            62 ---------------------- 81
Fri:  0.02"                 66 -------------------- 83
Sat:  0.00"                65 ------------------ 81
Sun:  0.00"               64 -------------------- 82
Mon:  0.01"                  67 ---------------------- 86</code></pre>
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




