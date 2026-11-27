---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 02:20 AM CT, November 27</p>

<picture>
  <source srcset="{{ site.baseurl }}/plots/weather_2026-11-27_0820.png"
          media="(min-width: 750px)">
  <img src="{{ site.baseurl }}/plots/weather_2026-11-27_0820_mobile.png" alt="" />
</picture>

Today's high is 41°, which is 1° *colder* than yesterday. Tomorrow is expected to be 8° **warmer** than today.

Currently:

- 40°
- Drizzle
- 93% humidity
- 15 mph wind
- 87% cloud cover
- 23 AQI 🟩
- 0.83 inches of rain in the past 24 hours
- 0.46 inches of rain and 0.03 inches of snow expected in the next 48 hours

<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Fri:  0.35"        34 ---- 41
<b>Sat:  0.09"        34 ---------- 49</b>
<b>Sun:  0.56"        35 ------ 44</b>
Mon:  0.00"     30 --------- 43
Tue:  0.00"        34 -------- 46
Wed:  0.00"          38 ------------- 56
Thu:  0.00"              43 ------------ 60
Fri:  0.21"                   51 ----- 57
<b>Sat:  0.01"        35 -------------- 55</b>
<b>Sun:  0.00"      32 ----------- 47</b>
Mon:  0.04"           39 -------- 50
Tue:  0.11"              43 -- 46
Wed:  0.11"        34 ------ 43
Thu:  0.00"    29 ------ 38
Fri:  0.12"   28 ----------- 43</code></pre>

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


