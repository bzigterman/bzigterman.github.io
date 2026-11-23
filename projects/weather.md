---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 02:59 AM CT, November 23</p>

<picture>
  <source srcset="{{ site.baseurl }}/plots/weather_2026-11-23_0859.png"
          media="(min-width: 750px)">
  <img src="{{ site.baseurl }}/plots/weather_2026-11-23_0859_mobile.png" alt="" />
</picture>

Today's high is 40°, which is 18° *colder* than yesterday. Tomorrow is expected to be 0° *colder* than today.

Currently:

- 33°
- Clear
- 87% humidity
- 11 mph wind
- 0% cloud cover
- 22 AQI 🟩
- 0.1 inches of rain in the past 24 hours

<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Mon:  0.00"     28 ------- 40
Tue:  0.00"   24 --------- 40
Wed:  0.34"      29 ------ 40
Thu:  1.15"        32 --- 38
Fri:  0.02"       30 --- 35
<b>Sat:  0.00"       30 -------- 45</b>
<b>Sun:  0.00"          36 ---------- 53</b>
Mon:  0.00"                 48 -------- 61
Tue:  0.00"                 47 -------- 61
Wed:  0.00"               44 --------- 59
Thu:  1.21"                      56 ---- 63
Fri:  0.28"                 47 ------- 60
<b>Sat:  0.98"         34 -------- 47</b>
<b>Sun:  0.00"       31 ------- 42</b>
Mon:  0.00"         34 ---------- 51</code></pre>

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


