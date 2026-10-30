---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 02:04 AM CT, October 30</p>

<picture>
  <source srcset="{{ site.baseurl }}/plots/weather_2026-10-30_0704.png"
          media="(min-width: 750px)">
  <img src="{{ site.baseurl }}/plots/weather_2026-10-30_0704_mobile.png" alt="" />
</picture>

Today's high is 68°, which is 10° *colder* than yesterday. Tomorrow is expected to be 1° **warmer** than today.

Currently:

- 51°
- Clear
- 79% humidity
- 4 mph wind
- 4% cloud cover
- 42 AQI 🟩
- 0.05 inches of rain expected in the next 48 hours

<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Fri:  0.02"       47 ----------------- 68
<b>Sat:  0.01"            54 ------------- 70</b>
<b>Sun:  0.38"              56 --- 59</b>
Mon:  0.01"             55 ---- 60
Tue:  0.00"                 59 ----- 66
Wed:  0.39"             55 -------- 64
Thu:  0.06"          51 ------- 60
Fri:  0.00"      46 ----------- 60
<b>Sat:  0.00"    43 -------------- 61</b>
<b>Sun:  0.26"         50 ----------- 63</b>
Mon:  0.00"       47 -------------- 65
Tue:  0.00"        48 ------------- 65
Wed:  0.26"           52 ------- 61
Thu:  0.02"            53 ------------- 69
Fri:  0.65"        49 --------------- 67</code></pre>

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




