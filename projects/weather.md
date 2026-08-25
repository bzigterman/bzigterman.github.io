---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 02:00 AM CT, August 25</p>

<picture>
  <source srcset="{{ site.baseurl }}/plots/weather_2026-08-25_0700.png"
          media="(min-width: 750px)">
  <img src="{{ site.baseurl }}/plots/weather_2026-08-25_0700_mobile.png" alt="" />
</picture>

Today's high is 79°, which is 1° **warmer** than yesterday. Tomorrow is expected to be 8° **warmer** than today.

Currently:

- 58°
- Clear
- 95% humidity
- 4 mph wind
- 0% cloud cover
- 43 AQI 🟩
- 0.1 inches of rain expected in the next 48 hours

<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Tue:  0.00"    55 ---------------- 79
Wed:  0.09"          64 --------------- 87
Thu:  0.04"          64 ---------- 79
Fri:  0.00"      58 ------------ 77
<b>Sat:  0.00"       60 ------------ 78</b>
<b>Sun:  0.00"          64 ---------------- 88</b>
Mon:  0.11"             68 ------- 79
Tue:  0.66"            67 -------- 80
Wed:  0.23"             68 ------------ 87
Thu:  0.26"             68 ----------- 86
Fri:  0.00"               72 --------- 86
<b>Sat:  0.04"           65 ----------- 83</b>
<b>Sun:  0.35"    55 ------- 66</b>
Mon:  0.00"   54 ----------- 70
Tue:  0.44"     56 --- 61</code></pre>

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




