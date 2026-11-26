---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 04:00 PM CT, November 26</p>

<picture>
  <source srcset="{{ site.baseurl }}/plots/weather_2026-11-26_2200.png"
          media="(min-width: 750px)">
  <img src="{{ site.baseurl }}/plots/weather_2026-11-26_2200_mobile.png" alt="" />
</picture>

Today's high is 41°, which is 1° **warmer** than yesterday. Tomorrow is expected to be 0° **warmer** than today.

Currently:

- 40°
- Light Rain and Breezy
- 99% humidity
- 16 mph wind
- 83% cloud cover
- 18 AQI 🟩
- 0.54 inches of rain in the past 24 hours
- 0.55 inches of rain expected in the next 48 hours

<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Thu:  1.00"        36 --- 41
Fri:  0.17"       34 ---- 41
<b>Sat:  0.00"       34 ----------- 51</b>
<b>Sun:  0.43"       35 ------ 44</b>
Mon:  0.00"   29 --------- 42
Tue:  0.00"      33 ---------- 47
Wed:  0.00"           40 ---------- 55
Thu:  0.01"                48 ------ 56
Fri:  0.13"                    54 ------ 62
<b>Sat:  0.03"             43 --------- 56</b>
<b>Sun:  0.00"           40 ------ 49</b>
Mon:  0.52"         38 --------- 51
Tue:  0.40"         38 ------------- 56
Wed:  0.01"         38 --- 42
Thu:  0.00"     32 ------ 41
Fri:  0.05"     31 ---- 37</code></pre>

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




