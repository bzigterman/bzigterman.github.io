---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 06:49 AM CT, September 22</p>

<picture>
  <source srcset="{{ site.baseurl }}/plots/weather_2026-09-22_1149.png"
          media="(min-width: 750px)">
  <img src="{{ site.baseurl }}/plots/weather_2026-09-22_1149_mobile.png" alt="" />
</picture>

Today's high is 68°, which is 2° **warmer** than yesterday. Tomorrow is expected to be 5° *colder* than today.

Currently:

- 58°
- Overcast
- 88% humidity
- 10 mph wind
- 100% cloud cover
- 22 AQI 🟩
- 0.03 inches of rain expected in the next 48 hours

<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Tue:  0.00"           58 ----- 68
Wed:  0.03"           57 --- 63
Thu:  0.00"           57 ------ 69
Fri:  0.00"           58 ----- 67
<b>Sat:  0.05"          56 -- 60</b>
<b>Sun:  0.00"           58 --------- 76</b>
Mon:  0.00"             61 -------- 78
Tue:  0.02"               66 -------- 82
Wed:  0.09"            60 --------- 78
Thu:  0.00"         54 ------------- 80
Fri:  0.00"            60 -------------- 88
<b>Sat:  0.29"              64 ----- 74</b>
<b>Sun:  0.07"       50 ------ 62</b>
Mon:  0.00"     46 ------- 60
Tue:  0.00"     46 ------ 58
Wed:  0.00"   41 ---------- 62</code></pre>

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




