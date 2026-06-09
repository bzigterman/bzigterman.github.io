---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 02:02 AM CT, June 09</p>

<iframe src="/interactive/champaign_weather.html" width="100%" height="600"> 
</iframe>

Today's high is 88°, which is 11° **warmer** than yesterday. Tomorrow is expected to be 3° **warmer** than today.

Currently:

- 72°
- Mostly Clear
- 96% humidity
- 8 mph wind
- 20% cloud cover
- 28 AQI 🟩
- 2.47 inches of rain in the past 24 hours
- 0.06 inches of rain expected in the next 48 hours

<noscript>
<p>Today's Temperature</p>
<pre><code style="font-family: monospace; font-size: 0.75em;">   +--+--------------+--------------+--------------+--------------+------------+
   |                                               *  *  *  *                  |
   |                                            *                              |
85 +                                      *  *                                 +
   |                                   *                       *               |
   |                                                                           |
80 +                                *                             *            +
   |                                                                 *         |
   |                             *                                      *  *   |
75 +                                                                           +
   |                       *  *                                                |
   |  *  *  *  *  *  *  *                                                      |
   +--+--------------+--------------+--------------+--------------+------------+
      0              5             10             15             20             
                                  Hour of the Day                               </code></pre>
</noscript><noscript>
<h3>7-Day Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Tue:  0.00"                     72 -------------------- 88
Wed:  0.04"                        74 --------------------- 91
Thu:  0.02"                     72 ---------------------- 90
Fri:  0.22"       60 ---------------------- 78
Sat:  0.00"      59 ------------------------- 80
Sun:  0.07"         62 ---------- 70
Mon:  0.00"    58 ---------------- 71</code></pre>
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




