---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 11:44 PM CT, September 23</p>

<picture>
  <source srcset="{{ site.baseurl }}/plots/weather_2026-09-24_0444.png"
          media="(min-width: 750px)">
  <img src="{{ site.baseurl }}/plots/weather_2026-09-24_0444_mobile.png" alt="" />
</picture>

Today's high is 65°, which is 5° *colder* than yesterday. Tomorrow is expected to be 3° **warmer** than today.

Currently:

- 60°
- Overcast
- 95% humidity
- 9 mph wind
- 100% cloud cover
- 31 AQI 🟩
- 0.01 inches of rain expected in the next 48 hours

<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Wed:  0.00"              58 ----- 65
Thu:  0.00"              58 ------- 68
Fri:  0.00"               60 ----- 67
<b>Sat:  0.00"             56 ---------- 71</b>
<b>Sun:  0.00"         50 --------------- 73</b>
Mon:  0.00"            54 -------------- 76
Tue:  0.53"              57 ------- 68
Wed:  0.38"          52 ----------- 68
Thu:  0.00"      46 ---------------- 70
Fri:  0.00"         50 -------------- 72
<b>Sat:  0.00"            54 ------------ 74</b>
<b>Sun:  0.04"        49 ---------- 64</b>
Mon:  0.22"      45 -------- 58
Tue:  0.00"   41 -------------- 62
Wed:  0.00"     44 -------------- 65
Thu:  0.00"        48 --------------- 71</code></pre>

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




