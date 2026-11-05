---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 09:29 PM CT, November 04</p>

<picture>
  <source srcset="{{ site.baseurl }}/plots/weather_2026-11-05_0329.png"
          media="(min-width: 750px)">
  <img src="{{ site.baseurl }}/plots/weather_2026-11-05_0329_mobile.png" alt="" />
</picture>

Today's high is 66°, which is 8° *colder* than yesterday. Tomorrow is expected to be 12° *colder* than today.

Currently:

- 54°
- Overcast
- 79% humidity
- 10 mph wind
- 100% cloud cover
- 26 AQI 🟩
- 0.1 inches of rain in the past 24 hours
- 0.1 inches of rain expected in the next 48 hours

<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Wed:  0.09"              51 --------- 66
Thu:  0.09"           46 ----- 54
Fri:  0.02"      38 -------- 51
<b>Sat:  0.00"    36 ---------- 51</b>
<b>Sun:  0.00"       40 --------- 54</b>
Mon:  0.00"       40 ----------- 58
Tue:  0.00"        42 ------------ 60
Wed:  0.00"      38 ---------- 54
Thu:  0.00"    35 -------- 48
Fri:  0.00"   34 ------------- 54
<b>Sat:  0.00"      39 ---------------- 64</b>
<b>Sun:  0.00"             49 ---------- 66</b>
Mon:  0.00"             49 ------- 60
Tue:  0.00"             49 ----- 57
Wed:  0.00"           46 -------- 59
Thu:  0.17"             50 ------------- 70</code></pre>

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




