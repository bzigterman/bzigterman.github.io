---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 11:47 AM CT, November 10</p>

<picture>
  <source srcset="{{ site.baseurl }}/plots/weather_2026-11-10_1747.png"
          media="(min-width: 750px)">
  <img src="{{ site.baseurl }}/plots/weather_2026-11-10_1747_mobile.png" alt="" />
</picture>

Today's high is 69°, which is 4° **warmer** than yesterday. Tomorrow is expected to be 3° *colder* than today.

Currently:

- 64°
- Clear
- 66% humidity
- 4 mph wind
- 3% cloud cover
- 22 AQI 🟩
- 0.24 inches of rain expected in the next 48 hours

<h3>Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Tue:  0.00"             45 ------------- 69
Wed:  0.24"         38 --------------- 65
Thu:  0.02"        35 ------ 47
Fri:  0.00"      31 ----- 41
<b>Sat:  0.00"     29 -------- 44</b>
<b>Sun:  0.00"      32 --------- 48</b>
Mon:  0.00"       33 --------- 51
Tue:  0.00"       34 --------- 51
Wed:  0.00"       34 ----------- 54
Thu:  0.00"         37 ----------- 57
Fri:  0.00"            42 -------- 58
<b>Sat:  0.35"              46 ---- 54</b>
<b>Sun:  0.88"            43 ----- 53</b>
Mon:  0.00"         38 ---- 44
Tue:  0.00"      32 ----- 40
Wed:  0.00"   26 ----- 35</code></pre>

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




