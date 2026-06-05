---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 01:14 PM CT, June 05</p>

<iframe src="/interactive/champaign_weather.html" width="100%" height="600"> 
</iframe>

Today's high is 84°, which is 2° *colder* than yesterday. Tomorrow is expected to be 5° **warmer** than today.

Currently:

- 78°
- Breezy and Mostly Cloudy
- 58% humidity
- 15 mph wind
- 65% cloud cover
- 43 AQI 🟩
- 0.34 inches of rain expected in the next 48 hours

<noscript>
<h3>7-Day Outlook</h3>
<pre><code style="font-family: monospace;">Fri:  0.03"      69 ------------- 84
Sat:  0.02"       71 ---------------- 89
Sun:  0.19"     68 --------- 79
Mon:  0.68"    67 ----------- 80
Tue:  0.50"      69 -------------- 85
Wed:  0.00"         73 -------------- 89
Thu:  0.00"          74 --------------- 91</code></pre>
</noscript>
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




