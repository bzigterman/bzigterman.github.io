---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 09:15 PM CT, October 01</p>

<picture>
  <source srcset="{{ site.baseurl }}/plots/weather_2026-10-02_0215.png"
          media="(min-width: 750px)">
  <img src="{{ site.baseurl }}/plots/weather_2026-10-02_0215_mobile.png" alt="" />
</picture>

Today's high is 88°, which is 9° **warmer** than yesterday. Tomorrow is expected to be 19° *colder* than today.

Currently:

- 72°
- Mostly Cloudy
- 91% humidity
- 9 mph wind
- 73% cloud cover
- 48 AQI 🟩
- 0.16 inches of rain in the past 24 hours
- 0.33 inches of rain expected in the next 48 hours

<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Thu:  0.04"                70 ---------- 88
Fri:  0.38"      51 ---------- 69
<b>Sat:  0.00"    47 ---------- 66</b>
<b>Sun:  0.00"        54 ---------- 74</b>
Mon:  0.00"      50 --------- 67
Tue:  0.00"   45 ------------ 68
Wed:  0.02"    47 ---------------- 76
Thu:  0.00"         57 --------------- 84
Fri:  0.00"        54 --------- 71
<b>Sat:  0.00"      50 ------------- 75</b>
<b>Sun:  0.00"          58 -------------- 85</b>
Mon:  0.02"            62 ---------- 81
Tue:  0.00"       53 --------- 70
Wed:  0.00"     49 --------------- 76
Thu:  0.01"             63 ----- 74
Fri:  0.07"     49 ---------- 68</code></pre>

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




