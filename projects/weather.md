---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 01:30 PM CT, September 16</p>

<picture>
  <source srcset="{{ site.baseurl }}/plots/weather_2026-09-16_1830.png"
          media="(min-width: 750px)">
  <img src="{{ site.baseurl }}/plots/weather_2026-09-16_1830_mobile.png" alt="" />
</picture>

Today's high is 84°, which is 12° *colder* than yesterday. Tomorrow is expected to be 4° **warmer** than today.

Currently:

- 84°
- Overcast
- 72% humidity
- 4 mph wind
- 88% cloud cover
- 41 AQI 🟩
- 1.24 inches of rain in the past 24 hours
- 0.02 inches of rain expected in the next 48 hours

<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Wed:  0.02"                  71 ------ 84
Thu:  0.00"                 70 --------- 88
Fri:  0.09"                67 --------- 86
<b>Sat:  0.06"                68 ---------- 87</b>
<b>Sun:  0.02"                67 -------- 83</b>
Mon:  0.02"               65 ------- 80
Tue:  0.00"            60 --------- 77
Wed:  0.00"          56 ---------- 76
Thu:  0.00"            60 ---------- 80
Fri:  0.00"         53 ------- 67
<b>Sat:  0.00"    44 ---------- 63</b>
<b>Sun:  0.00"    44 ---------- 64</b>
Mon:  0.00"   41 ----------- 64
Tue:  0.00"    43 ------------ 68
Wed:  0.00"     46 ------------- 72
Thu:  0.00"       49 -------------- 78</code></pre>

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




