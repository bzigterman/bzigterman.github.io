---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 12:48 AM CT, November 24</p>

<picture>
  <source srcset="{{ site.baseurl }}/plots/weather_2026-11-24_0648.png"
          media="(min-width: 750px)">
  <img src="{{ site.baseurl }}/plots/weather_2026-11-24_0648_mobile.png" alt="" />
</picture>

Today's high is 42°, which is 1° **warmer** than yesterday. Tomorrow is expected to be 0° *colder* than today.

Currently:

- 25°
- Clear
- 96% humidity
- 6 mph wind
- 0% cloud cover
- 23 AQI 🟩
- 1.41 inches of snow and 0.17 inches of rain expected in the next 48 hours

<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Tue:  0.00"    25 ---------- 42
Wed:  0.32"   23 ----------- 42
Thu:  0.82"         32 - 35
Fri:  0.00"         32 -- 36
<b>Sat:  0.01"          34 ---------- 52</b>
<b>Sun:  0.00"              41 -------- 55</b>
Mon:  0.20"                   49 ------- 61
Tue:  0.34"           36 -------------- 59
Wed:  0.00"       29 ----- 37
Thu:  0.00"      28 ------- 40
Fri:  0.08"             40 ---- 47
<b>Sat:  0.00"              42 ------ 52</b>
<b>Sun:  0.00"          34 ---- 42</b>
Mon:  0.00"      28 ------- 39
Tue:  0.00"       29 ----- 38</code></pre>

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


## Winter Storm Severity Index

![](https://www.wpc.ncep.noaa.gov/wwd/wssi/images/WSSI_Overall_CONUS.png)

<p class="updated_time">Source: <a href="https://www.wpc.ncep.noaa.gov/wwd/wssi/wssi.php">NOAA/NWS Weather Prediction Center</a>.</p> 


