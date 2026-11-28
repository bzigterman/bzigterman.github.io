---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 04:19 AM CT, November 28</p>

<picture>
  <source srcset="{{ site.baseurl }}/plots/weather_2026-11-28_1019.png"
          media="(min-width: 750px)">
  <img src="{{ site.baseurl }}/plots/weather_2026-11-28_1019_mobile.png" alt="" />
</picture>

Today's high is 51°, which is 9° **warmer** than yesterday. Tomorrow is expected to be 7° *colder* than today.

Currently:

- 36°
- Mostly Cloudy
- 87% humidity
- 9 mph wind
- 72% cloud cover
- 22 AQI 🟩
- 0.11 inches of rain and 0.06 inches of snow in the past 24 hours
- 0.84 inches of rain expected in the next 48 hours

<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;"><b>Sat:  0.00"        35 ------------- 51</b>
<b>Sun:  0.84"       34 -------- 44</b>
Mon:  0.00"    30 ---------- 43
Tue:  0.00"      33 ------------- 49
Wed:  0.00"          38 --------------- 57
Thu:  0.01"                 47 ------- 55
Fri:  0.03"                     51 -- 54
<b>Sat:  0.02"        35 --------------- 54</b>
<b>Sun:  0.00"     32 ---------- 44</b>
Mon:  0.14"     32 ---------------- 51
Tue:  0.93"        36 ---------------- 55
Wed:  0.00"     32 -------- 42
Thu:  0.00"      33 -------------- 50
Fri:  0.00"         37 ------------ 52
<b>Sat:  0.00"       34 ---------- 46</b></code></pre>

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


