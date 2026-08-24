---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 07:47 AM CT, August 24</p>

<picture>
  <source srcset="{{ site.baseurl }}/plots/weather_2026-08-24_1247.png"
          media="(min-width: 750px)">
  <img src="{{ site.baseurl }}/plots/weather_2026-08-24_1247_mobile.png" alt="" />
</picture>

Today's high is 78°, which is 1° *colder* than yesterday. Tomorrow is expected to be 2° **warmer** than today.

Currently:

- 56°
- Foggy
- 95% humidity
- 1 mph wind
- 48% cloud cover
- 35 AQI 🟩

<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Mon:  0.00"   52 ---------------- 78
Tue:  0.00"       58 ------------- 81
Wed:  0.19"         61 ------------- 84
Thu:  0.00"         62 ----------- 80
Fri:  0.00"         62 ----------- 81
<b>Sat:  0.00"         62 ---------- 79</b>
<b>Sun:  0.00"              70 ------------ 90</b>
Mon:  0.04"              70 ----------- 89
Tue:  0.06"              70 ---------- 87
Wed:  0.02"          63 ------- 75
Thu:  0.00"    54 ----------- 72
Fri:  0.00"    53 ------------ 74
<b>Sat:  0.00"      56 ------------ 77</b>
<b>Sun:  0.00"      57 ---------------- 83</b>
Mon:  0.00"          63 --------------- 88
Tue:  0.04"            66 ---- 74</code></pre>

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




