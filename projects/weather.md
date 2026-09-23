---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 10:05 AM CT, September 23</p>

<picture>
  <source srcset="{{ site.baseurl }}/plots/weather_2026-09-23_1506.png"
          media="(min-width: 750px)">
  <img src="{{ site.baseurl }}/plots/weather_2026-09-23_1506_mobile.png" alt="" />
</picture>

Today's high is 64°, which is 6° *colder* than yesterday. Tomorrow is expected to be 4° **warmer** than today.

Currently:

- 62°
- Mostly Cloudy
- 80% humidity
- 11 mph wind
- 80% cloud cover
- 30 AQI 🟩

<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Wed:  0.00"             58 --- 64
Thu:  0.00"             59 ----- 68
Fri:  0.00"            57 --- 63
<b>Sat:  0.00"        50 ----------- 70</b>
<b>Sun:  0.00"         52 ----------- 72</b>
Mon:  0.00"         52 ------------ 74
Tue:  0.05"           55 --------------- 82
Wed:  0.26"        49 ------------- 73
Thu:  0.12"     45 -------- 58
Fri:  2.40"         51 ------ 63
<b>Sat:  0.57"            57 ---- 65</b>
<b>Sun:  0.09"      46 ----------- 66</b>
Mon:  0.00"   41 ---------- 58
Tue:  0.00"     45 ----------- 64
Wed:  0.00"       48 ---------- 66
Thu:  0.00"    42 ---------- 60</code></pre>

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




