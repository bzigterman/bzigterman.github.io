---
layout: page
title: Weather
permalink: /projects/weather/
imageurl: https://bzigterman.com/plots/temp_history.png
webappicon: /weather.png
---

## Champaign–Urbana Forecast

<p class="updated_time"> Latest data: 05:37 PM CT, June 11</p>

<iframe src="/interactive/champaign_weather.html" width="100%" height="600"> 
</iframe>

Today's high is 87°, which is 4° *colder* than yesterday. Tomorrow is expected to be 11° *colder* than today.

Currently:

- 87°
- Breezy and Mostly Cloudy
- 72% humidity
- 16 mph wind
- 70% cloud cover
- 37 AQI 🟩
- 0.49 inches of rain in the past 24 hours
- 1.53 inches of rain expected in the next 48 hours

<noscript>
<p>Today's Temperature</p>
<pre><code style="font-family: monospace; font-size: 0.75em;">   +--+--------------+--------------+--------------+--------------+------------+
   |                                                  *  *  *  *               |
85 +                                            *  *                           +
   |                                         *                    *            |
80 +                                   *  *                                    +
   |                                                                           |
   |                                *                                          |
75 +                                                                           +
   |                             *                                   *  *  *   |
70 +  *                       *                                                +
   |     *                 *                                                   |
   |        *  *  *  *  *                                                      |
65 +--+--------------+--------------+--------------+--------------+------------+
      0              5             10             15             20             
                                  Hour of the Day                               </code></pre>
</noscript><noscript>
<h3>7-Day Outlook</h3>
<pre><code style="font-family: monospace; font-size: 0.75em;">Thu:  1.03"                 66 --------------------------- 87
Fri:  0.00"            62 ------------------ 76
Sat:  0.02"            62 ----------------------- 80
Sun:  0.04"           61 ------------- 71
Mon:  0.00"      57 ------------------------ 76
Tue:  0.03"          60 -------------------- 76
Wed:  0.01"     56 ------------------------- 76</code></pre>
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




