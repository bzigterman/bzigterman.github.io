---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 05:20 PM CT, August 15</p>

<iframe src="/interactive/champaign_weather.html" width="100%" height="600"> 
</iframe>

Today's high is 84°, which is 5° **warmer** than yesterday. Tomorrow is expected to be 3° **warmer** than today.

Currently:

- 82°
- Overcast
- 80% humidity
- 4 mph wind
- 100% cloud cover
- 31 AQI 🟩
- 0.44 inches of rain in the past 24 hours
- 0.54 inches of rain expected in the next 48 hours

<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Sat:  0.78"               71 --------- 84
Sun:  0.82"               71 ---------- 86
Mon:  0.02"           66 --------- 79
Tue:  0.00"         63 ------------- 81
Wed:  0.00"            67 -------- 78
Thu:  0.44"         62 ------- 73
Fri:  0.03"         62 ------- 73
Sat:  0.00"     57 --------------- 79
Sun:  0.00"          64 ----------- 80
Mon:  0.00"         63 --------------- 84
Tue:  0.00"       60 ----------- 76
Wed:  0.00"   54 -------------- 74
Thu:  0.02"       60 ---------------- 83
Fri:  0.11"              70 ---------- 85
Sat:  0.01"            67 -------------- 87
Sun:  0.00"         62 ------------ 80</code></pre>

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




