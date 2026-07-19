---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 09:55 AM CT, July 19</p>

<iframe src="/interactive/champaign_weather.html" width="100%" height="600"> 
</iframe>

Today's high is 85°, which is 6° *colder* than yesterday. Tomorrow is expected to be 6° **warmer** than today.

Currently:

- 73°
- Clear
- 84% humidity
- 6 mph wind
- 3% cloud cover
- 45 AQI 🟩
- 0.02 inches of rain in the past 24 hours
- 0.85 inches of rain expected in the next 48 hours

<noscript>
<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Sun:  0.00"                   68 ------------------ 85
Mon:  0.00"              63 ------------------------------ 91
Tue:  0.99"                    69 --------------- 83
Wed:  0.00"          59 -------------- 73
Thu:  0.00"    54 ---------------------- 74
Fri:  0.51"       57 --------- 65
Sat:  0.00"      56 ----------------------- 77
Sun:  0.00"       57 ---------------------- 77
Mon:  0.00"            61 -------------------- 80
Tue:  0.00"              63 -------------------- 82
Wed:  0.04"                     70 ----------------- 86
Thu:  0.00"                       72 ------------------ 88
Fri:  0.00"                       72 ------------------- 89
Sat:  0.00"                        73 --------------------- 92
Sun:  0.00"              63 --------------- 77
Mon:  0.00"          59 --------------------- 79</code></pre>
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




