---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 06:46 PM CT, September 30</p>

<picture>
  <source srcset="{{ site.baseurl }}/plots/weather_2026-09-30_2346.png"
          media="(min-width: 750px)">
  <img src="{{ site.baseurl }}/plots/weather_2026-09-30_2346_mobile.png" alt="" />
</picture>

Today's high is 79°, which is 3° *colder* than yesterday. Tomorrow is expected to be 10° **warmer** than today.

Currently:

- 71°
- Partly Cloudy
- 69% humidity
- 5 mph wind
- 58% cloud cover
- 47 AQI 🟩
- 0.98 inches of rain expected in the next 48 hours

<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Wed:  0.00"              63 ------- 79
Thu:  0.60"                68 ---------- 89
Fri:  0.39"         52 -------- 69
<b>Sat:  0.00"      47 ----------- 69</b>
<b>Sun:  0.00"        51 ---------- 72</b>
Mon:  0.00"      47 --------- 65
Tue:  0.00"   40 ------------ 65
Wed:  0.00"       48 ---------- 69
Thu:  0.00"       48 ----------- 72
Fri:  0.00"        51 ------------ 77
<b>Sat:  0.00"           58 ------------ 82</b>
<b>Sun:  0.87"           58 ---- 66</b>
Mon:  0.00"          54 -- 60
Tue:  0.08"        51 ------ 63
Wed:  0.00"       49 ----------- 71
Thu:  0.23"     44 ------------ 70</code></pre>

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




