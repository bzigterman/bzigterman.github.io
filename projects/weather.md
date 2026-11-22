---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 12:32 PM CT, November 22</p>

<picture>
  <source srcset="{{ site.baseurl }}/plots/weather_2026-11-22_1833.png"
          media="(min-width: 750px)">
  <img src="{{ site.baseurl }}/plots/weather_2026-11-22_1833_mobile.png" alt="" />
</picture>

Today's high is 58°, which is 13° *colder* than yesterday. Tomorrow is expected to be 21° *colder* than today.

Currently:

- 58°
- Rain
- 99% humidity
- 9 mph wind
- 96% cloud cover
- 24 AQI 🟩
- 0.07 inches of rain in the past 24 hours
- 0.16 inches of rain expected in the next 48 hours

<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;"><b>Sun:  0.26"         36 --------------- 58</b>
Mon:  0.00"     30 ----- 37
Tue:  0.00"   27 ---------- 41
Wed:  0.53"    28 ----------- 44
Thu:  0.72"          37 ------ 45
Fri:  0.00"        34 -------- 45
<b>Sat:  0.00"           39 ------- 49</b>
<b>Sun:  0.00"         36 --------- 48</b>
Mon:  0.00"        34 ---------- 48
Tue:  0.18"         35 --------- 48
Wed:  0.08"                46 ----- 53
Thu:  0.34"                   50 ------- 60
Fri:  0.00"               44 ------- 54
<b>Sat:  0.00"             42 ----- 49</b>
<b>Sun:  0.48"         35 ------ 44</b>
Mon:  0.59"        34 ----- 42</code></pre>

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




