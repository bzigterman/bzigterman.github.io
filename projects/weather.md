---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 06:53 AM CT, September 18</p>

<picture>
  <source srcset="{{ site.baseurl }}/plots/weather_2026-09-18_1153.png"
          media="(min-width: 750px)">
  <img src="{{ site.baseurl }}/plots/weather_2026-09-18_1153_mobile.png" alt="" />
</picture>

Today's high is 84°, which is 11° *colder* than yesterday. Tomorrow is expected to be 11° **warmer** than today.

Currently:

- 71°
- Overcast
- 96% humidity
- 8 mph wind
- 100% cloud cover
- 53 AQI 🟨
- 0.02 inches of rain expected in the next 48 hours

<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Fri:  0.00"             71 ------- 84
<b>Sat:  0.02"            68 -------------- 95</b>
<b>Sun:  0.36"           67 --------- 83</b>
Mon:  1.52"       59 --- 65
Tue:  0.11"    54 --- 59
Wed:  0.00"     55 ------ 66
Thu:  0.00"   52 -------- 67
Fri:  0.00"      57 ------ 68
<b>Sat:  0.00"   52 ---------- 70</b>
<b>Sun:  0.00"   52 ------------ 75</b>
Mon:  0.00"     55 ------------- 80
Tue:  0.29"      57 --- 64
Wed:  0.50"     56 --- 61
Thu:  0.01"     55 ----- 65
Fri:  0.00"     56 ------- 69</code></pre>

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




