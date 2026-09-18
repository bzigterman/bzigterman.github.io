---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 07:15 PM CT, September 17</p>

<picture>
  <source srcset="{{ site.baseurl }}/plots/weather_2026-09-18_0015.png"
          media="(min-width: 750px)">
  <img src="{{ site.baseurl }}/plots/weather_2026-09-18_0015_mobile.png" alt="" />
</picture>

Today's high is 95°, which is 9° **warmer** than yesterday. Tomorrow is expected to be 15° *colder* than today.

Currently:

- 87°
- Mostly Clear
- 64% humidity
- 5 mph wind
- 18% cloud cover
- 82 AQI 🟨
- 0.35 inches of rain expected in the next 48 hours

<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Thu:  0.00"               71 ----------- 95
Fri:  0.30"              69 ----- 80
<b>Sat:  0.08"            65 ------- 79</b>
<b>Sun:  0.03"             67 -------- 84</b>
Mon:  0.89"            63 --- 71
Tue:  0.10"       52 ----- 63
Wed:  0.00"    47 -------- 64
Thu:  0.00"      50 ------- 67
Fri:  0.00"      50 -------- 68
<b>Sat:  0.00"      51 --------- 71</b>
<b>Sun:  0.00"       54 --------- 73</b>
Mon:  0.00"       52 ---------- 74
Tue:  0.00"       53 ----------- 78
Wed:  0.05"       53 ------- 69
Thu:  0.00"    47 -------- 65
Fri:  0.00"   44 ----------- 69</code></pre>

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




