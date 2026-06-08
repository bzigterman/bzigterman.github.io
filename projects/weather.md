---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 05:06 AM CT, June 08</p>

<iframe src="/interactive/champaign_weather.html" width="100%" height="600"> 
</iframe>

Today's high is 77°, which is 12° *colder* than yesterday. Tomorrow is expected to be 12° **warmer** than today.

Currently:

- 72°
- Mostly Cloudy
- 88% humidity
- 8 mph wind
- 77% cloud cover
- 30 AQI 🟩
- 1.62 inches of rain expected in the next 48 hours

<noscript>
<p>Today's Temperature</p>
<pre><code style="font-family: monospace; font-size: 0.75em;">   +--+--------------+--------------+--------------+--------------+------------+
77 +                                *  *  *                                    +
   |                                                                           |
76 +                             *           *        *                        +
75 +  *  *                                                                     +
   |                          *                    *                           |
74 +        *              *                                *                  +
   |           *                                               *               |
73 +              *                             *        *                     +
   |                 *  *                                         *  *         |
72 +                                                                           +
71 +                                                                    *  *   +
   +--+--------------+--------------+--------------+--------------+------------+
      0              5             10             15             20             
                                  Hour of the Day                               </code></pre>
</noscript><noscript>
<h3>7-Day Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Mon:  3.08"              71 --- 77
Tue:  0.00"              71 ----------- 89
Wed:  0.02"               74 ----------- 90
Thu:  0.07"              72 ------------ 90
Fri:  0.04"         64 ---------- 80
Sat:  0.00"       61 -------------- 82
Sun:  0.00"   55 ------------ 73</code></pre>
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




