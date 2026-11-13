---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 12:08 PM CT, November 13</p>

<picture>
  <source srcset="{{ site.baseurl }}/plots/weather_2026-11-13_1808.png"
          media="(min-width: 750px)">
  <img src="{{ site.baseurl }}/plots/weather_2026-11-13_1808_mobile.png" alt="" />
</picture>

Today's high is 43°, which is 2° *colder* than yesterday. Tomorrow is expected to be 4° **warmer** than today.

Currently:

- 39°
- Overcast
- 82% humidity
- 12 mph wind
- 100% cloud cover
- 27 AQI 🟩
- 0.02 inches of rain and 0.06 inches of snow in the past 24 hours

<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Fri:  0.00"          32 ----- 43
<b>Sat:  0.00"       26 ---------- 47</b>
<b>Sun:  0.00"        29 ---------- 49</b>
Mon:  0.00"           35 --------- 52
Tue:  0.00"            37 ---------- 56
Wed:  0.00"             38 ----------- 60
Thu:  0.05"                    52 -- 56
Fri:  0.00"                    53 ------ 65
<b>Sat:  0.02"              41 ------------ 65</b>
<b>Sun:  0.00"       26 ------- 41</b>
Mon:  0.00"    20 --- 27
Tue:  0.00"   18 ------ 31
Wed:  0.00"   19 -------- 35
Thu:  0.00"     22 ---------- 42
Fri:  0.00"       27 ---------- 47
<b>Sat:  0.00"        29 --------- 47</b></code></pre>

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


