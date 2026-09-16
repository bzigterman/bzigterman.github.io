---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 07:16 PM CT, September 15</p>

<picture>
  <source srcset="{{ site.baseurl }}/plots/weather_2026-09-16_0017.png"
          media="(min-width: 750px)">
  <img src="{{ site.baseurl }}/plots/weather_2026-09-16_0017_mobile.png" alt="" />
</picture>

Today's high is 96°, which is 17° **warmer** than yesterday. Tomorrow is expected to be 14° *colder* than today.

Currently:

- 80°
- Light Rain
- 88% humidity
- 9 mph wind
- 92% cloud cover
- 58 AQI 🟨
- 0.21 inches of rain in the past 24 hours
- 0.04 inches of rain expected in the next 48 hours

<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Tue:  0.83"         64 ----------------- 96
Wed:  0.00"             72 ------ 83
Thu:  0.12"             71 --------- 89
Fri:  0.06"          66 ---------- 85
<b>Sat:  0.00"            70 ------ 82</b>
<b>Sun:  0.00"           68 -------- 83</b>
Mon:  0.00"        62 ---------- 82
Tue:  0.00"     56 ---------- 75
Wed:  0.04"      58 ------------- 83
Thu:  0.00"    55 --------- 72
Fri:  0.00"    55 ------------- 80
<b>Sat:  0.40"         65 ----------- 84</b>
<b>Sun:  0.09"           68 -------------- 94</b>
Mon:  0.00"               76 ---------- 94
Tue:  0.20"        62 ---------- 82
Wed:  0.01"   53 ----- 63</code></pre>

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




