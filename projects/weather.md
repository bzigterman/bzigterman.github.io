---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 04:58 PM CT, June 07</p>

<iframe src="/interactive/champaign_weather.html" width="100%" height="600"> 
</iframe>

Today's high is 89°, which is 2° *colder* than yesterday. Tomorrow is expected to be 7° *colder* than today.

Currently:

- 88°
- Mostly Cloudy
- 53% humidity
- 10 mph wind
- 84% cloud cover
- 40 AQI 🟩
- 0.09 inches of rain expected in the next 48 hours

<p>Today's Temperature</p>
<pre><code style='font-family: monospace;font-size: 0.75em;'>
   +--+--------------+--------------+--------------+--------------+------------+
   |                                               *  *  *  *                  |
   |                                            *                              |
85 +                                      *                    *               +
   |                                *  *     *                                 |
80 +                             *                                             +
   |                                                              *  *         |
   |                          *                                         *  *   |
75 +                                                                           +
   |  *  *                 *                                                   |
   |        *  *                                                               |
70 +              *  *  *                                                      +
   +--+--------------+--------------+--------------+--------------+------------+
      0              5             10             15             20             
                                  Hour of the Day                               
</code></pre>
<p>Source: Open-Meteo</p><noscript>
<h3>7-Day Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Sun:  0.00"           70 -------------- 89
Mon:  0.07"             72 ------- 82
Tue:  0.16"             72 ------------ 89
Wed:  0.02"             73 ------------- 90
Thu:  1.19"           69 --------------- 90
Fri:  0.21"   59 --------------- 79
Sat:  0.00"       64 ----------- 80</code></pre>
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




