---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 10:42 AM CT, November 22</p>

<picture>
  <source srcset="{{ site.baseurl }}/plots/weather_2026-11-22_1642.png"
          media="(min-width: 750px)">
  <img src="{{ site.baseurl }}/plots/weather_2026-11-22_1642_mobile.png" alt="" />
</picture>

Today's high is 61°, which is 10° *colder* than yesterday. Tomorrow is expected to be 24° *colder* than today.

Currently:

- 60°
- Overcast
- 88% humidity
- 10 mph wind
- 100% cloud cover
- 25 AQI 🟩
- 0.15 inches of rain expected in the next 48 hours

<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;"><b>Sun:  0.09"         36 ---------------- 61</b>
Mon:  0.00"     30 ---- 37
Tue:  0.00"   28 --------- 41
Wed:  0.07"    29 ---------- 44
Thu:  0.65"        35 ---- 41
Fri:  0.00"        35 ----- 42
<b>Sat:  0.05"         36 ----------- 53</b>
<b>Sun:  0.00"           39 --------- 54</b>
Mon:  0.00"                48 ---------- 62
Tue:  0.00"                48 ---- 54
Wed:  0.00"                48 ------- 58
Thu:  0.00"                   52 ----- 60
Fri:  0.00"              45 ------- 55
<b>Sat:  0.49"              44 - 46</b>
<b>Sun:  0.75"              45 ------ 53</b>
Mon:  0.00"           39 ----- 48</code></pre>

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


