---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 10:18 AM CT, October 15</p>

<picture>
  <source srcset="{{ site.baseurl }}/plots/weather_2026-10-15_1518.png"
          media="(min-width: 750px)">
  <img src="{{ site.baseurl }}/plots/weather_2026-10-15_1518_mobile.png" alt="" />
</picture>

Today's high is 72°, which is 6° *colder* than yesterday. Tomorrow is expected to be 8° *colder* than today.

Currently:

- 67°
- Possible Drizzle
- 80% humidity
- 9 mph wind
- 62% cloud cover
- 50 AQI 🟩
- 0.94 inches of rain expected in the next 48 hours

<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Thu:  1.20"                 62 ----- 72
Fri:  0.02"      42 ------------ 64
<b>Sat:  0.00"   37 ---------- 56</b>
<b>Sun:  0.00"     40 ------------- 64</b>
Mon:  0.00"        46 ------------ 68
Tue:  0.00"           52 ---------- 70
Wed:  0.00"              58 -------- 72
Thu:  0.00"            53 ----------- 73
Fri:  0.00"            54 ------------ 75
<b>Sat:  0.00"            54 ----------- 74</b>
<b>Sun:  0.00"          49 ---------- 68</b>
Mon:  0.00"       45 -------------- 70
Tue:  0.00"             56 ------------- 79
Wed:  0.04"                 63 ------ 74
Thu:  0.68"                60 --- 66
Fri:  1.19"             56 --------- 72</code></pre>

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




