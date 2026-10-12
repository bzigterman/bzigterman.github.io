---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 12:51 PM CT, October 12</p>

<picture>
  <source srcset="{{ site.baseurl }}/plots/weather_2026-10-12_1751.png"
          media="(min-width: 750px)">
  <img src="{{ site.baseurl }}/plots/weather_2026-10-12_1751_mobile.png" alt="" />
</picture>

Today's high is 88°, which is 8° **warmer** than yesterday. Tomorrow is expected to be 1° *colder* than today.

Currently:

- 86°
- Breezy
- 42% humidity
- 14 mph wind
- 4% cloud cover
- 35 AQI 🟩
- 0.31 inches of rain expected in the next 48 hours

<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Mon:  0.00"            58 -------------- 88
Tue:  0.00"                  71 -------- 87
Wed:  0.42"               63 ------ 77
Thu:  0.18"              61 -------- 78
Fri:  0.00"       45 ------ 59
<b>Sat:  0.00"   37 -------- 55</b>
<b>Sun:  0.00"    39 ----------- 64</b>
Mon:  0.00"        48 ---------- 70
Tue:  0.00"           55 ------ 69
Wed:  0.00"            56 -------- 75
Thu:  0.00"            58 --------- 77
Fri:  0.00"              62 -------- 78
<b>Sat:  0.15"         50 -------- 69</b>
<b>Sun:  0.00"       46 ---- 54</b>
Mon:  0.00"     42 --------- 62
Tue:  0.00"       47 ---------- 68</code></pre>

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




