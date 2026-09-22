---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 11:50 PM CT, September 21</p>

<picture>
  <source srcset="{{ site.baseurl }}/plots/weather_2026-09-22_0450.png"
          media="(min-width: 750px)">
  <img src="{{ site.baseurl }}/plots/weather_2026-09-22_0450_mobile.png" alt="" />
</picture>

Today's high is 66°, which is 15° *colder* than yesterday. Tomorrow is expected to be 0° *colder* than today.

Currently:

- 61°
- Overcast
- 83% humidity
- 9 mph wind
- 96% cloud cover
- 25 AQI 🟩
- 0.59 inches of rain in the past 24 hours

<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Mon:  0.47"             60 --- 66
Tue:  0.00"           57 ----- 65
Wed:  0.00"          56 ---- 62
Thu:  0.00"           58 ------- 68
Fri:  0.00"         55 ----------- 72
<b>Sat:  0.00"       51 ------------- 71</b>
<b>Sun:  0.05"           57 ---- 64</b>
Mon:  0.00"         54 --------------- 78
Tue:  0.05"             60 -------- 73
Wed:  0.00"      50 ------------ 69
Thu:  0.00"   46 ------------------- 74
Fri:  0.00"       52 ------------------- 80
<b>Sat:  0.00"           57 --------------- 80</b>
<b>Sun:  0.00"           58 -------------- 79</b>
Mon:  0.00"         54 -------------- 76
Tue:  0.00"         54 -------------- 76</code></pre>

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




