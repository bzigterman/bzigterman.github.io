---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 08:58 PM CT, November 10</p>

<picture>
  <source srcset="{{ site.baseurl }}/plots/weather_2026-11-11_0258.png"
          media="(min-width: 750px)">
  <img src="{{ site.baseurl }}/plots/weather_2026-11-11_0258_mobile.png" alt="" />
</picture>

Today's high is 68°, which is 4° **warmer** than yesterday. Tomorrow is expected to be 2° *colder* than today.

Currently:

- 48°
- Clear
- 77% humidity
- 1 mph wind
- 0% cloud cover
- 20 AQI 🟩
- 0.3 inches of rain expected in the next 48 hours

<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Tue:  0.00"               45 ----------- 68
Wed:  0.13"             40 ------------ 66
Thu:  0.17"           35 ----- 46
Fri:  0.00"         31 ----- 42
<b>Sat:  0.00"        29 -------- 46</b>
<b>Sun:  0.00"          33 -------- 50</b>
Mon:  0.00"          34 -------- 50
Tue:  0.00"          34 -------- 51
Wed:  0.00"           35 --------- 54
Thu:  0.00"            37 -------- 54
Fri:  0.42"                 48 ---- 56
<b>Sat:  0.46"               45 ----- 55</b>
<b>Sun:  0.13"        28 ------- 45</b>
Mon:  0.05"    21 ---- 28
Tue:  0.00"   18 ------- 33
Wed:  0.00"       27 -------- 45</code></pre>

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




