---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 01:17 PM CT, June 15</p>

<iframe src="/interactive/champaign_weather.html" width="100%" height="600"> 
</iframe>

Today's high is 75°, which is 3° **warmer** than yesterday. Tomorrow is expected to be 1° **warmer** than today.

Currently:

- 74°
- Mostly Clear
- 46% humidity
- 8 mph wind
- 33% cloud cover
- 28 AQI 🟩
- 0.08 inches of rain expected in the next 48 hours

<noscript>
<p>Temperature</p>
<pre><code style="font-family: monospace; font-size: 0.75em;">   +-+--------------+-------------+--------------+--------------+-------------++
   |                                       * *                             *   |
75 +  * ** **                        *        * *                         *    +
   |          *                           *                                    |
70 +           *                  * *  *         *                             +
   |                                              *                            |
   |             *                      *                              **      |
65 +              *              *                  *                 *        +
   |                **         *                     *                         |
60 +                   **                              *            *          +
   |                      *** *                         * **       *           |
   |                                                         ** **             |
55 +-+--------------+-------------+--------------+--------------+-------------++
     0             10            20             30             40            50 
                                  Hours from Now                                </code></pre>
</noscript><noscript>
<h3>7-Day Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Mon:  0.00"         56 -------------------------- 75
Tue:  0.03"          57 --------------------------- 77
Wed:  0.79"       55 ------------------------------------ 81
Thu:  0.00"            58 ------------------- 72
Fri:  0.01"         56 ----------------------- 73
Sat:  0.00"     53 ---------------------------- 74
Sun:  1.24"                 62 ---------------- 74
Mon:  1.21"                     65 ---------------------- 81
Tue:  0.00"                  63 ------------- 72
Wed:  0.00"                  63 ------------------- 77
Thu:  0.00"                 62 ---------------------- 78
Fri:  0.00"              60 ----------------------- 77
Sat:  0.02"              60 -------------- 70
Sun:  0.38"                  63 -------------------------- 82
Mon:  0.53"                 62 ---------------- 74
Tue:  0.00"            58 --------------- 69</code></pre>
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




