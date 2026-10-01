---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 04:04 PM CT, October 01</p>

<picture>
  <source srcset="{{ site.baseurl }}/plots/weather_2026-10-01_2104.png"
          media="(min-width: 750px)">
  <img src="{{ site.baseurl }}/plots/weather_2026-10-01_2104_mobile.png" alt="" />
</picture>

Today's high is 88°, which is 9° **warmer** than yesterday. Tomorrow is expected to be 18° *colder* than today.

Currently:

- 87°
- Mostly Cloudy
- 54% humidity
- 12 mph wind
- 70% cloud cover
- 46 AQI 🟩
- 0.46 inches of rain expected in the next 48 hours

<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Thu:  0.10"                  71 -------- 88
Fri:  0.17"          52 -------- 70
<b>Sat:  0.00"       47 ----------- 70</b>
<b>Sun:  0.00"          52 --------- 73</b>
Mon:  0.00"         50 -------- 67
Tue:  0.00"       45 ---------- 68
Wed:  0.02"         50 ------------- 78
Thu:  0.00"         50 --------- 70
Fri:  0.00"          53 ----------- 77
<b>Sat:  0.00"               63 ----------- 87</b>
<b>Sun:  0.00"            58 --------- 76</b>
Mon:  0.23"            56 ----- 69
Tue:  0.05"      44 ----------- 69
Wed:  0.00"   37 ---------- 59
Thu:  0.00"      44 ----------- 68
Fri:  0.00"       47 ---------- 68</code></pre>

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




