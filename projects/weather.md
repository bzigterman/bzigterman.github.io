---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 09:05 AM CT, September 21</p>

<picture>
  <source srcset="{{ site.baseurl }}/plots/weather_2026-09-21_1405.png"
          media="(min-width: 750px)">
  <img src="{{ site.baseurl }}/plots/weather_2026-09-21_1405_mobile.png" alt="" />
</picture>

Today's high is 66°, which is 15° *colder* than yesterday. Tomorrow is expected to be 2° *colder* than today.

Currently:

- 61°
- Mostly Cloudy
- 96% humidity
- 10 mph wind
- 82% cloud cover
- 23 AQI 🟩
- 0.66 inches of rain in the past 24 hours

<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Mon:  0.47"             60 --- 66
Tue:  0.00"            57 --- 64
Wed:  0.00"           56 ----- 65
Thu:  0.00"           56 ------ 68
Fri:  0.00"             59 ------ 71
<b>Sat:  0.02"            58 ---- 66</b>
<b>Sun:  0.22"             59 --------- 77</b>
Mon:  0.01"              62 --------- 80
Tue:  0.13"                66 --- 72
Wed:  0.02"           56 ---------- 75
Thu:  0.00"            57 ---------- 77
Fri:  0.01"            57 --------- 76
<b>Sat:  0.29"               63 ----------- 85</b>
<b>Sun:  2.08"         52 ------- 66</b>
Mon:  0.00"     43 ------- 58
Tue:  0.00"   40 ----------- 61</code></pre>

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




