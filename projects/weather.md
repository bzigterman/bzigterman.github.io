---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 03:19 PM CT, September 23</p>

<picture>
  <source srcset="{{ site.baseurl }}/plots/weather_2026-09-23_2019.png"
          media="(min-width: 750px)">
  <img src="{{ site.baseurl }}/plots/weather_2026-09-23_2019_mobile.png" alt="" />
</picture>

Today's high is 65°, which is 5° *colder* than yesterday. Tomorrow is expected to be 6° **warmer** than today.

Currently:

- 64°
- Mostly Cloudy
- 80% humidity
- 11 mph wind
- 87% cloud cover
- 31 AQI 🟩
- 0.05 inches of rain expected in the next 48 hours

<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Wed:  0.00"             58 ---- 65
Thu:  0.04"             58 ------- 71
Fri:  0.00"            56 ---- 63
<b>Sat:  0.00"            56 -------- 70</b>
<b>Sun:  0.00"          52 ----------- 73</b>
Mon:  0.00"          52 ------------- 75
Tue:  0.28"           55 --------------- 81
Wed:  0.20"           54 -------- 69
Thu:  0.59"           55 ---- 61
Fri:  0.02"             58 ------- 70
<b>Sat:  0.04"               62 ------- 74</b>
<b>Sun:  0.04"         50 ------------- 74</b>
Mon:  0.00"    42 -------- 56
Tue:  0.05"   40 ------------ 62
Wed:  0.13"        49 ----------- 69
Thu:  0.38"             57 ------------- 81</code></pre>

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




