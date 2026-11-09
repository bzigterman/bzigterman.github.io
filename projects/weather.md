---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 03:12 AM CT, November 09</p>

<picture>
  <source srcset="{{ site.baseurl }}/plots/weather_2026-11-09_0912.png"
          media="(min-width: 750px)">
  <img src="{{ site.baseurl }}/plots/weather_2026-11-09_0912_mobile.png" alt="" />
</picture>

Today's high is 64°, which is 1° *colder* than yesterday. Tomorrow is expected to be 2° **warmer** than today.

Currently:

- 42°
- Clear
- 76% humidity
- 8 mph wind
- 0% cloud cover
- 15 AQI 🟩

<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Mon:  0.00"        39 --------------- 64
Tue:  0.00"          43 ------------- 65
Wed:  0.11"             48 ---------- 65
Thu:  0.06"       38 ------ 48
Fri:  0.00"      35 ----- 44
<b>Sat:  0.00"   31 --------- 45</b>
<b>Sun:  0.00"    32 ----------- 51</b>
Mon:  0.00"             47 ------- 60
Tue:  0.00"              50 ----------- 67
Wed:  0.00"                52 ---------- 69
Thu:  0.00"              50 ----------- 68
Fri:  0.09"                53 ------ 62
<b>Sat:  0.65"          43 ------ 53</b>
<b>Sun:  0.67"           44 ------ 54</b>
Mon:  0.01"       38 ------ 48</code></pre>

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




