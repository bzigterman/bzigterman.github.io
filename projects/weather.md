---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 01:40 AM CT, September 30</p>

<picture>
  <source srcset="{{ site.baseurl }}/plots/weather_2026-09-30_0640.png"
          media="(min-width: 750px)">
  <img src="{{ site.baseurl }}/plots/weather_2026-09-30_0640_mobile.png" alt="" />
</picture>

Today's high is 78°, which is 4° *colder* than yesterday. Tomorrow is expected to be 2° **warmer** than today.

Currently:

- 62°
- Overcast
- 70% humidity
- 6 mph wind
- 95% cloud cover
- 47 AQI 🟩
- 0.26 inches of rain expected in the next 48 hours

<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Wed:  0.00"              61 --------- 78
Thu:  0.26"                  67 ------- 81
Fri:  0.05"          52 --------- 69
<b>Sat:  0.00"        48 ------------ 71</b>
<b>Sun:  0.00"          52 ---------- 72</b>
Mon:  0.00"      44 -------- 61
Tue:  0.00"   39 -------------- 65
Wed:  0.00"     43 ---------------- 73
Thu:  0.00"         50 ----------- 71
Fri:  0.00"       46 ---------- 66
<b>Sat:  0.00"    41 -------------- 68</b>
<b>Sun:  0.00"       46 -------------- 74</b>
Mon:  0.00"       47 --------- 64
Tue:  0.00"     42 ------------ 66
Wed:  0.00"         51 ----------------- 83</code></pre>

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




