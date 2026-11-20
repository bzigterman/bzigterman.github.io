---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 01:00 PM CT, November 20</p>

<picture>
  <source srcset="{{ site.baseurl }}/plots/weather_2026-11-20_1900.png"
          media="(min-width: 750px)">
  <img src="{{ site.baseurl }}/plots/weather_2026-11-20_1900_mobile.png" alt="" />
</picture>

Today's high is 70°, which is 1° **warmer** than yesterday. Tomorrow is expected to be 0° **warmer** than today.

Currently:

- 69°
- Clear
- 51% humidity
- 9 mph wind
- 4% cloud cover
- 52 AQI 🟨
- 0.08 inches of rain expected in the next 48 hours

<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Fri:  0.00"          40 ---------------- 70
<b>Sat:  0.00"           42 --------------- 70</b>
<b>Sun:  0.09"          41 ---------- 60</b>
Mon:  0.00"      34 -------- 48
Tue:  0.00"   28 -------- 43
Wed:  0.00"      33 ------ 44
Thu:  0.00"           42 -- 47
Fri:  0.00"         38 --------- 55
<b>Sat:  0.00"         39 --------- 55</b>
<b>Sun:  0.00"      34 -------- 49</b>
Mon:  0.00"       36 ----------- 55
Tue:  0.03"          41 --------- 58
Wed:  0.02"             46 ----- 56
Thu:  0.00"       36 ------ 46
Fri:  0.00"     31 ------- 44
<b>Sat:  0.00"    29 ------- 43</b></code></pre>

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




