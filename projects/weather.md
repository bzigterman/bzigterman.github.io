---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 05:15 PM CT, September 15</p>

<picture>
  <source srcset="{{ site.baseurl }}/plots/weather_2026-09-15_2215.png"
          media="(min-width: 750px)">
  <img src="{{ site.baseurl }}/plots/weather_2026-09-15_2215_mobile.png" alt="" />
</picture>

Today's high is 96°, which is 17° **warmer** than yesterday. Tomorrow is expected to be 14° *colder* than today.

Currently:

- 94°
- Mostly Clear
- 47% humidity
- 9 mph wind
- 27% cloud cover
- 51 AQI 🟨
- 0.09 inches of rain expected in the next 48 hours

<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Tue:  0.00"            64 -------------- 96
Wed:  0.04"               72 ----- 83
Thu:  0.03"               72 ------- 86
Fri:  0.39"             66 --------- 86
<b>Sat:  0.12"              70 ------ 82</b>
<b>Sun:  0.00"              69 ---------- 92</b>
Mon:  0.00"             66 --------- 86
Tue:  0.00"          61 --------- 81
Wed:  0.00"           62 ------------ 89
Thu:  0.45"             66 ----- 77
Fri:  1.05"           62 ----- 74
<b>Sat:  0.03"         58 ------- 73</b>
<b>Sun:  0.02"     49 ----- 61</b>
Mon:  0.00"   44 --------- 64
Tue:  0.00"   45 ---------- 66
Wed:  0.00"      52 -------- 69</code></pre>

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




