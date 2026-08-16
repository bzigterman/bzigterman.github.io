---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 12:18 PM CT, August 16</p>

<iframe src="/interactive/champaign_weather.html" width="100%" height="600"> 
</iframe>

Today's high is 86°, which is 5° **warmer** than yesterday. Tomorrow is expected to be 5° *colder* than today.

Currently:

- 84°
- Partly Cloudy
- 83% humidity
- 9 mph wind
- 38% cloud cover
- 46 AQI 🟩
- 0.03 inches of rain in the past 24 hours

<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Sun:  0.04"                    76 ------ 86
Mon:  0.00"                71 ------- 81
Tue:  0.00"             65 ---------- 82
Wed:  0.32"              68 ------- 79
Thu:  0.06"           63 ------- 73
Fri:  0.00"          61 -------- 74
Sat:  0.00"        57 ------------ 77
Sun:  0.00"          61 ----------- 79
Mon:  0.00"        58 ------------ 77
Tue:  0.00"             66 ----------- 84
Wed:  0.08"              68 ----------- 85
Thu:  0.00"          60 ---------- 76
Fri:  0.00"    52 ---------- 67
Sat:  0.00"   50 ------------- 70
Sun:  0.00"    52 -------------- 74
Mon:  0.00"       56 -------------- 78</code></pre>

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




