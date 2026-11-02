---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 05:30 PM CT, November 02</p>

<picture>
  <source srcset="{{ site.baseurl }}/plots/weather_2026-11-02_2330.png"
          media="(min-width: 750px)">
  <img src="{{ site.baseurl }}/plots/weather_2026-11-02_2330_mobile.png" alt="" />
</picture>

Today's high is 62°, which is 7° *colder* than yesterday. Tomorrow is expected to be 11° **warmer** than today.

Currently:

- 60°
- Overcast
- 97% humidity
- 12 mph wind
- 93% cloud cover
- 32 AQI 🟩
- 0.46 inches of rain expected in the next 48 hours

<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Mon:  0.00"               54 ----- 62
Tue:  0.32"                  60 -------- 72
Wed:  0.14"              53 ----- 61
Thu:  0.00"            49 -------- 62
Fri:  0.00"      39 -------- 53
<b>Sat:  0.00"     38 --------- 53</b>
<b>Sun:  0.09"        43 --- 47</b>
Mon:  0.00"    37 ------- 48
Tue:  0.00"     38 ------------ 58
Wed:  0.00"      40 ---------- 56
Thu:  0.00"     38 --------- 52
Fri:  0.00"    36 ---------- 53
<b>Sat:  0.00"     38 ------------ 57</b>
<b>Sun:  0.00"       41 -------- 55</b>
Mon:  0.00"      40 --------- 54
Tue:  0.00"   35 ------------ 55</code></pre>

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




