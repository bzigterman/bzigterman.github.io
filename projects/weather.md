---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 06:46 AM CT, November 25</p>

<picture>
  <source srcset="{{ site.baseurl }}/plots/weather_2026-11-25_1246.png"
          media="(min-width: 750px)">
  <img src="{{ site.baseurl }}/plots/weather_2026-11-25_1246_mobile.png" alt="" />
</picture>

Today's high is 40°, which is 2° *colder* than yesterday. Tomorrow is expected to be 5° **warmer** than today.

Currently:

- 24°
- Partly Cloudy
- 79% humidity
- 8 mph wind
- 52% cloud cover
- 53 AQI 🟨
- 0.53 inches of rain expected in the next 48 hours

<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Wed:  0.00"   25 --------- 40
Thu:  0.43"        33 ------- 45
Fri:  0.09"        33 --------- 48
<b>Sat:  0.00"        33 ------------ 52</b>
<b>Sun:  0.84"         34 ----- 43</b>
Mon:  0.00"      30 -------- 43
Tue:  0.00"        33 ------- 44
Wed:  0.00"          36 -------- 49
Thu:  0.00"           37 ---------- 54
Fri:  0.00"         34 ------ 44
<b>Sat:  0.00"       32 ----------- 50</b>
<b>Sun:  0.20"                 47 --------- 62</b>
Mon:  0.01"          36 ------- 47
Tue:  0.02"        33 --------- 48
Wed:  0.35"            40 ----------- 58
Thu:  0.00"         35 ----- 42</code></pre>

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


