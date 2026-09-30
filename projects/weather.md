---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 02:16 PM CT, September 30</p>

<picture>
  <source srcset="{{ site.baseurl }}/plots/weather_2026-09-30_1916.png"
          media="(min-width: 750px)">
  <img src="{{ site.baseurl }}/plots/weather_2026-09-30_1916_mobile.png" alt="" />
</picture>

Today's high is 85°, which is 3° **warmer** than yesterday. Tomorrow is expected to be 0° *colder* than today.

Currently:

- 82°
- Mostly Cloudy
- 51% humidity
- 8 mph wind
- 87% cloud cover
- 35 AQI 🟩
- 0.32 inches of rain expected in the next 48 hours

<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Wed:  0.00"               63 ----------- 85
Thu:  0.20"               63 ----------- 85
Fri:  0.11"          52 --------- 70
<b>Sat:  0.00"        47 ------------ 72</b>
<b>Sun:  0.00"           54 ---------- 74</b>
Mon:  0.00"       45 --------- 64
Tue:  0.00"   37 ------------- 64
Wed:  0.00"        47 ------------ 72
Thu:  0.00"         49 ---------- 71
Fri:  0.00"          51 ------------- 78
<b>Sat:  0.00"             57 ---------- 79</b>
<b>Sun:  1.00"              59 ---- 69</b>
Mon:  0.00"        47 --------- 67
Tue:  0.00"        48 ------------ 72
Wed:  0.00"      43 -------- 60
Thu:  0.00"   38 ----------- 59</code></pre>

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




