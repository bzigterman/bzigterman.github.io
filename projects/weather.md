---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 03:04 AM CT, June 15</p>

<iframe src="/interactive/champaign_weather.html" width="100%" height="600"> 
</iframe>

Today's high is 75°, which is 3° **warmer** than yesterday. Tomorrow is expected to be 2° *colder* than today.

Currently:

- 57°
- Mostly Cloudy
- 87% humidity
- 6 mph wind
- 83% cloud cover
- 25 AQI 🟩
- 0.15 inches of rain expected in the next 48 hours

<noscript>
<p>Today's Temperature</p>
<pre><code style="font-family: monospace; font-size: 0.75em;">   +--+--------------+--------------+--------------+--------------+------------+
75 +                                            *  *  *  *  *  *               +
   |                                      *  *                                 |
70 +                                                              *            +
   |                                   *                                       |
   |                                *                                *         |
65 +                             *                                      *      +
   |                          *                                            *   |
60 +                                                                           +
   |  *                                                                        |
   |     *  *  *           *                                                   |
55 +              *  *  *                                                      +
   +--+--------------+--------------+--------------+--------------+------------+
      0              5             10             15             20             
                                  Hour of the Day                               </code></pre>
</noscript><noscript>
<h3>7-Day Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Mon:  0.00"     54 ------------------------------- 75
Tue:  0.14"          57 ------------------------- 74
Wed:  0.82"      55 -------------------------------------- 80
Thu:  0.02"            59 ----------------------- 74
Fri:  0.00"     54 --------------------- 68
Sat:  0.00"      55 --------------------------- 73
Sun:  0.84"            59 ----------- 66</code></pre>
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




