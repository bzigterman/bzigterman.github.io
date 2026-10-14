---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 05:41 PM CT, October 14</p>

<picture>
  <source srcset="{{ site.baseurl }}/plots/weather_2026-10-14_2241.png"
          media="(min-width: 750px)">
  <img src="{{ site.baseurl }}/plots/weather_2026-10-14_2241_mobile.png" alt="" />
</picture>

Today's high is 77°, which is 13° *colder* than yesterday. Tomorrow is expected to be 0° *colder* than today.

Currently:

- 72°
- Overcast
- 72% humidity
- 7 mph wind
- 100% cloud cover
- 49 AQI 🟩
- 0.12 inches of rain expected in the next 48 hours

<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Wed:  0.03"                  66 ------ 77
Thu:  0.04"                63 -------- 77
Fri:  0.07"        48 -------- 63
<b>Sat:  0.00"   40 ---------- 57</b>
<b>Sun:  0.00"    42 ------------- 65</b>
Mon:  0.00"       47 ------------- 70
Tue:  0.00"           54 ---------- 72
Wed:  0.00"              59 --------- 75
Thu:  0.38"               62 --- 66
Fri:  0.00"             57 --------- 74
<b>Sat:  0.01"           54 --------------- 81</b>
<b>Sun:  0.00"       47 ------- 59</b>
Mon:  0.00"    42 --------- 58
Tue:  0.00"    41 ---------- 59
Wed:  0.06"        48 ----- 58
Thu:  0.02"       47 -------- 62</code></pre>

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




