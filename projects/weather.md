---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 04:29 PM CT, November 25</p>

<picture>
  <source srcset="{{ site.baseurl }}/plots/weather_2026-11-25_2229.png"
          media="(min-width: 750px)">
  <img src="{{ site.baseurl }}/plots/weather_2026-11-25_2229_mobile.png" alt="" />
</picture>

Today's high is 40°, which is 1° *colder* than yesterday. Tomorrow is expected to be 1° **warmer** than today.

Currently:

- 40°
- Overcast
- 77% humidity
- 11 mph wind
- 91% cloud cover
- 38 AQI 🟩
- 0.96 inches of rain expected in the next 48 hours

<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Wed:  0.00"   25 ---------- 40
Thu:  0.62"          35 ---- 41
Fri:  0.34"         34 --------- 47
<b>Sat:  0.00"         33 ------------ 51</b>
<b>Sun:  0.59"          35 ------ 44</b>
Mon:  0.00"       30 -------- 42
Tue:  0.00"        32 -------- 43
Wed:  0.00"         34 ----------- 50
Thu:  0.03"                 45 -------- 57
Fri:  0.00"             40 --------- 53
<b>Sat:  0.00"            38 ---------- 53</b>
<b>Sun:  0.00"              41 ------------ 58</b>
Mon:  0.64"                  47 ------- 57
Tue:  0.00"          35 -------- 47
Wed:  0.02"         33 --------- 47
Thu:  0.29"         34 ------ 42</code></pre>

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




