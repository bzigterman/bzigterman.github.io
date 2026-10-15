---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 11:32 PM CT, October 14</p>

<picture>
  <source srcset="{{ site.baseurl }}/plots/weather_2026-10-15_0433.png"
          media="(min-width: 750px)">
  <img src="{{ site.baseurl }}/plots/weather_2026-10-15_0433_mobile.png" alt="" />
</picture>

Today's high is 77°, which is 13° *colder* than yesterday. Tomorrow is expected to be 3° *colder* than today.

Currently:

- 66°
- Overcast
- 80% humidity
- 10 mph wind
- 88% cloud cover
- 48 AQI 🟩
- 0.23 inches of rain expected in the next 48 hours

<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Wed:  0.03"                  66 ------ 77
Thu:  0.13"                  65 ----- 74
Fri:  0.10"      44 ------------- 67
<b>Sat:  0.00"   38 ---------- 56</b>
<b>Sun:  0.00"     41 ------------- 65</b>
Mon:  0.00"        47 ------------ 69
Tue:  0.00"           53 ------------ 74
Wed:  0.00"            54 ----------- 74
Thu:  0.00"            54 ------------ 77
Fri:  0.03"               60 ----------- 80
<b>Sat:  0.54"                 64 --- 69</b>
<b>Sun:  2.94"            55 ----- 64</b>
Mon:  0.81"       46 ------ 57
Tue:  0.00"       45 --------- 61
Wed:  0.00"        47 -------- 61
Thu:  0.00"        47 --------- 63</code></pre>

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




