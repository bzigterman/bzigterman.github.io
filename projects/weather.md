---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 12:36 AM CT, August 24</p>

<picture>
  <source srcset="{{ site.baseurl }}/plots/weather_2026-08-24_0536.png"
          media="(min-width: 750px)">
  <img src="{{ site.baseurl }}/plots/weather_2026-08-24_0536_mobile.png" alt="" />
</picture>

Today's high is 79°, which is 0° *colder* than yesterday. Tomorrow is expected to be 2° **warmer** than today.

Currently:

- 58°
- Clear
- 90% humidity
- 5 mph wind
- 3% cloud cover
- 30 AQI 🟩

<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Mon:  0.00"    54 --------------- 79
Tue:  0.00"      57 -------------- 81
Wed:  0.02"         62 ----------- 81
Thu:  0.06"           65 --------- 81
Fri:  0.00"          63 ----------- 82
<b>Sat:  0.01"          64 ----------- 82</b>
<b>Sun:  0.63"             69 ------------- 90</b>
Mon:  0.52"              70 -------- 83
Tue:  0.02"         62 --------------- 87
Wed:  0.01"       58 ------ 69
Thu:  0.20"    53 ---- 60
Fri:  0.04"    53 ------------ 74
<b>Sat:  0.00"    54 ---------- 70</b>
<b>Sun:  0.00"   52 ----------- 71</b>
Mon:  0.58"       58 --- 63</code></pre>

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




