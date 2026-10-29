---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 02:02 AM CT, October 29</p>

<picture>
  <source srcset="{{ site.baseurl }}/plots/weather_2026-10-29_0702.png"
          media="(min-width: 750px)">
  <img src="{{ site.baseurl }}/plots/weather_2026-10-29_0702_mobile.png" alt="" />
</picture>

Today's high is 78°, which is 1° **warmer** than yesterday. Tomorrow is expected to be 11° *colder* than today.

Currently:

- 57°
- Mostly Cloudy
- 72% humidity
- 9 mph wind
- 71% cloud cover
- 35 AQI 🟩
- 0.01 inches of rain expected in the next 48 hours

<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Thu:  0.00"            54 -------------- 78
Fri:  0.01"        48 ----------- 67
<b>Sat:  0.08"            54 ----- 62</b>
<b>Sun:  0.35"            54 --- 59</b>
Mon:  0.23"             56 ---- 62
Tue:  0.00"               60 ----- 68
Wed:  0.28"           53 --------- 68
Thu:  0.01"     42 ------ 53
Fri:  0.00"   39 ----------- 57
<b>Sat:  0.00"    40 --------- 56</b>
<b>Sun:  0.00"        48 ----------- 66</b>
Mon:  0.21"            55 -- 57
Tue:  0.00"           52 -- 56
Wed:  0.00"           52 ---- 59
Thu:  0.00"        48 ----------- 67</code></pre>

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




