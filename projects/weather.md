---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 10:28 PM CT, August 06</p>

<iframe src="/interactive/champaign_weather.html" width="100%" height="600"> 
</iframe>

Today's high is 79°, which is 5° *colder* than yesterday. Tomorrow is expected to be 6° **warmer** than today.

Currently:

- 70°
- Overcast
- 95% humidity
- 4 mph wind
- 96% cloud cover
- 35 AQI 🟩
- 0.08 inches of rain in the past 24 hours

<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Thu:  0.06"              69 ------ 79
Fri:  0.00"            66 ------------ 85
Sat:  0.00"               70 ----------- 88
Sun:  0.17"               70 ---------- 87
Mon:  0.00"                72 ---------- 88
Tue:  0.77"            66 ------------- 86
Wed:  0.22"            66 ----------- 83
Thu:  0.05"      55 ---------- 72
Fri:  0.00"    52 ----------- 70
Sat:  0.03"      55 -------------- 78
Sun:  0.62"             67 ---- 74
Mon:  0.06"             67 ----- 76
Tue:  0.00"            66 ------------- 86
Wed:  0.02"       58 ----- 66
Thu:  0.00"   51 ------------- 72
Fri:  0.00"      55 ---------- 72</code></pre>

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




