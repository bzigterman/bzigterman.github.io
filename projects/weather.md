---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 12:34 PM CT, November 24</p>

<picture>
  <source srcset="{{ site.baseurl }}/plots/weather_2026-11-24_1835.png"
          media="(min-width: 750px)">
  <img src="{{ site.baseurl }}/plots/weather_2026-11-24_1835_mobile.png" alt="" />
</picture>

Today's high is 42°, which is 0° **warmer** than yesterday. Tomorrow is expected to be 2° *colder* than today.

Currently:

- 41°
- Mostly Clear
- 56% humidity
- 9 mph wind
- 30% cloud cover
- 33 AQI 🟩
- 0.82 inches of rain and 0.03 inches of snow expected in the next 48 hours

<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Tue:  0.00"    23 -------------- 42
Wed:  0.05"    24 ------------ 40
Thu:  1.11"             35 ----- 42
Fri:  0.06"             35 ------- 45
<b>Sat:  0.01"             35 --------- 48</b>
<b>Sun:  0.00"              37 ----------- 52</b>
Mon:  0.00"           33 ----------- 47
Tue:  0.89"                39 ------- 49
Wed:  0.00"                39 -- 42
Thu:  0.00"             36 -------- 46
Fri:  0.01"                 41 ---- 46
<b>Sat:  0.00"                40 --- 44</b>
<b>Sun:  0.00"          32 ------- 41</b>
Mon:  0.94"            34 ----------- 49
Tue:  0.00"             36 ----- 42
Wed:  0.00"             35 ------------ 52</code></pre>

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


