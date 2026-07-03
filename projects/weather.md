---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 12:25 PM CT, July 03</p>

<iframe src="/interactive/champaign_weather.html" width="100%" height="600"> 
</iframe>

Today's high is 94°, which is 1° **warmer** than yesterday. Tomorrow is expected to be 2° *colder* than today.

Currently:

- 91°
- Clear
- 64% humidity
- 12 mph wind
- 8% cloud cover
- 37 AQI 🟩
- 0.87 inches of rain expected in the next 48 hours

<noscript>
<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Fri:  0.00"                     75 ------------------------ 94
Sat:  0.00"                    74 ---------------------- 92
Sun:  0.87"              69 ------------------ 84
Mon:  0.01"         65 --------------------- 82
Tue:  0.00"    61 ------------------------ 80
Wed:  0.00"            67 -------------------- 84
Thu:  0.18"             68 ----------------- 82
Fri:  0.00"       63 --------------------- 80
Sat:  0.01"            67 ----------------------- 86
Sun:  0.00"                 71 ----------------- 85
Mon:  0.00"                        77 -------------- 89
Tue:  0.00"             68 ------------------- 84
Wed:  0.00"        64 ----------------- 78
Thu:  0.00"         65 ---------------------------- 88
Fri:  0.00"             68 ---------------------- 86
Sat:  0.00"         65 --------------------- 82</code></pre>
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




