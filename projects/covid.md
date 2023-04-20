---
layout: page
title: COVID-19
permalink: /projects/covid
imageurl: https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/Champaign_facet.png
webappicon: /covid.png
---

## Champaign County

<iframe src="/interactive/champaign_covid.html" width="100%" height="400"> 
</iframe>

Charts for Champaign County are posted weekly on Mastodon <a rel="me" href="https://mastodon.social/@ChampaignCovid">@ChampaignCovid@mastodon.social</a>.

### Hospitalized

<iframe src="/interactive/champaign_hospital.html" width="100%" height="400"> 
</iframe>

### Wastewater Surveillance

<iframe src="/interactive/champaign_wastewater.html" width="100%" height="400"> 
</iframe>

More information available from the [CDC](https://covid.cdc.gov/covid-data-tracker/#wastewater-surveillance) and the [Illinois Wastewater Surveillance System](https://iwss.uillinois.edu/wastewater-treatment-plant/159/).

## Illinois

<picture>
  <source srcset="https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/IL_facet.png"
          media="(min-width: 750px)">
  <img src="https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/IL_facet_mobile.png" alt="" />
</picture>

<div class = "hcharts">
<iframe src="/interactive/il_community_levels.html" width="100%" height="300"> 
</iframe>

<iframe src="/interactive/il_transmission_levels.html" width="100%" height="300"> 
</iframe>

<iframe src="/interactive/il_new_cases.html" width="100%" height="300"> 
</iframe>
</div>

[Community levels](https://www.cdc.gov/coronavirus/2019-ncov/your-health/covid-by-county.html) are calculated by the CDC based on new cases and hospital data. [Community transmission levels](https://covid.cdc.gov/covid-data-tracker/#county-view) are calculated by the CDC based on new cases and test positivity.

## United States

<picture>
  <source srcset="https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/US_facet.png"
          media="(min-width: 750px)">
  <img src="https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/US_facet_mobile.png" alt="" />
</picture>

<picture>
  <source srcset="https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/usa_community_levels.png"
          media="(min-width: 750px)">
  <img src="https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/usa_community_level_mobile.png" alt="" />
</picture>

<picture>
  <source srcset="https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/usa_transmission.png"
          media="(min-width: 750px)">
  <img src="https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/usa_transmission_mobile.png" alt="" />
</picture>

<picture>
  <source srcset="https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/usa_new_cases.png"
          media="(min-width: 750px)">
  <img src="https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/usa_new_cases_mobile.png" alt="" />
</picture>

## World

<picture>
  <source srcset="https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/world_facet.png"
          media="(min-width: 750px)">
  <img src="https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/world_facet_mobile.png" alt="" />
</picture>

## Case Acceleration

As of Wednesday, the 14-day percent change in average new cases was:
  
- -8% in Champaign County
- -30% in Illinois
- -26% in the United States
- -48% worldwide

<picture>
  <source srcset="https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/new_cases_change_facet.png"
          media="(min-width: 750px)">
  <img src="https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/new_cases_change_facet_mobile.png" alt="" />
</picture>

This chart measures how quickly the average number of new cases is changing, or roughly, the slope of the new-cases charts above. If the case acceleration is positive, then the average number of new cases is increasing. If it is negative, then the average number of new cases is decreasing.

## Death Acceleration

As of Wednesday, the 14-day percent change in average new deaths was:
  
- -39% in Illinois
- -13% in the United States
- -56% worldwide

<picture>
  <source srcset="https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/new_deaths_change_facet.png"
          media="(min-width: 750px)">
  <img src="https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/new_deaths_change_facet_mobile.png" alt="" />
</picture>

This chart measures how quickly the average number of new deaths is changing, or roughly, the slope of the new-deaths charts above. If the death acceleration is positive, then the average number of new deaths is increasing. If it is negative, then the average number of new deaths is decreasing.

### Sources

[Champaign-Urbana Public Health District](https://www.c-uphd.org/champaign-urbana-illinois-coronavirus-information.html), [University of Illinois](https://go.illinois.edu/COVIDTestingData), [Illinois Department of Public Health](http://www.dph.illinois.gov/covid19), [Centers for Disease Control and Prevention](https://covid.cdc.gov/covid-data-tracker/), [U.S. Department of Health and Human Services](https://healthdata.gov/Hospital/COVID-19-Reported-Patient-Impact-and-Hospital-Capa/anag-cw7u), [The New York Times](https://github.com/nytimes/covid-19-data), [Our World in Data](https://github.com/owid/covid-19-data/tree/master/public/data) and the [COVID-19 Data Repository by the Center for Systems Science and Engineering (CSSE) at Johns Hopkins University](https://github.com/CSSEGISandData/COVID-19).


