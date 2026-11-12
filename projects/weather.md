---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 10:26 AM CT, November 12</p>

<picture>
  <source srcset="{{ site.baseurl }}/plots/weather_2026-11-12_1627.png"
          media="(min-width: 750px)">
  <img src="{{ site.baseurl }}/plots/weather_2026-11-12_1627_mobile.png" alt="" />
</picture>

Today's high is 47°, which is 23° *colder* than yesterday. Tomorrow is expected to be 9° *colder* than today.

Currently:

- 45°
- Overcast
- 79% humidity
- 14 mph wind
- 100% cloud cover
- 30 AQI 🟩
- 0.41 inches of snow expected in the next 48 hours

<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Thu:  0.00"       35 ------- 47
Fri:  0.06"     32 --- 38
<b>Sat:  0.00"    30 --------- 46</b>
<b>Sun:  0.00"     33 ---------- 50</b>
Mon:  0.00"       36 ---------- 53
Tue:  0.00"        37 ----------- 56
Wed:  0.00"        38 ------------- 59
Thu:  0.00"             46 ----------- 64
Fri:  0.01"              48 ----------- 67
<b>Sat:  0.02"                   57 ----- 64</b>
<b>Sun:  0.06"                    58 ------ 68</b>
Mon:  2.43"               50 ----- 58
Tue:  0.74"        37 ------------- 59
Wed:  0.00"    30 ----- 39
Thu:  0.00"   29 ------- 40
Fri:  1.06"         39 ------------- 61</code></pre>

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



## Winter Storm Severity Index

![](https://www.wpc.ncep.noaa.gov/wwd/wssi/images/WSSI_Overall_CONUS.png)

<p class="updated_time">Source: <a href="https://www.wpc.ncep.noaa.gov/wwd/wssi/wssi.php">NOAA/NWS Weather Prediction Center</a>.</p> 


