---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 12:45 PM CT, June 09</p>

<iframe src="/interactive/champaign_weather.html" width="100%" height="600"> 
</iframe>

Today's high is 89°, which is 11° **warmer** than yesterday. Tomorrow is expected to be 2° **warmer** than today.

Currently:

- 85°
- Partly Cloudy
- 75% humidity
- 13 mph wind
- 60% cloud cover
- 25 AQI 🟩
- 1.75 inches of rain in the past 24 hours

<noscript>
<p>Today's Temperature</p>
<pre><code style="font-family: monospace; font-size: 0.75em;">   +--+--------------+--------------+--------------+--------------+------------+
   |                                               *  *                        |
   |                                            *        *  *                  |
85 +                                         *                 *               +
   |                                      *                                    |
   |                                   *                          *            |
80 +                                *                                          +
   |                             *                                   *         |
   |                          *                                         *      |
75 +                                                                       *   +
   |              *  *  *  *                                                   |
   |  *  *  *  *                                                               |
   +--+--------------+--------------+--------------+--------------+------------+
      0              5             10             15             20             
                                  Hour of the Day                               </code></pre>
</noscript><noscript>
<h3>7-Day Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Tue:  0.00"                        72 ------------------- 89
Wed:  0.00"                          74 ------------------- 91
Thu:  0.03"                         73 ------------------- 90
Fri:  0.19"           60 ------------------ 77
Sat:  0.00"           60 ----------------------- 81
Sun:  0.13"             62 ---------------- 77
Mon:  0.12"    54 ----------------- 69</code></pre>
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




