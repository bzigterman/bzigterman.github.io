---
layout: page
title: COVID-19
permalink: /charts/covid
---

During the COVID-19 pandemic, I've been making charts with data from the [Champaign-Urbana Public Health District](https://www.c-uphd.org/champaign-urbana-illinois-coronavirus-information.html), the [University of Illinois](https://go.illinois.edu/COVIDTestingData), the [Illinois Department of Public Health](http://www.dph.illinois.gov/covid19), the [CDC](https://covid.cdc.gov/covid-data-tracker/), the [U.S. Department of Health and Human Services](https://healthdata.gov/Hospital/COVID-19-Reported-Patient-Impact-and-Hospital-Capa/anag-cw7u), [Our World in Data](https://github.com/owid/covid-19-data/tree/master/public/data) and the [COVID-19 Data Repository by the Center for Systems Science and Engineering (CSSE) at Johns Hopkins University](https://github.com/CSSEGISandData/COVID-19).

## Champaign County

![Champaign County Metrics](https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/Champaign_facet.png)

<div id="cu_covid_table" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
  <style>@import url("https://fonts.googleapis.com/css2?family=Lato:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap");
html {
  font-family: Lato, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#cu_covid_table .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 12px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: 100%;
  border-top-style: solid;
  border-top-width: 3px;
  border-top-color: #FFFFFF;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#cu_covid_table .gt_heading {
  background-color: #FFFFFF;
  text-align: left;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#cu_covid_table .gt_title {
  color: #333333;
  font-size: 24px;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#cu_covid_table .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 6px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#cu_covid_table .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#cu_covid_table .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#cu_covid_table .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 80%;
  font-weight: bolder;
  text-transform: uppercase;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#cu_covid_table .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 80%;
  font-weight: bolder;
  text-transform: uppercase;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#cu_covid_table .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#cu_covid_table .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#cu_covid_table .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#cu_covid_table .gt_group_heading {
  padding: 8px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 80%;
  font-weight: bolder;
  text-transform: uppercase;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
}

#cu_covid_table .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 80%;
  font-weight: bolder;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#cu_covid_table .gt_from_md > :first-child {
  margin-top: 0;
}

#cu_covid_table .gt_from_md > :last-child {
  margin-bottom: 0;
}

#cu_covid_table .gt_row {
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #F6F7F7;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#cu_covid_table .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 80%;
  font-weight: bolder;
  text-transform: uppercase;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 12px;
}

#cu_covid_table .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#cu_covid_table .gt_first_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
}

#cu_covid_table .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#cu_covid_table .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#cu_covid_table .gt_striped {
  background-color: #FAFAFA;
}

#cu_covid_table .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#cu_covid_table .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#cu_covid_table .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding: 4px;
}

#cu_covid_table .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#cu_covid_table .gt_sourcenote {
  font-size: 12px;
  padding: 4px;
}

#cu_covid_table .gt_left {
  text-align: left;
}

#cu_covid_table .gt_center {
  text-align: center;
}

#cu_covid_table .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#cu_covid_table .gt_font_normal {
  font-weight: normal;
}

#cu_covid_table .gt_font_bold {
  font-weight: bold;
}

#cu_covid_table .gt_font_italic {
  font-style: italic;
}

#cu_covid_table .gt_super {
  font-size: 65%;
}

#cu_covid_table .gt_footnote_marks {
  font-style: italic;
  font-weight: normal;
  font-size: 65%;
}
</style>
  <table class="gt_table">
  
  <thead class="gt_col_headings">
    <tr>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">14 Days<br>Ago</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">Latest</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">14 Day<br>Trend</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">Past<br>90 Days</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td class="gt_row gt_left">Cases</td>
<td class="gt_row gt_right">91</td>
<td class="gt_row gt_right">53</td>
<td class="gt_row gt_right">&minus;42&percnt;</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,9.21 3.61,9.23 4.27,9.18 4.93,9.19 5.59,9.16 6.25,9.16 6.92,9.15 7.58,9.20 8.24,9.20 8.90,9.25 9.56,9.26 10.23,9.24 10.89,9.15 11.55,9.17 12.21,9.08 12.87,9.01 13.54,8.94 14.20,8.91 14.86,8.83 15.52,8.87 16.18,8.77 16.85,8.81 17.51,8.61 18.17,8.55 18.83,8.29 19.49,8.34 20.15,7.91 20.82,7.85 21.48,7.51 22.14,7.67 22.80,7.69 23.46,7.54 24.13,7.30 24.79,7.18 25.45,7.02 26.11,7.02 26.77,6.73 27.44,6.54 28.10,6.39 28.76,6.22 29.42,6.11 30.08,5.82 30.75,5.45 31.41,5.36 32.07,4.95 32.73,4.79 33.39,4.53 34.05,4.66 34.72,4.44 35.38,4.52 36.04,4.44 36.70,4.58 37.36,4.73 38.03,4.11 38.69,4.31 39.35,4.26 40.01,3.96 40.67,3.97 41.34,3.77 42.00,3.74 42.66,4.08 43.32,3.81 43.98,3.82 44.65,3.96 45.31,3.70 45.97,3.59 46.63,3.17 47.29,2.61 47.95,2.14 48.62,1.54 49.28,1.54 49.94,1.94 50.60,2.28 51.26,2.84 51.93,3.42 52.59,3.42 53.25,3.88 53.91,4.01 54.57,3.84 55.24,4.28 55.90,4.08 56.56,4.48 57.22,4.90 57.88,5.55 58.55,5.61 59.21,5.85 59.87,5.51 60.53,5.91 61.19,5.83 61.85,5.96 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='9.56' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='48.62' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /><circle cx='49.28' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_left gt_striped">Hospitalized</td>
<td class="gt_row gt_right gt_striped">69</td>
<td class="gt_row gt_right gt_striped">24</td>
<td class="gt_row gt_right gt_striped">&minus;66&percnt;</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,9.09 3.61,9.09 4.27,9.09 4.93,9.09 5.59,9.09 6.25,9.09 6.92,9.26 7.58,9.26 8.24,9.26 8.90,9.26 9.56,9.26 10.23,9.26 10.89,9.26 11.55,8.62 12.21,8.62 12.87,8.62 13.54,8.62 14.20,8.62 14.86,8.62 15.52,8.62 16.18,8.61 16.85,8.61 17.51,8.61 18.17,8.61 18.83,8.61 19.49,8.61 20.15,8.61 20.82,7.04 21.48,7.04 22.14,7.04 22.80,7.04 23.46,7.04 24.13,7.04 24.79,7.04 25.45,4.82 26.11,4.82 26.77,4.82 27.44,4.82 28.10,4.82 28.76,4.82 29.42,4.82 30.08,3.01 30.75,3.01 31.41,3.01 32.07,3.01 32.73,3.01 33.39,3.01 34.05,3.01 34.72,2.07 35.38,2.07 36.04,2.07 36.70,2.07 37.36,2.07 38.03,2.07 38.69,2.07 39.35,1.76 40.01,1.76 40.67,1.76 41.34,1.76 42.00,1.76 42.66,1.76 43.32,1.76 43.98,1.54 44.65,1.54 45.31,1.54 45.97,1.54 46.63,1.54 47.29,1.54 47.95,1.54 48.62,1.58 49.28,1.58 49.94,1.58 50.60,1.58 51.26,1.58 51.93,1.58 52.59,1.58 53.25,1.88 53.91,1.88 54.57,1.88 55.24,1.88 55.90,1.88 56.56,1.88 57.22,1.88 57.88,7.32 58.55,7.32 59.21,7.32 59.87,7.32 60.53,7.32 61.19,7.32 61.85,7.32 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='6.92' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='7.58' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='8.24' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='8.90' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='9.56' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='10.23' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='10.89' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='43.98' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /><circle cx='44.65' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /><circle cx='45.31' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /><circle cx='45.97' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /><circle cx='46.63' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /><circle cx='47.29' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /><circle cx='47.95' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_left">Monthly Deaths</td>
<td class="gt_row gt_right">15</td>
<td class="gt_row gt_right">16</td>
<td class="gt_row gt_right">+7&percnt;</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,6.53 3.61,6.53 4.27,6.53 4.93,6.53 5.59,6.53 6.25,6.53 6.92,6.53 7.58,6.53 8.24,6.53 8.90,6.99 9.56,6.99 10.23,7.44 10.89,8.35 11.55,7.90 12.21,8.35 12.87,8.35 13.54,8.35 14.20,8.35 14.86,8.35 15.52,8.35 16.18,8.80 16.85,8.80 17.51,8.35 18.17,8.35 18.83,8.35 19.49,8.80 20.15,8.80 20.82,8.80 21.48,8.80 22.14,9.26 22.80,9.26 23.46,9.26 24.13,9.26 24.79,8.80 25.45,8.80 26.11,8.80 26.77,8.80 27.44,8.80 28.10,8.80 28.76,8.80 29.42,8.80 30.08,8.80 30.75,8.35 31.41,8.35 32.07,8.35 32.73,8.35 33.39,8.35 34.05,7.44 34.72,7.44 35.38,7.44 36.04,7.44 36.70,7.44 37.36,6.99 38.03,7.44 38.69,7.44 39.35,6.53 40.01,6.08 40.67,6.08 41.34,6.08 42.00,6.08 42.66,5.17 43.32,3.81 43.98,3.81 44.65,3.81 45.31,4.27 45.97,4.27 46.63,4.27 47.29,4.27 47.95,3.36 48.62,3.36 49.28,3.36 49.94,2.90 50.60,2.90 51.26,3.81 51.93,3.81 52.59,3.36 53.25,2.45 53.91,2.45 54.57,2.90 55.24,2.90 55.90,2.45 56.56,1.54 57.22,1.54 57.88,2.00 58.55,2.00 59.21,2.00 59.87,2.90 60.53,3.36 61.19,3.36 61.85,2.90 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='22.14' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='22.80' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='23.46' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='24.13' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='56.56' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /><circle cx='57.22' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_left gt_striped">New Vaccine Doses</td>
<td class="gt_row gt_right gt_striped">328</td>
<td class="gt_row gt_right gt_striped">278</td>
<td class="gt_row gt_right gt_striped">&minus;15&percnt;</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,2.18 3.61,2.31 4.27,1.79 4.93,1.67 5.59,1.54 6.25,1.92 6.92,4.71 7.58,7.38 8.24,7.38 8.90,8.51 9.56,9.26 10.23,9.11 10.89,9.00 11.55,9.03 12.21,9.07 12.87,8.81 13.54,7.84 14.20,7.34 14.86,7.75 15.52,7.95 16.18,8.05 16.85,7.93 17.51,8.06 18.17,7.71 18.83,7.41 19.49,7.38 20.15,7.49 20.82,7.24 21.48,7.28 22.14,7.39 22.80,8.01 23.46,8.01 24.13,7.45 24.79,7.23 25.45,7.30 26.11,7.23 26.77,7.02 27.44,7.00 28.10,7.15 28.76,7.67 29.42,7.69 30.08,7.73 30.75,7.71 31.41,7.73 32.07,7.73 32.73,7.95 33.39,7.73 34.05,7.47 34.72,7.08 35.38,6.85 36.04,6.63 36.70,6.54 37.36,6.03 38.03,5.87 38.69,5.85 39.35,6.00 40.01,6.05 40.67,6.11 41.34,5.98 42.00,5.85 42.66,5.98 43.32,6.31 43.98,6.24 44.65,6.16 45.31,6.07 45.97,5.81 46.63,5.98 47.29,5.75 47.95,5.57 48.62,5.51 49.28,5.68 49.94,5.70 50.60,6.50 51.26,7.00 51.93,7.26 52.59,7.24 53.25,7.47 53.91,7.60 54.57,7.84 55.24,7.24 55.90,7.13 56.56,7.17 57.22,7.13 57.88,7.30 58.55,7.34 59.21,7.39 59.87,7.73 60.53,7.82 61.19,8.18 61.85,8.18 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='9.56' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='5.59' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_left">Fully Vaccinated</td>
<td class="gt_row gt_right">111,000</td>
<td class="gt_row gt_right">113,000</td>
<td class="gt_row gt_right">+2&percnt;</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,9.26 3.61,9.20 4.27,9.09 4.93,8.98 5.59,8.82 6.25,8.71 6.92,8.71 7.58,8.71 8.24,8.71 8.90,8.71 9.56,8.71 10.23,8.16 10.89,8.16 11.55,8.16 12.21,8.16 12.87,8.16 13.54,7.60 14.20,7.60 14.86,7.60 15.52,7.60 16.18,7.60 16.85,7.60 17.51,7.60 18.17,7.05 18.83,7.05 19.49,7.05 20.15,7.05 20.82,7.05 21.48,6.50 22.14,6.50 22.80,6.50 23.46,6.50 24.13,6.50 24.79,6.50 25.45,6.50 26.11,6.50 26.77,5.95 27.44,5.95 28.10,5.95 28.76,5.95 29.42,5.95 30.08,5.95 30.75,5.95 31.41,5.95 32.07,5.40 32.73,5.40 33.39,5.40 34.05,5.40 34.72,5.40 35.38,5.40 36.04,5.40 36.70,4.85 37.36,4.85 38.03,4.85 38.69,4.85 39.35,4.85 40.01,4.30 40.67,4.30 41.34,4.30 42.00,4.30 42.66,4.30 43.32,4.30 43.98,3.75 44.65,3.75 45.31,3.75 45.97,3.75 46.63,3.75 47.29,3.75 47.95,3.75 48.62,3.20 49.28,3.20 49.94,3.20 50.60,3.20 51.26,3.20 51.93,3.20 52.59,2.64 53.25,2.64 53.91,2.64 54.57,2.64 55.24,2.64 55.90,2.64 56.56,2.64 57.22,2.09 57.88,2.09 58.55,2.09 59.21,2.09 59.87,2.09 60.53,2.09 61.19,1.54 61.85,1.54 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='2.95' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='61.19' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /><circle cx='61.85' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_left gt_striped">Pct. Fully Vaccinated</td>
<td class="gt_row gt_right gt_striped">53</td>
<td class="gt_row gt_right gt_striped">54</td>
<td class="gt_row gt_right gt_striped">+2&percnt;</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,9.26 3.61,9.26 4.27,9.14 4.93,9.02 5.59,8.90 6.25,8.78 6.92,8.65 7.58,8.53 8.24,8.53 8.90,8.53 9.56,8.53 10.23,8.41 10.89,8.17 11.55,8.05 12.21,8.05 12.87,7.93 13.54,7.81 14.20,7.81 14.86,7.69 15.52,7.57 16.18,7.45 16.85,7.45 17.51,7.33 18.17,7.21 18.83,7.09 19.49,6.97 20.15,6.85 20.82,6.73 21.48,6.73 22.14,6.73 22.80,6.61 23.46,6.48 24.13,6.36 24.79,6.36 25.45,6.24 26.11,6.24 26.77,6.12 27.44,6.12 28.10,6.00 28.76,5.88 29.42,5.88 30.08,5.76 30.75,5.64 31.41,5.64 32.07,5.52 32.73,5.52 33.39,5.40 34.05,5.28 34.72,5.16 35.38,5.04 36.04,5.04 36.70,4.92 37.36,4.80 38.03,4.68 38.69,4.56 39.35,4.44 40.01,4.44 40.67,4.32 41.34,4.32 42.00,4.07 42.66,4.07 43.32,3.95 43.98,3.83 44.65,3.71 45.31,3.71 45.97,3.59 46.63,3.47 47.29,3.35 47.95,3.35 48.62,3.11 49.28,3.11 49.94,2.99 50.60,2.99 51.26,2.87 51.93,2.75 52.59,2.75 53.25,2.63 53.91,2.51 54.57,2.51 55.24,2.39 55.90,2.27 56.56,2.15 57.22,2.03 57.88,1.90 58.55,1.90 59.21,1.78 59.87,1.78 60.53,1.66 61.19,1.54 61.85,1.54 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='2.95' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='3.61' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='61.19' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /><circle cx='61.85' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
  </tbody>
  <tfoot class="gt_sourcenotes">
    <tr>
      <td class="gt_sourcenote" colspan="5">Latest data: Thursday</td>
    </tr>
  </tfoot>
  
</table>
</div>

Charts for Champaign County are posted weekdays on Twitter [@ChampaignCovid](https://twitter.com/ChampaignCovid).

## Illinois

![Illinois Metrics](https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/IL_facet.png)

<div id="il_table" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
  <style>@import url("https://fonts.googleapis.com/css2?family=Lato:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap");
html {
  font-family: Lato, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#il_table .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 12px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: 100%;
  border-top-style: solid;
  border-top-width: 3px;
  border-top-color: #FFFFFF;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#il_table .gt_heading {
  background-color: #FFFFFF;
  text-align: left;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#il_table .gt_title {
  color: #333333;
  font-size: 24px;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#il_table .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 6px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#il_table .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#il_table .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#il_table .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 80%;
  font-weight: bolder;
  text-transform: uppercase;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#il_table .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 80%;
  font-weight: bolder;
  text-transform: uppercase;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#il_table .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#il_table .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#il_table .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#il_table .gt_group_heading {
  padding: 8px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 80%;
  font-weight: bolder;
  text-transform: uppercase;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
}

#il_table .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 80%;
  font-weight: bolder;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#il_table .gt_from_md > :first-child {
  margin-top: 0;
}

#il_table .gt_from_md > :last-child {
  margin-bottom: 0;
}

#il_table .gt_row {
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #F6F7F7;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#il_table .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 80%;
  font-weight: bolder;
  text-transform: uppercase;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 12px;
}

#il_table .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#il_table .gt_first_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
}

#il_table .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#il_table .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#il_table .gt_striped {
  background-color: #FAFAFA;
}

#il_table .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#il_table .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#il_table .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding: 4px;
}

#il_table .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#il_table .gt_sourcenote {
  font-size: 12px;
  padding: 4px;
}

#il_table .gt_left {
  text-align: left;
}

#il_table .gt_center {
  text-align: center;
}

#il_table .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#il_table .gt_font_normal {
  font-weight: normal;
}

#il_table .gt_font_bold {
  font-weight: bold;
}

#il_table .gt_font_italic {
  font-style: italic;
}

#il_table .gt_super {
  font-size: 65%;
}

#il_table .gt_footnote_marks {
  font-style: italic;
  font-weight: normal;
  font-size: 65%;
}
</style>
  <table class="gt_table">
  
  <thead class="gt_col_headings">
    <tr>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">14 Days<br>Ago</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">Latest</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">14 Day<br>Trend</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">Past<br>90 Days</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td class="gt_row gt_left">Cases</td>
<td class="gt_row gt_right">3.8K</td>
<td class="gt_row gt_right">3.2K</td>
<td class="gt_row gt_right">&minus;18&percnt;</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,9.25 3.61,9.26 4.27,9.24 4.93,9.21 5.59,9.21 6.25,9.15 6.92,9.13 7.58,9.10 8.24,9.13 8.90,9.17 9.56,9.09 10.23,9.04 10.89,8.99 11.55,8.92 12.21,8.87 12.87,8.75 13.54,8.66 14.20,8.67 14.86,8.60 15.52,8.53 16.18,8.52 16.85,8.42 17.51,8.26 18.17,8.20 18.83,8.16 19.49,8.10 20.15,7.80 20.82,7.60 21.48,7.49 22.14,7.43 22.80,7.32 23.46,7.07 24.13,6.77 24.79,6.86 25.45,6.63 26.11,6.42 26.77,6.33 27.44,6.19 28.10,5.91 28.76,5.84 29.42,5.49 30.08,5.30 30.75,5.08 31.41,4.94 32.07,4.72 32.73,4.64 33.39,4.22 34.05,4.22 34.72,4.09 35.38,3.84 36.04,3.74 36.70,3.76 37.36,3.58 38.03,3.62 38.69,3.60 39.35,3.21 40.01,3.18 40.67,3.34 41.34,3.19 42.00,3.36 42.66,3.21 43.32,2.97 43.98,2.97 44.65,3.18 45.31,2.59 45.97,2.75 46.63,2.26 47.29,2.06 47.95,2.02 48.62,1.74 49.28,1.54 49.94,1.91 50.60,1.89 51.26,2.50 51.93,2.81 52.59,2.68 53.25,2.86 53.91,2.74 54.57,2.74 55.24,2.94 55.90,2.41 56.56,2.33 57.22,2.44 57.88,2.88 58.55,3.16 59.21,3.21 59.87,3.08 60.53,3.51 61.19,3.67 61.85,3.91 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='3.61' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='49.28' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_left gt_striped">Hospitalized</td>
<td class="gt_row gt_right gt_striped">2.4K</td>
<td class="gt_row gt_right gt_striped">2.0K</td>
<td class="gt_row gt_right gt_striped">&minus;14&percnt;</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,9.13 3.61,9.05 4.27,8.99 4.93,9.03 5.59,9.16 6.25,9.08 6.92,9.18 7.58,9.25 8.24,9.26 8.90,9.10 9.56,8.85 10.23,9.09 10.89,9.06 11.55,9.08 12.21,9.05 12.87,9.02 13.54,8.80 14.20,8.87 14.86,8.75 15.52,8.88 16.18,8.85 16.85,8.74 17.51,8.64 18.17,8.39 18.83,8.51 19.49,8.29 20.15,8.12 20.82,8.07 21.48,7.92 22.14,7.92 22.80,7.61 23.46,7.39 24.13,7.30 24.79,7.21 25.45,7.21 26.11,7.06 26.77,6.92 27.44,6.40 28.10,6.20 28.76,6.05 29.42,6.05 30.08,5.62 30.75,5.69 31.41,5.34 32.07,4.91 32.73,4.64 33.39,4.44 34.05,4.28 34.72,4.13 35.38,3.85 36.04,3.46 36.70,3.11 37.36,2.99 38.03,2.95 38.69,2.91 39.35,3.03 40.01,2.99 40.67,2.68 41.34,2.29 42.00,2.13 42.66,2.21 43.32,1.97 43.98,2.29 44.65,2.29 45.31,2.13 45.97,1.86 46.63,1.97 47.29,1.93 47.95,1.78 48.62,1.74 49.28,2.13 49.94,1.82 50.60,1.62 51.26,1.62 51.93,1.58 52.59,1.54 53.25,1.97 53.91,1.93 54.57,1.93 55.24,1.90 55.90,2.01 56.56,2.29 57.22,2.60 57.88,3.07 58.55,3.58 59.21,3.31 59.87,2.76 60.53,2.80 61.19,2.87 61.85,2.87 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='8.24' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='52.59' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_left">Deaths</td>
<td class="gt_row gt_right">26</td>
<td class="gt_row gt_right">36</td>
<td class="gt_row gt_right">+37&percnt;</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,8.18 3.61,8.33 4.27,8.36 4.93,8.42 5.59,8.54 6.25,8.78 6.92,8.72 7.58,8.75 8.24,8.84 8.90,8.93 9.56,8.57 10.23,8.51 10.89,8.48 11.55,8.54 12.21,8.39 12.87,8.15 13.54,8.06 14.20,8.18 14.86,8.15 15.52,8.30 16.18,8.30 16.85,8.30 17.51,8.54 18.17,8.51 18.83,8.72 19.49,8.63 20.15,8.66 20.82,8.78 21.48,9.05 22.14,9.14 22.80,9.14 23.46,9.14 24.13,9.26 24.79,9.05 25.45,8.93 26.11,8.81 26.77,8.81 27.44,8.87 28.10,8.78 28.76,8.42 29.42,8.36 30.08,8.21 30.75,8.03 31.41,7.76 32.07,7.64 32.73,7.58 33.39,7.85 34.05,7.58 34.72,7.37 35.38,7.24 36.04,7.28 36.70,7.37 37.36,7.18 38.03,6.08 38.69,6.34 39.35,6.40 40.01,6.44 40.67,6.10 41.34,5.96 42.00,5.98 42.66,6.19 43.32,4.82 43.98,4.93 44.65,4.76 45.31,4.99 45.97,5.12 46.63,4.78 47.29,5.18 47.95,5.45 48.62,4.76 49.28,4.70 49.94,4.44 50.60,4.19 51.26,4.72 51.93,3.67 52.59,4.57 53.25,4.28 53.91,2.87 54.57,2.53 55.24,2.80 55.90,1.84 56.56,2.34 57.22,1.75 57.88,1.54 58.55,2.32 59.21,2.30 59.87,1.96 60.53,2.51 61.19,2.66 61.85,2.55 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='24.13' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='57.88' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_left gt_striped">New Vaccine Doses</td>
<td class="gt_row gt_right gt_striped">20K</td>
<td class="gt_row gt_right gt_striped">19K</td>
<td class="gt_row gt_right gt_striped">&minus;7&percnt;</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,1.54 3.61,1.83 4.27,1.81 4.93,1.73 5.59,1.89 6.25,2.44 6.92,4.70 7.58,7.62 8.24,7.60 8.90,8.41 9.56,9.02 10.23,9.15 10.89,9.13 11.55,9.26 12.21,9.23 12.87,9.05 13.54,8.15 14.20,7.78 14.86,7.89 15.52,8.05 16.18,8.07 16.85,8.07 17.51,8.18 18.17,8.44 18.83,8.34 19.49,8.23 20.15,8.34 20.82,8.39 21.48,8.57 22.14,8.70 22.80,8.89 23.46,8.81 24.13,7.94 24.79,7.73 25.45,6.81 26.11,6.55 26.77,6.33 27.44,6.10 28.10,6.12 28.76,6.94 29.42,6.89 30.08,7.57 30.75,6.91 31.41,6.83 32.07,6.91 32.73,7.28 33.39,6.23 34.05,5.44 34.72,4.81 35.38,4.12 36.04,3.25 36.70,3.12 37.36,2.70 38.03,3.57 38.69,4.33 39.35,4.97 40.01,6.12 40.67,6.99 41.34,6.99 42.00,7.02 42.66,7.10 43.32,6.44 43.98,6.02 44.65,5.04 45.31,3.44 45.97,3.02 46.63,2.99 47.29,2.96 47.95,3.60 48.62,3.99 49.28,4.97 49.94,6.57 50.60,7.28 51.26,7.91 51.93,7.97 52.59,8.10 53.25,8.23 53.91,8.39 54.57,8.47 55.24,8.26 55.90,7.86 56.56,8.05 57.22,8.13 57.88,8.20 58.55,8.23 59.21,8.23 59.87,8.36 60.53,8.34 61.19,8.49 61.85,8.49 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='11.55' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='2.95' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_left">Fully Vaccinated</td>
<td class="gt_row gt_right">6.8M</td>
<td class="gt_row gt_right">7.0M</td>
<td class="gt_row gt_right">+2&percnt;</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,9.26 3.61,9.26 4.27,9.10 4.93,9.03 5.59,8.88 6.25,8.80 6.92,8.65 7.58,8.57 8.24,8.57 8.90,8.57 9.56,8.49 10.23,8.34 10.89,8.26 11.55,8.19 12.21,8.11 12.87,8.04 13.54,7.96 14.20,7.81 14.86,7.73 15.52,7.65 16.18,7.58 16.85,7.50 17.51,7.50 18.17,7.42 18.83,7.35 19.49,7.27 20.15,7.19 20.82,7.12 21.48,7.04 22.14,7.04 22.80,7.04 23.46,6.89 24.13,6.74 24.79,6.66 25.45,6.51 26.11,6.43 26.77,6.43 27.44,6.35 28.10,6.28 28.76,6.20 29.42,6.13 30.08,6.05 30.75,5.90 31.41,5.82 32.07,5.82 32.73,5.74 33.39,5.51 34.05,5.36 34.72,5.21 35.38,4.98 36.04,4.83 36.70,4.75 37.36,4.67 38.03,4.60 38.69,4.45 39.35,4.37 40.01,4.29 40.67,4.22 41.34,4.14 42.00,4.06 42.66,3.99 43.32,3.91 43.98,3.76 44.65,3.61 45.31,3.30 45.97,3.22 46.63,3.15 47.29,2.99 47.95,2.92 48.62,2.84 49.28,2.76 49.94,2.69 50.60,2.69 51.26,2.61 51.93,2.54 52.59,2.46 53.25,2.38 53.91,2.31 54.57,2.23 55.24,2.15 55.90,2.08 56.56,2.00 57.22,1.92 57.88,1.85 58.55,1.77 59.21,1.70 59.87,1.70 60.53,1.54 61.19,1.54 61.85,1.54 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='2.95' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='3.61' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='60.53' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /><circle cx='61.19' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /><circle cx='61.85' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_left gt_striped">Pct. Fully Vaccinated</td>
<td class="gt_row gt_right gt_striped">54</td>
<td class="gt_row gt_right gt_striped">55</td>
<td class="gt_row gt_right gt_striped">+2&percnt;</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,9.26 3.61,9.26 4.27,9.16 4.93,9.06 5.59,8.87 6.25,8.77 6.92,8.67 7.58,8.57 8.24,8.57 8.90,8.57 9.56,8.48 10.23,8.38 10.89,8.28 11.55,8.18 12.21,8.09 12.87,8.09 13.54,7.99 14.20,7.89 14.86,7.79 15.52,7.69 16.18,7.60 16.85,7.50 17.51,7.50 18.17,7.40 18.83,7.30 19.49,7.21 20.15,7.21 20.82,7.11 21.48,7.11 22.14,7.01 22.80,7.01 23.46,6.91 24.13,6.82 24.79,6.72 25.45,6.52 26.11,6.52 26.77,6.43 27.44,6.33 28.10,6.33 28.76,6.23 29.42,6.13 30.08,6.03 30.75,5.94 31.41,5.84 32.07,5.84 32.73,5.74 33.39,5.55 34.05,5.35 34.72,5.16 35.38,4.96 36.04,4.86 36.70,4.77 37.36,4.67 38.03,4.57 38.69,4.47 39.35,4.37 40.01,4.28 40.67,4.28 41.34,4.18 42.00,4.08 42.66,3.98 43.32,3.89 43.98,3.79 44.65,3.59 45.31,3.30 45.97,3.20 46.63,3.11 47.29,3.01 47.95,2.91 48.62,2.81 49.28,2.81 49.94,2.71 50.60,2.71 51.26,2.62 51.93,2.52 52.59,2.42 53.25,2.32 53.91,2.32 54.57,2.23 55.24,2.23 55.90,2.13 56.56,2.03 57.22,1.93 57.88,1.84 58.55,1.74 59.21,1.74 59.87,1.64 60.53,1.54 61.19,1.54 61.85,1.54 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='2.95' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='3.61' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='60.53' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /><circle cx='61.19' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /><circle cx='61.85' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
  </tbody>
  <tfoot class="gt_sourcenotes">
    <tr>
      <td class="gt_sourcenote" colspan="5">Latest data: Thursday</td>
    </tr>
  </tfoot>
  
</table>
</div>

![Illinois CDC_vax_combined map](https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/IL_vax_combined.png)

![IL CDC_cases_transmission_IL map](https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/IL_cases_transmission.png)

Community transmission levels are calculated by the CDC based on new cases per capita in the past week and test positivity.

## United States

![USA Metrics](https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/US_facet.png)

<div id="usa_table" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
  <style>@import url("https://fonts.googleapis.com/css2?family=Lato:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap");
html {
  font-family: Lato, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#usa_table .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 12px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: 100%;
  border-top-style: solid;
  border-top-width: 3px;
  border-top-color: #FFFFFF;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#usa_table .gt_heading {
  background-color: #FFFFFF;
  text-align: left;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#usa_table .gt_title {
  color: #333333;
  font-size: 24px;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#usa_table .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 6px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#usa_table .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#usa_table .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#usa_table .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 80%;
  font-weight: bolder;
  text-transform: uppercase;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#usa_table .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 80%;
  font-weight: bolder;
  text-transform: uppercase;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#usa_table .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#usa_table .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#usa_table .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#usa_table .gt_group_heading {
  padding: 8px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 80%;
  font-weight: bolder;
  text-transform: uppercase;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
}

#usa_table .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 80%;
  font-weight: bolder;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#usa_table .gt_from_md > :first-child {
  margin-top: 0;
}

#usa_table .gt_from_md > :last-child {
  margin-bottom: 0;
}

#usa_table .gt_row {
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #F6F7F7;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#usa_table .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 80%;
  font-weight: bolder;
  text-transform: uppercase;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 12px;
}

#usa_table .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#usa_table .gt_first_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
}

#usa_table .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#usa_table .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#usa_table .gt_striped {
  background-color: #FAFAFA;
}

#usa_table .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#usa_table .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#usa_table .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding: 4px;
}

#usa_table .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#usa_table .gt_sourcenote {
  font-size: 12px;
  padding: 4px;
}

#usa_table .gt_left {
  text-align: left;
}

#usa_table .gt_center {
  text-align: center;
}

#usa_table .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#usa_table .gt_font_normal {
  font-weight: normal;
}

#usa_table .gt_font_bold {
  font-weight: bold;
}

#usa_table .gt_font_italic {
  font-style: italic;
}

#usa_table .gt_super {
  font-size: 65%;
}

#usa_table .gt_footnote_marks {
  font-style: italic;
  font-weight: normal;
  font-size: 65%;
}
</style>
  <table class="gt_table">
  
  <thead class="gt_col_headings">
    <tr>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">14 Days<br>Ago</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">Latest</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">14 Day<br>Trend</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">Past<br>90 Days</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td class="gt_row gt_left">Cases</td>
<td class="gt_row gt_right">147.0K</td>
<td class="gt_row gt_right">127.0K</td>
<td class="gt_row gt_right">&minus;14&percnt;</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,9.24 3.61,9.24 4.27,9.22 4.93,9.25 5.59,9.23 6.25,9.22 6.92,9.18 7.58,9.21 8.24,9.22 8.90,9.26 9.56,9.15 10.23,9.10 10.89,9.07 11.55,8.94 12.21,8.91 12.87,8.87 13.54,8.70 14.20,8.67 14.86,8.61 15.52,8.53 16.18,8.32 16.85,8.30 17.51,8.24 18.17,8.12 18.83,8.01 19.49,7.89 20.15,7.72 20.82,7.43 21.48,7.34 22.14,7.30 22.80,7.06 23.46,6.88 24.13,6.75 24.79,6.58 25.45,6.10 26.11,6.05 26.77,5.93 27.44,5.70 28.10,5.46 28.76,5.27 29.42,5.06 30.08,4.58 30.75,4.48 31.41,4.58 32.07,4.19 32.73,4.05 33.39,3.66 34.05,3.42 34.72,3.62 35.38,3.62 36.04,3.47 36.70,3.23 37.36,2.99 38.03,2.99 38.69,2.89 39.35,2.80 40.01,2.65 40.67,2.70 41.34,2.60 42.00,2.56 42.66,2.46 43.32,2.27 43.98,2.31 44.65,2.36 45.31,2.31 45.97,2.17 46.63,2.03 47.29,1.83 47.95,1.88 48.62,1.93 49.28,1.93 49.94,1.93 50.60,3.18 51.26,2.46 51.93,2.60 52.59,2.75 53.25,2.80 53.91,2.80 54.57,2.80 55.24,1.54 55.90,2.46 56.56,2.56 57.22,2.56 57.88,2.70 58.55,2.75 59.21,2.75 59.87,3.13 60.53,3.28 61.19,3.52 61.85,3.71 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='8.90' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='55.24' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_left gt_striped">Hospitalized</td>
<td class="gt_row gt_right gt_striped">96.5K</td>
<td class="gt_row gt_right gt_striped">80.9K</td>
<td class="gt_row gt_right gt_striped">&minus;16&percnt;</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,9.24 3.61,9.26 4.27,9.26 4.93,9.23 5.59,9.21 6.25,9.19 6.92,9.19 7.58,9.17 8.24,9.19 8.90,9.18 9.56,9.15 10.23,9.10 10.89,9.03 11.55,9.00 12.21,8.97 12.87,8.94 13.54,8.88 14.20,8.80 14.86,8.72 15.52,8.64 16.18,8.56 16.85,8.47 17.51,8.41 18.17,8.32 18.83,8.17 19.49,8.04 20.15,7.92 20.82,7.78 21.48,7.63 22.14,7.52 22.80,7.35 23.46,7.14 24.13,6.91 24.79,6.71 25.45,6.56 26.11,6.35 26.77,6.18 27.44,5.99 28.10,5.70 28.76,5.45 29.42,5.24 30.08,5.00 30.75,4.77 31.41,4.64 32.07,4.39 32.73,4.08 33.39,3.84 34.05,3.63 34.72,3.43 35.38,3.29 36.04,3.20 36.70,3.02 37.36,2.77 38.03,2.56 38.69,2.39 39.35,2.32 40.01,2.24 40.67,2.23 41.34,2.06 42.00,1.84 42.66,1.72 43.32,1.72 43.98,1.70 44.65,1.70 45.31,1.81 45.97,1.71 46.63,1.61 47.29,1.56 47.95,1.54 48.62,1.56 49.28,1.65 49.94,1.80 50.60,1.79 51.26,1.73 51.93,1.65 52.59,1.68 53.25,1.75 53.91,1.86 54.57,2.09 55.24,2.13 55.90,2.07 56.56,2.21 57.22,2.30 57.88,2.42 58.55,2.57 59.21,2.78 59.87,2.84 60.53,2.84 61.19,2.94 61.85,3.08 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='3.61' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='4.27' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='47.95' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_left">Deaths</td>
<td class="gt_row gt_right">1.6K</td>
<td class="gt_row gt_right">2.0K</td>
<td class="gt_row gt_right">+29&percnt;</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,8.93 3.61,8.94 4.27,9.01 4.93,9.02 5.59,9.10 6.25,9.12 6.92,9.13 7.58,9.17 8.24,9.19 8.90,9.26 9.56,9.24 10.23,9.22 10.89,9.25 11.55,9.23 12.21,9.19 12.87,9.20 13.54,9.08 14.20,9.07 14.86,9.05 15.52,9.03 16.18,9.10 16.85,9.14 17.51,9.07 18.17,9.09 18.83,9.13 19.49,9.12 20.15,9.10 20.82,9.02 21.48,8.99 22.14,9.05 22.80,9.01 23.46,8.92 24.13,8.89 24.79,8.89 25.45,8.67 26.11,8.65 26.77,8.63 27.44,8.52 28.10,8.43 28.76,8.37 29.42,8.24 30.08,8.08 30.75,8.04 31.41,8.01 32.07,7.98 32.73,7.56 33.39,7.64 34.05,7.37 34.72,7.42 35.38,7.41 36.04,7.37 36.70,7.04 37.36,7.21 38.03,6.72 38.69,6.27 39.35,6.02 40.01,5.88 40.67,5.84 41.34,5.67 42.00,5.42 42.66,5.21 43.32,4.91 43.98,4.79 44.65,4.79 45.31,4.70 45.97,4.49 46.63,4.49 47.29,4.20 47.95,3.73 48.62,3.65 49.28,3.65 49.94,3.61 50.60,4.32 51.26,3.90 51.93,3.82 52.59,3.61 53.25,3.40 53.91,3.27 54.57,3.31 55.24,2.34 55.90,2.55 56.56,2.26 57.22,2.17 57.88,2.13 58.55,2.05 59.21,2.05 59.87,1.96 60.53,1.63 61.19,1.54 61.85,1.71 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='8.90' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='61.19' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_left gt_striped">New Vaccine Doses</td>
<td class="gt_row gt_right gt_striped">786.0K</td>
<td class="gt_row gt_right gt_striped">683.0K</td>
<td class="gt_row gt_right gt_striped">&minus;13&percnt;</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,6.64 3.61,6.00 4.27,5.14 4.93,4.98 5.59,3.68 6.25,2.17 6.92,1.92 7.58,1.54 8.24,2.55 8.90,3.96 9.56,4.74 10.23,6.41 10.89,8.10 11.55,8.16 12.21,9.17 12.87,9.26 13.54,9.01 14.20,8.93 14.86,8.74 15.52,8.97 16.18,9.09 16.85,9.03 17.51,9.18 18.17,9.08 18.83,9.26 19.49,9.14 20.15,8.97 20.82,8.88 21.48,8.80 22.14,8.30 22.80,8.51 23.46,8.24 24.13,7.99 24.79,7.90 25.45,7.43 26.11,7.37 26.77,7.29 27.44,7.17 28.10,7.07 28.76,7.12 29.42,6.84 30.08,6.90 30.75,6.68 31.41,6.75 32.07,6.63 32.73,6.34 33.39,6.46 34.05,6.84 34.72,6.66 35.38,6.39 36.04,6.59 36.70,6.00 37.36,6.04 38.03,5.93 38.69,5.28 39.35,5.10 40.01,5.00 40.67,4.45 41.34,4.89 42.00,4.81 42.66,4.41 43.32,4.59 43.98,4.49 44.65,4.44 45.31,4.48 45.97,4.34 46.63,4.32 47.29,4.06 47.95,4.22 48.62,3.63 49.28,3.81 49.94,4.63 50.60,4.97 51.26,5.24 51.93,5.43 52.59,5.75 53.25,6.55 53.91,6.68 54.57,6.20 55.24,6.04 55.90,5.82 56.56,6.04 57.22,5.90 57.88,5.88 58.55,5.86 59.21,6.04 59.87,5.92 60.53,6.06 61.19,6.29 61.85,7.04 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='12.87' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='18.83' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='7.58' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_left">Fully Vaccinated</td>
<td class="gt_row gt_right">177.0M</td>
<td class="gt_row gt_right">183.0M</td>
<td class="gt_row gt_right">+3&percnt;</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,9.26 3.61,9.01 4.27,8.76 4.93,8.76 5.59,8.51 6.25,8.26 6.92,8.26 7.58,8.01 8.24,8.01 8.90,8.01 9.56,7.76 10.23,7.76 10.89,7.76 11.55,7.52 12.21,7.52 12.87,7.52 13.54,7.52 14.20,7.27 14.86,7.27 15.52,7.27 16.18,7.02 16.85,7.02 17.51,7.02 18.17,7.02 18.83,6.77 19.49,6.77 20.15,6.77 20.82,6.77 21.48,6.52 22.14,6.52 22.80,6.52 23.46,6.52 24.13,6.27 24.79,6.27 25.45,6.27 26.11,6.27 26.77,6.02 27.44,6.02 28.10,6.02 28.76,6.02 29.42,5.77 30.08,5.77 30.75,5.77 31.41,5.77 32.07,5.52 32.73,5.52 33.39,5.52 34.05,5.52 34.72,5.28 35.38,5.28 36.04,5.28 36.70,5.03 37.36,5.03 38.03,5.03 38.69,4.78 39.35,4.78 40.01,4.78 40.67,4.53 41.34,4.53 42.00,4.53 42.66,4.28 43.32,4.28 43.98,4.03 44.65,4.03 45.31,3.78 45.97,3.78 46.63,3.78 47.29,3.53 47.95,3.53 48.62,3.28 49.28,3.28 49.94,3.28 50.60,3.28 51.26,3.04 51.93,3.04 52.59,3.04 53.25,2.79 53.91,2.79 54.57,2.54 55.24,2.54 55.90,2.54 56.56,2.29 57.22,2.29 57.88,2.04 58.55,2.04 59.21,2.04 59.87,1.79 60.53,1.79 61.19,1.79 61.85,1.54 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='2.95' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='61.85' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_left gt_striped">Pct. Fully Vaccinated</td>
<td class="gt_row gt_right gt_striped">52.8</td>
<td class="gt_row gt_right gt_striped">54.3</td>
<td class="gt_row gt_right gt_striped">+3&percnt;</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,9.26 3.61,9.00 4.27,8.83 4.93,8.75 5.59,8.58 6.25,8.24 6.92,8.16 7.58,7.99 8.24,7.90 8.90,7.90 9.56,7.82 10.23,7.73 10.89,7.65 11.55,7.56 12.21,7.48 12.87,7.39 13.54,7.39 14.20,7.31 14.86,7.22 15.52,7.14 16.18,7.05 16.85,6.97 17.51,6.97 18.17,6.88 18.83,6.80 19.49,6.80 20.15,6.71 20.82,6.63 21.48,6.54 22.14,6.46 22.80,6.46 23.46,6.37 24.13,6.37 24.79,6.29 25.45,6.21 26.11,6.12 26.77,6.04 27.44,6.04 28.10,5.95 28.76,5.87 29.42,5.87 30.08,5.78 30.75,5.70 31.41,5.61 32.07,5.53 32.73,5.53 33.39,5.44 34.05,5.36 34.72,5.27 35.38,5.19 36.04,5.10 36.70,5.02 37.36,5.02 38.03,4.93 38.69,4.85 39.35,4.68 40.01,4.59 40.67,4.51 41.34,4.43 42.00,4.34 42.66,4.26 43.32,4.17 43.98,4.09 44.65,3.92 45.31,3.83 45.97,3.75 46.63,3.66 47.29,3.58 47.95,3.49 48.62,3.32 49.28,3.24 49.94,3.24 50.60,3.24 51.26,3.07 51.93,2.90 52.59,2.81 53.25,2.73 53.91,2.64 54.57,2.56 55.24,2.48 55.90,2.39 56.56,2.31 57.22,2.14 57.88,2.05 58.55,1.97 59.21,1.88 59.87,1.80 60.53,1.71 61.19,1.63 61.85,1.54 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='2.95' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='61.85' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
  </tbody>
  <tfoot class="gt_sourcenotes">
    <tr>
      <td class="gt_sourcenote" colspan="5">Latest data: Thursday</td>
    </tr>
  </tfoot>
  
</table>
</div>

![USA fully vaccinated map](https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/usa_vax_total.png)

![USA transmission levels map](https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/usa_transmission.png)

## World

![World Metrics](https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/world_facet.png)

<div id="world_table" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
  <style>@import url("https://fonts.googleapis.com/css2?family=Lato:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap");
html {
  font-family: Lato, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#world_table .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 12px;
  font-weight: normal;
  font-style: normal;
  background-color: #FFFFFF;
  width: 100%;
  border-top-style: solid;
  border-top-width: 3px;
  border-top-color: #FFFFFF;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

#world_table .gt_heading {
  background-color: #FFFFFF;
  text-align: left;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#world_table .gt_title {
  color: #333333;
  font-size: 24px;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#world_table .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 6px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#world_table .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#world_table .gt_col_headings {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

#world_table .gt_col_heading {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 80%;
  font-weight: bolder;
  text-transform: uppercase;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  overflow-x: hidden;
}

#world_table .gt_column_spanner_outer {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 80%;
  font-weight: bolder;
  text-transform: uppercase;
  padding-top: 0;
  padding-bottom: 0;
  padding-left: 4px;
  padding-right: 4px;
}

#world_table .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#world_table .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#world_table .gt_column_spanner {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

#world_table .gt_group_heading {
  padding: 8px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 80%;
  font-weight: bolder;
  text-transform: uppercase;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
}

#world_table .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 80%;
  font-weight: bolder;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

#world_table .gt_from_md > :first-child {
  margin-top: 0;
}

#world_table .gt_from_md > :last-child {
  margin-bottom: 0;
}

#world_table .gt_row {
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: solid;
  border-top-width: 1px;
  border-top-color: #F6F7F7;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

#world_table .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 80%;
  font-weight: bolder;
  text-transform: uppercase;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 12px;
}

#world_table .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#world_table .gt_first_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
}

#world_table .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#world_table .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#world_table .gt_striped {
  background-color: #FAFAFA;
}

#world_table .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#world_table .gt_footnotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#world_table .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding: 4px;
}

#world_table .gt_sourcenotes {
  color: #333333;
  background-color: #FFFFFF;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
}

#world_table .gt_sourcenote {
  font-size: 12px;
  padding: 4px;
}

#world_table .gt_left {
  text-align: left;
}

#world_table .gt_center {
  text-align: center;
}

#world_table .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#world_table .gt_font_normal {
  font-weight: normal;
}

#world_table .gt_font_bold {
  font-weight: bold;
}

#world_table .gt_font_italic {
  font-style: italic;
}

#world_table .gt_super {
  font-size: 65%;
}

#world_table .gt_footnote_marks {
  font-style: italic;
  font-weight: normal;
  font-size: 65%;
}
</style>
  <table class="gt_table">
  
  <thead class="gt_col_headings">
    <tr>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">14 Days<br>Ago</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">Latest</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">14 Day<br>Trend</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">Past<br>90 Days</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td class="gt_row gt_left">Cases</td>
<td class="gt_row gt_right">582.0K</td>
<td class="gt_row gt_right">506.0K</td>
<td class="gt_row gt_right">&minus;13&percnt;</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,9.26 3.61,9.23 4.27,9.10 4.93,9.05 5.59,9.20 6.25,9.07 6.92,8.99 7.58,8.97 8.24,8.89 8.90,8.75 9.56,8.46 10.23,8.20 10.89,8.06 11.55,7.80 12.21,7.61 12.87,7.45 13.54,7.22 14.20,6.95 14.86,6.66 15.52,6.31 16.18,5.97 16.85,5.78 17.51,5.57 18.17,5.33 18.83,5.31 19.49,5.23 20.15,5.25 20.82,4.91 21.48,4.91 22.14,4.86 22.80,4.70 23.46,4.41 24.13,4.09 24.79,3.74 25.45,3.58 26.11,3.45 26.77,3.32 27.44,3.16 28.10,3.05 28.76,2.95 29.42,2.82 30.08,2.47 30.75,2.31 31.41,2.47 32.07,2.18 32.73,2.13 33.39,1.94 34.05,1.83 34.72,1.91 35.38,1.97 36.04,1.89 36.70,1.78 37.36,1.68 38.03,1.68 38.69,1.65 39.35,1.70 40.01,1.68 40.67,1.75 41.34,1.65 42.00,1.62 42.66,1.62 43.32,1.54 43.98,1.73 44.65,1.70 45.31,1.70 45.97,1.75 46.63,2.02 47.29,2.02 47.95,2.26 48.62,2.36 49.28,2.58 49.94,2.66 50.60,3.58 51.26,3.13 51.93,3.50 52.59,3.66 53.25,3.98 53.91,4.14 54.57,4.38 55.24,3.72 55.90,4.43 56.56,4.67 57.22,4.91 57.88,5.04 58.55,4.75 59.21,4.75 59.87,5.02 60.53,5.33 61.19,5.41 61.85,5.68 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='2.95' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='43.32' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_left gt_striped">Deaths</td>
<td class="gt_row gt_right gt_striped">9.1K</td>
<td class="gt_row gt_right gt_striped">8.3K</td>
<td class="gt_row gt_right gt_striped">&minus;9&percnt;</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,7.66 3.61,7.94 4.27,8.09 4.93,8.49 5.59,8.64 6.25,8.61 6.92,8.98 7.58,9.26 8.24,9.01 8.90,8.70 9.56,8.49 10.23,8.77 10.89,8.70 11.55,8.64 12.21,8.73 12.87,8.37 13.54,8.00 14.20,8.09 14.86,8.06 15.52,8.21 16.18,8.06 16.85,7.87 17.51,8.09 18.17,8.55 18.83,6.95 19.49,6.92 20.15,6.80 20.82,7.23 21.48,6.28 22.14,6.18 22.80,5.88 23.46,6.80 24.13,6.12 24.79,5.23 25.45,4.37 26.11,4.59 26.77,4.62 27.44,4.49 28.10,4.28 28.76,4.16 29.42,4.06 30.08,3.66 30.75,3.72 31.41,3.66 32.07,3.39 32.73,2.68 33.39,2.93 34.05,3.08 34.72,3.11 35.38,3.08 36.04,3.17 36.70,2.65 37.36,3.20 38.03,2.80 38.69,2.46 39.35,2.46 40.01,2.37 40.67,2.19 41.34,2.16 42.00,1.85 42.66,1.85 43.32,1.54 43.98,1.85 44.65,1.85 45.31,2.34 45.97,2.59 46.63,3.48 47.29,2.99 47.95,3.17 48.62,2.99 49.28,3.29 49.94,3.42 50.60,4.12 51.26,3.48 51.93,4.59 52.59,4.80 53.25,5.48 53.91,5.23 54.57,5.66 55.24,5.17 55.90,5.48 56.56,5.32 57.22,5.45 57.88,5.66 58.55,6.37 59.21,6.15 59.87,6.52 60.53,6.83 61.19,6.95 61.85,7.29 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='7.58' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='43.32' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_left">New Vaccine Doses</td>
<td class="gt_row gt_right">32.2M</td>
<td class="gt_row gt_right">27.9M</td>
<td class="gt_row gt_right">&minus;13&percnt;</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,1.94 3.61,1.54 4.27,1.94 4.93,2.04 5.59,2.49 6.25,2.54 6.92,3.30 7.58,3.85 8.24,4.70 8.90,5.05 9.56,5.80 10.23,6.00 10.89,6.65 11.55,7.10 12.21,7.50 12.87,7.90 13.54,8.05 14.20,7.90 14.86,7.65 15.52,7.90 16.18,7.50 16.85,7.40 17.51,7.60 18.17,7.35 18.83,7.40 19.49,7.75 20.15,7.45 20.82,7.15 21.48,7.05 22.14,6.60 22.80,5.95 23.46,5.35 24.13,4.70 24.79,4.20 25.45,3.95 26.11,3.65 26.77,2.80 27.44,3.15 28.10,2.09 28.76,1.89 29.42,2.39 30.08,2.64 30.75,2.69 31.41,3.25 32.07,2.95 32.73,4.10 33.39,4.60 34.05,5.05 34.72,4.95 35.38,4.80 36.04,5.15 36.70,5.05 37.36,5.10 38.03,5.15 38.69,4.95 39.35,5.10 40.01,5.40 40.67,5.05 41.34,5.85 42.00,5.50 42.66,5.00 43.32,4.30 43.98,3.45 44.65,3.10 45.31,2.44 45.97,2.19 46.63,2.64 47.29,2.29 47.95,3.20 48.62,4.90 49.28,5.55 49.94,6.20 50.60,6.75 51.26,6.90 51.93,7.50 52.59,7.10 53.25,7.00 53.91,6.40 54.57,6.15 55.24,5.95 55.90,6.50 56.56,7.15 57.22,7.50 57.88,7.90 58.55,7.55 59.21,8.11 59.87,8.36 60.53,8.41 61.19,8.86 61.85,9.26 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='61.85' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='3.61' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_left gt_striped">Fully Vaccinated</td>
<td class="gt_row gt_right gt_striped">2.3B</td>
<td class="gt_row gt_right gt_striped">2.5B</td>
<td class="gt_row gt_right gt_striped">+9&percnt;</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,9.26 3.61,9.22 4.27,9.19 4.93,9.15 5.59,9.12 6.25,9.09 6.92,9.06 7.58,9.03 8.24,8.99 8.90,8.96 9.56,8.92 10.23,8.89 10.89,8.84 11.55,8.81 12.21,8.78 12.87,8.75 13.54,8.71 14.20,8.68 14.86,8.63 15.52,8.59 16.18,8.56 16.85,8.53 17.51,8.50 18.17,8.46 18.83,8.43 19.49,8.39 20.15,8.35 20.82,8.32 21.48,8.29 22.14,8.25 22.80,8.20 23.46,8.16 24.13,8.12 24.79,8.08 25.45,8.04 26.11,8.01 26.77,7.98 27.44,7.95 28.10,7.90 28.76,7.86 29.42,7.83 30.08,7.80 30.75,7.76 31.41,7.73 32.07,7.67 32.73,7.62 33.39,7.58 34.05,4.44 34.72,4.40 35.38,4.36 36.04,4.32 36.70,4.29 37.36,4.25 38.03,4.21 38.69,4.17 39.35,4.13 40.01,4.09 40.67,4.05 41.34,4.01 42.00,3.97 42.66,3.93 43.32,3.41 43.98,3.37 44.65,3.33 45.31,3.29 45.97,3.21 46.63,3.17 47.29,3.13 47.95,3.09 48.62,3.05 49.28,3.01 49.94,2.97 50.60,2.62 51.26,2.54 51.93,2.50 52.59,2.42 53.25,2.38 53.91,2.34 54.57,2.26 55.24,2.22 55.90,2.18 56.56,1.98 57.22,1.90 57.88,1.86 58.55,1.78 59.21,1.74 59.87,1.70 60.53,1.62 61.19,1.62 61.85,1.54 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='2.95' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='61.85' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_left">Pct. Fully Vaccinated</td>
<td class="gt_row gt_right">29.5</td>
<td class="gt_row gt_right">32.2</td>
<td class="gt_row gt_right">+9&percnt;</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,9.26 3.61,9.22 4.27,9.19 4.93,9.16 5.59,9.13 6.25,9.09 6.92,9.06 7.58,9.03 8.24,9.00 8.90,8.96 9.56,8.92 10.23,8.89 10.89,8.84 11.55,8.81 12.21,8.78 12.87,8.76 13.54,8.71 14.20,8.68 14.86,8.63 15.52,8.59 16.18,8.55 16.85,8.52 17.51,8.51 18.17,8.44 18.83,8.41 19.49,8.38 20.15,8.35 20.82,8.32 21.48,8.29 22.14,8.26 22.80,8.19 23.46,8.16 24.13,8.13 24.79,8.07 25.45,8.04 26.11,8.01 26.77,7.97 27.44,7.94 28.10,7.91 28.76,7.85 29.42,7.82 30.08,7.79 30.75,7.75 31.41,7.72 32.07,7.66 32.73,7.63 33.39,7.57 34.05,4.43 34.72,4.40 35.38,4.37 36.04,4.33 36.70,4.30 37.36,4.24 38.03,4.21 38.69,4.15 39.35,4.12 40.01,4.08 40.67,4.05 41.34,4.02 42.00,3.96 42.66,3.90 43.32,3.43 43.98,3.36 44.65,3.30 45.31,3.27 45.97,3.21 46.63,3.17 47.29,3.11 47.95,3.05 48.62,3.02 49.28,2.99 49.94,2.95 50.60,2.58 51.26,2.55 51.93,2.48 52.59,2.39 53.25,2.36 53.91,2.30 54.57,2.26 55.24,2.20 55.90,2.17 56.56,1.95 57.22,1.89 57.88,1.86 58.55,1.76 59.21,1.73 59.87,1.67 60.53,1.64 61.19,1.61 61.85,1.54 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='2.95' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='61.85' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
  </tbody>
  <tfoot class="gt_sourcenotes">
    <tr>
      <td class="gt_sourcenote" colspan="5">Latest data: Thursday</td>
    </tr>
  </tfoot>
  
</table>
</div>

## Case Acceleration

As of Thursday, the 14-day percent change in average new cases was:
  
- -42% in Champaign County
- -17% in Illinois
- -14% in the United States
- -13% worldwide

![Case Acceleration](https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/new_cases_change_facet.png)

This chart measures how quickly the average number of new cases is changing, or roughly, the slope of the new-cases charts above. If the case acceleration is positive, then the average number of new cases is increasing. If it is negative, then the average number of new cases is decreasing.

## Death Acceleration

As of Thursday, the 14-day percent change in average new deaths was:
  
- 36% in Illinois
- 29% in the United States
- -9% worldwide

![Death Acceleration](https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/new_deaths_change_facet.png)

This chart measures how quickly the average number of new deaths is changing, or roughly, the slope of the new-deaths charts above. If the death acceleration is positive, then the average number of new deaths is increasing. If it is negative, then the average number of new deaths is decreasing.


