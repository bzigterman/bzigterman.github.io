---
layout: page
title: COVID-19
permalink: /charts/covid
---

During the COVID-19 pandemic, I've been making charts with data from the [Champaign-Urbana Public Health District](https://www.c-uphd.org/champaign-urbana-illinois-coronavirus-information.html), the [University of Illinois](https://go.illinois.edu/COVIDTestingData), the [Illinois Department of Public Health](http://www.dph.illinois.gov/covid19), the [CDC](https://covid.cdc.gov/covid-data-tracker/), the [U.S. Department of Health and Human Services](https://healthdata.gov/Hospital/COVID-19-Reported-Patient-Impact-and-Hospital-Capa/anag-cw7u), [Our World in Data](https://github.com/owid/covid-19-data/tree/master/public/data) and the [COVID-19 Data Repository by the Center for Systems Science and Engineering (CSSE) at Johns Hopkins University](https://github.com/CSSEGISandData/COVID-19).

## Champaign County

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
<td class="gt_row gt_right">52</td>
<td class="gt_row gt_right">&minus;43&percnt;</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,9.21 3.61,9.23 4.27,9.18 4.93,9.19 5.59,9.16 6.25,9.16 6.92,9.15 7.58,9.20 8.24,9.20 8.90,9.25 9.56,9.26 10.23,9.24 10.89,9.15 11.55,9.17 12.21,9.08 12.87,9.01 13.54,8.94 14.20,8.91 14.86,8.83 15.52,8.87 16.18,8.77 16.85,8.81 17.51,8.61 18.17,8.55 18.83,8.29 19.49,8.34 20.15,7.91 20.82,7.85 21.48,7.51 22.14,7.67 22.80,7.69 23.46,7.54 24.13,7.30 24.79,7.18 25.45,7.02 26.11,7.02 26.77,6.73 27.44,6.54 28.10,6.39 28.76,6.22 29.42,6.11 30.08,5.82 30.75,5.45 31.41,5.36 32.07,4.95 32.73,4.79 33.39,4.53 34.05,4.66 34.72,4.44 35.38,4.52 36.04,4.44 36.70,4.58 37.36,4.73 38.03,4.11 38.69,4.31 39.35,4.26 40.01,3.96 40.67,3.97 41.34,3.77 42.00,3.74 42.66,4.08 43.32,3.81 43.98,3.82 44.65,3.96 45.31,3.70 45.97,3.59 46.63,3.17 47.29,2.61 47.95,2.14 48.62,1.54 49.28,1.54 49.94,1.94 50.60,2.28 51.26,2.84 51.93,3.42 52.59,3.42 53.25,3.88 53.91,4.01 54.57,3.84 55.24,4.28 55.90,4.08 56.56,4.48 57.22,4.90 57.88,5.55 58.55,5.61 59.21,5.85 59.87,5.51 60.53,5.91 61.19,5.83 61.85,6.05 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='9.56' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='48.62' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /><circle cx='49.28' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
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
<td class="gt_row gt_right gt_striped">297</td>
<td class="gt_row gt_right gt_striped">&minus;9&percnt;</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,2.18 3.61,2.31 4.27,1.79 4.93,1.67 5.59,1.54 6.25,1.92 6.92,4.71 7.58,7.38 8.24,7.38 8.90,8.51 9.56,9.26 10.23,9.11 10.89,9.00 11.55,9.03 12.21,9.07 12.87,8.81 13.54,7.84 14.20,7.34 14.86,7.75 15.52,7.95 16.18,8.05 16.85,7.93 17.51,8.06 18.17,7.71 18.83,7.41 19.49,7.38 20.15,7.49 20.82,7.24 21.48,7.28 22.14,7.39 22.80,8.01 23.46,8.01 24.13,7.45 24.79,7.23 25.45,7.30 26.11,7.23 26.77,7.02 27.44,7.00 28.10,7.15 28.76,7.67 29.42,7.69 30.08,7.73 30.75,7.71 31.41,7.73 32.07,7.73 32.73,7.95 33.39,7.73 34.05,7.47 34.72,7.08 35.38,6.85 36.04,6.63 36.70,6.54 37.36,6.03 38.03,5.87 38.69,5.85 39.35,6.00 40.01,6.05 40.67,6.11 41.34,5.98 42.00,5.85 42.66,5.98 43.32,6.31 43.98,6.24 44.65,6.16 45.31,6.07 45.97,5.81 46.63,5.98 47.29,5.75 47.95,5.57 48.62,5.51 49.28,5.68 49.94,5.70 50.60,6.50 51.26,7.00 51.93,7.26 52.59,7.24 53.25,7.47 53.91,7.60 54.57,7.84 55.24,7.24 55.90,7.13 56.56,7.17 57.22,7.13 57.88,7.30 58.55,7.34 59.21,7.39 59.87,7.73 60.53,7.82 61.19,7.82 61.85,7.82 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='9.56' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='5.59' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_left">Fully Vaccinated</td>
<td class="gt_row gt_right">111,000</td>
<td class="gt_row gt_right">112,000</td>
<td class="gt_row gt_right">+1&percnt;</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,9.26 3.61,9.20 4.27,9.08 4.93,8.96 5.59,8.78 6.25,8.66 6.92,8.66 7.58,8.66 8.24,8.66 8.90,8.66 9.56,8.66 10.23,8.07 10.89,8.07 11.55,8.07 12.21,8.07 12.87,8.07 13.54,7.48 14.20,7.48 14.86,7.48 15.52,7.48 16.18,7.48 16.85,7.48 17.51,7.48 18.17,6.88 18.83,6.88 19.49,6.88 20.15,6.88 20.82,6.88 21.48,6.29 22.14,6.29 22.80,6.29 23.46,6.29 24.13,6.29 24.79,6.29 25.45,6.29 26.11,6.29 26.77,5.70 27.44,5.70 28.10,5.70 28.76,5.70 29.42,5.70 30.08,5.70 30.75,5.70 31.41,5.70 32.07,5.10 32.73,5.10 33.39,5.10 34.05,5.10 34.72,5.10 35.38,5.10 36.04,5.10 36.70,4.51 37.36,4.51 38.03,4.51 38.69,4.51 39.35,4.51 40.01,3.92 40.67,3.92 41.34,3.92 42.00,3.92 42.66,3.92 43.32,3.92 43.98,3.32 44.65,3.32 45.31,3.32 45.97,3.32 46.63,3.32 47.29,3.32 47.95,3.32 48.62,2.73 49.28,2.73 49.94,2.73 50.60,2.73 51.26,2.73 51.93,2.73 52.59,2.14 53.25,2.14 53.91,2.14 54.57,2.14 55.24,2.14 55.90,2.14 56.56,2.14 57.22,1.54 57.88,1.54 58.55,1.54 59.21,1.54 59.87,1.54 60.53,1.54 61.19,1.54 61.85,1.54 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='2.95' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='57.22' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /><circle cx='57.88' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /><circle cx='58.55' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /><circle cx='59.21' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /><circle cx='59.87' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /><circle cx='60.53' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /><circle cx='61.19' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /><circle cx='61.85' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_left gt_striped">Pct. Fully Vaccinated</td>
<td class="gt_row gt_right gt_striped">53</td>
<td class="gt_row gt_right gt_striped">54</td>
<td class="gt_row gt_right gt_striped">+2&percnt;</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,9.26 3.61,9.26 4.27,9.13 4.93,9.01 5.59,8.89 6.25,8.77 6.92,8.64 7.58,8.52 8.24,8.52 8.90,8.52 9.56,8.52 10.23,8.40 10.89,8.16 11.55,8.03 12.21,8.03 12.87,7.91 13.54,7.79 14.20,7.79 14.86,7.67 15.52,7.54 16.18,7.42 16.85,7.42 17.51,7.30 18.17,7.18 18.83,7.05 19.49,6.93 20.15,6.81 20.82,6.69 21.48,6.69 22.14,6.69 22.80,6.56 23.46,6.44 24.13,6.32 24.79,6.32 25.45,6.20 26.11,6.20 26.77,6.07 27.44,6.07 28.10,5.95 28.76,5.83 29.42,5.83 30.08,5.71 30.75,5.58 31.41,5.58 32.07,5.46 32.73,5.46 33.39,5.34 34.05,5.22 34.72,5.09 35.38,4.97 36.04,4.97 36.70,4.85 37.36,4.73 38.03,4.60 38.69,4.48 39.35,4.36 40.01,4.36 40.67,4.24 41.34,4.24 42.00,3.99 42.66,3.99 43.32,3.87 43.98,3.75 44.65,3.62 45.31,3.62 45.97,3.50 46.63,3.38 47.29,3.26 47.95,3.26 48.62,3.01 49.28,3.01 49.94,2.89 50.60,2.89 51.26,2.77 51.93,2.64 52.59,2.64 53.25,2.52 53.91,2.40 54.57,2.40 55.24,2.28 55.90,2.16 56.56,2.03 57.22,1.91 57.88,1.79 58.55,1.79 59.21,1.67 59.87,1.67 60.53,1.54 61.19,1.54 61.85,1.54 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='2.95' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='3.61' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='60.53' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /><circle cx='61.19' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /><circle cx='61.85' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
  </tbody>
  <tfoot class="gt_sourcenotes">
    <tr>
      <td class="gt_sourcenote" colspan="5">Latest data: Thursday</td>
    </tr>
  </tfoot>
  
</table>
</div>

![Champaign County Metrics](https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/Champaign_facet.png)

Charts for Champaign County are posted weekdays on Twitter [@ChampaignCovid](https://twitter.com/ChampaignCovid).

## Illinois

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
<td class="gt_row gt_right">4.0K</td>
<td class="gt_row gt_right">3.1K</td>
<td class="gt_row gt_right">&minus;23&percnt;</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,9.26 3.61,9.26 4.27,9.08 4.93,9.08 5.59,8.05 6.25,8.05 6.92,8.05 7.58,8.05 8.24,7.74 8.90,7.74 9.56,7.12 10.23,7.12 10.89,6.89 11.55,6.89 12.21,6.94 12.87,6.94 13.54,6.49 14.20,6.49 14.86,6.58 15.52,6.58 16.18,6.54 16.85,6.54 17.51,5.60 18.17,5.60 18.83,5.51 19.49,5.51 20.15,5.91 20.82,5.91 21.48,5.56 22.14,5.56 22.80,5.96 23.46,5.96 24.13,5.60 24.79,5.60 25.45,5.02 26.11,5.02 26.77,5.02 27.44,5.02 28.10,5.51 28.76,5.51 29.42,4.08 30.08,4.08 30.75,4.49 31.41,4.49 32.07,3.28 32.73,3.28 33.39,2.79 34.05,2.79 34.72,2.70 35.38,2.70 36.04,2.03 36.70,2.03 37.36,1.54 38.03,1.54 38.69,2.43 39.35,2.43 40.01,2.39 40.67,2.39 41.34,3.86 42.00,3.86 42.66,4.62 43.32,4.62 43.98,4.31 44.65,4.31 45.31,4.75 45.97,4.75 46.63,4.44 47.29,4.44 47.95,4.44 48.62,4.44 49.28,4.93 49.94,4.93 50.60,3.64 51.26,3.64 51.93,3.46 52.59,3.46 53.25,3.73 53.91,3.73 54.57,4.80 55.24,4.80 55.90,5.47 56.56,5.47 57.22,5.60 57.88,5.60 58.55,5.29 59.21,5.29 59.87,6.31 60.53,6.31 61.19,6.72 61.85,7.52 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='2.95' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='3.61' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='37.36' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /><circle cx='38.03' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_left gt_striped">Hospitalized</td>
<td class="gt_row gt_right gt_striped">2.2K</td>
<td class="gt_row gt_right gt_striped">2.0K</td>
<td class="gt_row gt_right gt_striped">&minus;6&percnt;</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,9.26 3.61,9.26 4.27,8.63 4.93,8.63 5.59,8.18 6.25,8.18 6.92,7.82 7.58,7.82 8.24,7.46 8.90,7.46 9.56,6.84 10.23,6.84 10.89,5.94 11.55,5.94 12.21,5.13 12.87,5.13 13.54,4.86 14.20,4.86 14.86,4.77 15.52,4.77 16.18,4.68 16.85,4.68 17.51,4.95 18.17,4.95 18.83,4.86 19.49,4.86 20.15,4.14 20.82,4.14 21.48,3.25 22.14,3.25 22.80,2.89 23.46,2.89 24.13,3.07 24.79,3.07 25.45,2.53 26.11,2.53 26.77,3.25 27.44,3.25 28.10,3.25 28.76,3.25 29.42,2.89 30.08,2.89 30.75,2.26 31.41,2.26 32.07,2.53 32.73,2.53 33.39,2.44 34.05,2.44 34.72,2.08 35.38,2.08 36.04,1.99 36.70,1.99 37.36,2.89 38.03,2.89 38.69,2.17 39.35,2.17 40.01,1.72 40.67,1.72 41.34,1.72 42.00,1.72 42.66,1.63 43.32,1.63 43.98,1.54 44.65,1.54 45.31,2.53 45.97,2.53 46.63,2.44 47.29,2.44 47.95,2.44 48.62,2.44 49.28,2.35 49.94,2.35 50.60,2.62 51.26,2.62 51.93,3.25 52.59,3.25 53.25,3.96 53.91,3.96 54.57,5.04 55.24,5.04 55.90,6.21 56.56,6.21 57.22,5.58 57.88,5.58 58.55,4.32 59.21,4.32 59.87,4.41 60.53,4.41 61.19,4.41 61.85,4.41 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='2.95' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='3.61' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='43.98' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /><circle cx='44.65' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_left">Deaths</td>
<td class="gt_row gt_right">37</td>
<td class="gt_row gt_right">36</td>
<td class="gt_row gt_right">&minus;3&percnt;</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,9.00 3.61,9.00 4.27,8.92 4.93,8.92 5.59,9.26 6.25,9.26 6.92,8.92 7.58,8.92 8.24,8.67 8.90,8.67 9.56,8.51 10.23,8.51 10.89,8.56 11.55,8.56 12.21,8.67 12.87,8.67 13.54,8.43 14.20,8.43 14.86,7.10 15.52,7.10 16.18,7.41 16.85,7.41 17.51,7.48 18.17,7.48 18.83,7.53 19.49,7.53 20.15,7.12 20.82,7.12 21.48,6.94 22.14,6.94 22.80,6.97 23.46,6.97 24.13,7.23 24.79,7.23 25.45,5.55 26.11,5.55 26.77,5.68 27.44,5.68 28.10,5.48 28.76,5.48 29.42,5.76 30.08,5.76 30.75,5.91 31.41,5.91 32.07,5.50 32.73,5.50 33.39,5.99 34.05,5.99 34.72,6.33 35.38,6.33 36.04,5.48 36.70,5.48 37.36,5.40 38.03,5.40 38.69,5.09 39.35,5.09 40.01,4.78 40.67,4.78 41.34,5.43 42.00,5.43 42.66,4.14 43.32,4.14 43.98,5.25 44.65,5.25 45.31,4.89 45.97,4.89 46.63,3.16 47.29,3.16 47.95,2.75 48.62,2.75 49.28,3.09 49.94,3.09 50.60,1.90 51.26,1.90 51.93,2.52 52.59,2.52 53.25,1.80 53.91,1.80 54.57,1.54 55.24,1.54 55.90,2.49 56.56,2.49 57.22,2.47 57.88,2.47 58.55,2.06 59.21,2.06 59.87,2.73 60.53,2.73 61.19,2.91 61.85,2.78 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='5.59' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='6.25' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='54.57' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /><circle cx='55.24' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_left gt_striped">New Vaccine Doses</td>
<td class="gt_row gt_right gt_striped">21K</td>
<td class="gt_row gt_right gt_striped">20K</td>
<td class="gt_row gt_right gt_striped">&minus;5&percnt;</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,7.18 3.61,7.18 4.27,7.67 4.93,7.67 5.59,6.26 6.25,6.26 6.92,5.21 7.58,5.21 8.24,4.36 8.90,4.36 9.56,3.45 10.23,3.45 10.89,2.28 11.55,2.28 12.21,2.11 12.87,2.11 13.54,1.54 14.20,1.54 14.86,2.71 15.52,2.71 16.18,3.73 16.85,3.73 17.51,4.57 18.17,4.57 18.83,6.12 19.49,6.12 20.15,7.28 20.82,7.28 21.48,7.28 22.14,7.28 22.80,7.32 23.46,7.32 24.13,7.43 24.79,7.43 25.45,6.54 26.11,6.54 26.77,5.98 27.44,5.98 28.10,4.68 28.76,4.68 29.42,2.53 30.08,2.53 30.75,1.97 31.41,1.97 32.07,1.93 32.73,1.93 33.39,1.90 34.05,1.90 34.72,2.74 35.38,2.74 36.04,3.27 36.70,3.27 37.36,4.57 38.03,4.57 38.69,6.72 39.35,6.72 40.01,7.67 40.67,7.67 41.34,8.52 42.00,8.52 42.66,8.59 43.32,8.59 43.98,8.76 44.65,8.76 45.31,8.94 45.97,8.94 46.63,9.15 47.29,9.15 47.95,9.26 48.62,9.26 49.28,8.98 49.94,8.98 50.60,8.45 51.26,8.45 51.93,8.69 52.59,8.69 53.25,8.80 53.91,8.80 54.57,8.90 55.24,8.90 55.90,8.94 56.56,8.94 57.22,8.94 57.88,8.94 58.55,9.12 59.21,9.12 59.87,9.08 60.53,9.08 61.19,9.08 61.85,9.08 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='47.95' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='48.62' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='13.54' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /><circle cx='14.20' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_left">Fully Vaccinated</td>
<td class="gt_row gt_right">6.9M</td>
<td class="gt_row gt_right">7.0M</td>
<td class="gt_row gt_right">+1&percnt;</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,9.26 3.61,9.26 4.27,9.12 4.93,9.12 5.59,8.71 6.25,8.71 6.92,8.43 7.58,8.43 8.24,8.16 8.90,8.16 9.56,7.74 10.23,7.74 10.89,7.47 11.55,7.47 12.21,7.33 12.87,7.33 13.54,7.19 14.20,7.19 14.86,7.05 15.52,7.05 16.18,6.78 16.85,6.78 17.51,6.64 18.17,6.64 18.83,6.50 19.49,6.50 20.15,6.36 20.82,6.36 21.48,6.23 22.14,6.23 22.80,6.09 23.46,6.09 24.13,5.95 24.79,5.95 25.45,5.81 26.11,5.81 26.77,5.54 27.44,5.54 28.10,5.26 28.76,5.26 29.42,4.71 30.08,4.71 30.75,4.57 31.41,4.57 32.07,4.44 32.73,4.44 33.39,4.16 34.05,4.16 34.72,4.02 35.38,4.02 36.04,3.88 36.70,3.88 37.36,3.75 38.03,3.75 38.69,3.61 39.35,3.61 40.01,3.61 40.67,3.61 41.34,3.47 42.00,3.47 42.66,3.33 43.32,3.33 43.98,3.20 44.65,3.20 45.31,3.06 45.97,3.06 46.63,2.92 47.29,2.92 47.95,2.78 48.62,2.78 49.28,2.64 49.94,2.64 50.60,2.51 51.26,2.51 51.93,2.37 52.59,2.37 53.25,2.23 53.91,2.23 54.57,2.09 55.24,2.09 55.90,1.96 56.56,1.96 57.22,1.82 57.88,1.82 58.55,1.82 59.21,1.82 59.87,1.54 60.53,1.54 61.19,1.54 61.85,1.54 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='2.95' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='3.61' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='59.87' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /><circle cx='60.53' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /><circle cx='61.19' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /><circle cx='61.85' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_left gt_striped">Pct. Fully Vaccinated</td>
<td class="gt_row gt_right gt_striped">54</td>
<td class="gt_row gt_right gt_striped">55</td>
<td class="gt_row gt_right gt_striped">+1&percnt;</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,9.26 3.61,9.26 4.27,9.08 4.93,9.08 5.59,8.73 6.25,8.73 6.92,8.38 7.58,8.38 8.24,8.03 8.90,8.03 9.56,7.68 10.23,7.68 10.89,7.50 11.55,7.50 12.21,7.33 12.87,7.33 13.54,7.15 14.20,7.15 14.86,6.98 15.52,6.98 16.18,6.80 16.85,6.80 17.51,6.63 18.17,6.63 18.83,6.45 19.49,6.45 20.15,6.45 20.82,6.45 21.48,6.28 22.14,6.28 22.80,6.10 23.46,6.10 24.13,5.93 24.79,5.93 25.45,5.75 26.11,5.75 26.77,5.58 27.44,5.58 28.10,5.22 28.76,5.22 29.42,4.70 30.08,4.70 30.75,4.52 31.41,4.52 32.07,4.35 32.73,4.35 33.39,4.17 34.05,4.17 34.72,4.00 35.38,4.00 36.04,3.82 36.70,3.82 37.36,3.82 38.03,3.82 38.69,3.65 39.35,3.65 40.01,3.65 40.67,3.65 41.34,3.47 42.00,3.47 42.66,3.30 43.32,3.30 43.98,3.12 44.65,3.12 45.31,2.95 45.97,2.95 46.63,2.95 47.29,2.95 47.95,2.77 48.62,2.77 49.28,2.77 49.94,2.77 50.60,2.59 51.26,2.59 51.93,2.42 52.59,2.42 53.25,2.24 53.91,2.24 54.57,2.07 55.24,2.07 55.90,1.89 56.56,1.89 57.22,1.89 57.88,1.89 58.55,1.72 59.21,1.72 59.87,1.54 60.53,1.54 61.19,1.54 61.85,1.54 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='2.95' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='3.61' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='59.87' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /><circle cx='60.53' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /><circle cx='61.19' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /><circle cx='61.85' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
  </tbody>
  <tfoot class="gt_sourcenotes">
    <tr>
      <td class="gt_sourcenote" colspan="5">Latest data: Thursday</td>
    </tr>
  </tfoot>
  
</table>
</div>

![Illinois Metrics](https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/IL_facet.png)

![Illinois CDC_vax_combined map](https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/IL_vax_combined.png)

![IL CDC_cases_transmission_IL map](https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/IL_cases_transmission.png)

Community transmission levels are calculated by the CDC based on new cases per capita in the past week and test positivity.

## United States

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
<td class="gt_row gt_right">150.0K</td>
<td class="gt_row gt_right">131.0K</td>
<td class="gt_row gt_right">&minus;13&percnt;</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,9.24 3.61,9.24 4.27,9.24 4.93,9.22 5.59,9.25 6.25,9.23 6.92,9.22 7.58,9.18 8.24,9.21 8.90,9.22 9.56,9.26 10.23,9.15 10.89,9.10 11.55,9.07 12.21,8.94 12.87,8.91 13.54,8.87 14.20,8.70 14.86,8.67 15.52,8.61 16.18,8.53 16.85,8.32 17.51,8.30 18.17,8.24 18.83,8.12 19.49,8.01 20.15,7.89 20.82,7.72 21.48,7.43 22.14,7.34 22.80,7.30 23.46,7.06 24.13,6.88 24.79,6.75 25.45,6.58 26.11,6.10 26.77,6.05 27.44,5.93 28.10,5.70 28.76,5.46 29.42,5.27 30.08,5.06 30.75,4.58 31.41,4.48 32.07,4.58 32.73,4.19 33.39,4.05 34.05,3.66 34.72,3.42 35.38,3.62 36.04,3.62 36.70,3.47 37.36,3.23 38.03,2.99 38.69,2.99 39.35,2.89 40.01,2.80 40.67,2.65 41.34,2.70 42.00,2.60 42.66,2.56 43.32,2.46 43.98,2.27 44.65,2.31 45.31,2.36 45.97,2.31 46.63,2.17 47.29,2.03 47.95,1.83 48.62,1.88 49.28,1.93 49.94,1.93 50.60,1.93 51.26,3.18 51.93,2.46 52.59,2.60 53.25,2.75 53.91,2.80 54.57,2.80 55.24,2.80 55.90,1.54 56.56,2.46 57.22,2.56 57.88,2.56 58.55,2.70 59.21,2.75 59.87,2.75 60.53,3.13 61.19,3.28 61.85,3.52 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='9.56' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='55.90' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_left gt_striped">Hospitalized</td>
<td class="gt_row gt_right gt_striped">96.5K</td>
<td class="gt_row gt_right gt_striped">83.4K</td>
<td class="gt_row gt_right gt_striped">&minus;14&percnt;</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,9.24 3.61,9.26 4.27,9.26 4.93,9.23 5.59,9.21 6.25,9.19 6.92,9.19 7.58,9.17 8.24,9.19 8.90,9.18 9.56,9.15 10.23,9.10 10.89,9.03 11.55,9.00 12.21,8.97 12.87,8.94 13.54,8.88 14.20,8.80 14.86,8.72 15.52,8.64 16.18,8.56 16.85,8.47 17.51,8.41 18.17,8.32 18.83,8.17 19.49,8.04 20.15,7.92 20.82,7.78 21.48,7.63 22.14,7.52 22.80,7.35 23.46,7.14 24.13,6.91 24.79,6.71 25.45,6.56 26.11,6.35 26.77,6.18 27.44,5.99 28.10,5.70 28.76,5.45 29.42,5.24 30.08,5.00 30.75,4.77 31.41,4.64 32.07,4.39 32.73,4.08 33.39,3.84 34.05,3.63 34.72,3.43 35.38,3.29 36.04,3.20 36.70,3.02 37.36,2.77 38.03,2.56 38.69,2.39 39.35,2.32 40.01,2.24 40.67,2.23 41.34,2.06 42.00,1.84 42.66,1.72 43.32,1.72 43.98,1.70 44.65,1.71 45.31,1.81 45.97,1.71 46.63,1.61 47.29,1.56 47.95,1.54 48.62,1.56 49.28,1.65 49.94,1.80 50.60,1.79 51.26,1.73 51.93,1.65 52.59,1.68 53.25,1.75 53.91,1.86 54.57,2.09 55.24,2.13 55.90,2.07 56.56,2.22 57.22,2.30 57.88,2.42 58.55,2.57 59.21,2.77 59.87,2.84 60.53,2.85 61.19,2.86 61.85,2.86 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='3.61' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='4.27' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='47.95' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_left">Deaths</td>
<td class="gt_row gt_right">1.5K</td>
<td class="gt_row gt_right">2.0K</td>
<td class="gt_row gt_right">+36&percnt;</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,8.92 3.61,8.93 4.27,8.94 4.93,9.01 5.59,9.02 6.25,9.10 6.92,9.12 7.58,9.13 8.24,9.17 8.90,9.19 9.56,9.26 10.23,9.24 10.89,9.22 11.55,9.25 12.21,9.23 12.87,9.19 13.54,9.20 14.20,9.08 14.86,9.07 15.52,9.05 16.18,9.03 16.85,9.10 17.51,9.14 18.17,9.07 18.83,9.09 19.49,9.13 20.15,9.12 20.82,9.10 21.48,9.02 22.14,8.99 22.80,9.05 23.46,9.01 24.13,8.92 24.79,8.89 25.45,8.89 26.11,8.67 26.77,8.65 27.44,8.63 28.10,8.52 28.76,8.43 29.42,8.37 30.08,8.24 30.75,8.08 31.41,8.04 32.07,8.01 32.73,7.98 33.39,7.56 34.05,7.64 34.72,7.37 35.38,7.42 36.04,7.41 36.70,7.37 37.36,7.04 38.03,7.21 38.69,6.72 39.35,6.27 40.01,6.02 40.67,5.88 41.34,5.84 42.00,5.67 42.66,5.42 43.32,5.21 43.98,4.91 44.65,4.79 45.31,4.79 45.97,4.70 46.63,4.49 47.29,4.49 47.95,4.20 48.62,3.73 49.28,3.65 49.94,3.65 50.60,3.61 51.26,4.32 51.93,3.90 52.59,3.82 53.25,3.61 53.91,3.40 54.57,3.27 55.24,3.31 55.90,2.34 56.56,2.55 57.22,2.26 57.88,2.17 58.55,2.13 59.21,2.05 59.87,2.05 60.53,1.96 61.19,1.63 61.85,1.54 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='9.56' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='61.85' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_left gt_striped">New Vaccine Doses</td>
<td class="gt_row gt_right gt_striped">811.0K</td>
<td class="gt_row gt_right gt_striped">743.0K</td>
<td class="gt_row gt_right gt_striped">&minus;8&percnt;</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,6.38 3.61,6.64 4.27,6.00 4.93,5.14 5.59,4.98 6.25,3.68 6.92,2.17 7.58,1.92 8.24,1.54 8.90,2.55 9.56,3.96 10.23,4.74 10.89,6.41 11.55,8.10 12.21,8.16 12.87,9.17 13.54,9.26 14.20,9.01 14.86,8.93 15.52,8.74 16.18,8.97 16.85,9.09 17.51,9.03 18.17,9.18 18.83,9.08 19.49,9.26 20.15,9.14 20.82,8.97 21.48,8.88 22.14,8.80 22.80,8.30 23.46,8.51 24.13,8.24 24.79,7.99 25.45,7.90 26.11,7.43 26.77,7.37 27.44,7.29 28.10,7.17 28.76,7.07 29.42,7.12 30.08,6.84 30.75,6.90 31.41,6.68 32.07,6.75 32.73,6.63 33.39,6.34 34.05,6.46 34.72,6.84 35.38,6.66 36.04,6.39 36.70,6.59 37.36,6.00 38.03,6.04 38.69,5.93 39.35,5.28 40.01,5.10 40.67,5.00 41.34,4.45 42.00,4.89 42.66,4.81 43.32,4.41 43.98,4.59 44.65,4.49 45.31,4.44 45.97,4.48 46.63,4.34 47.29,4.32 47.95,4.06 48.62,4.22 49.28,3.63 49.94,3.81 50.60,4.63 51.26,4.97 51.93,5.24 52.59,5.43 53.25,5.75 53.91,6.55 54.57,6.68 55.24,6.20 55.90,6.04 56.56,5.82 57.22,6.04 57.88,5.90 58.55,5.88 59.21,5.86 59.87,6.04 60.53,5.92 61.19,6.06 61.85,6.29 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='13.54' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='19.49' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='8.24' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_left">Fully Vaccinated</td>
<td class="gt_row gt_right">177.0M</td>
<td class="gt_row gt_right">182.0M</td>
<td class="gt_row gt_right">+3&percnt;</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,9.26 3.61,9.26 4.27,9.00 4.93,8.74 5.59,8.74 6.25,8.49 6.92,8.23 7.58,8.23 8.24,7.97 8.90,7.97 9.56,7.97 10.23,7.71 10.89,7.71 11.55,7.71 12.21,7.46 12.87,7.46 13.54,7.46 14.20,7.46 14.86,7.20 15.52,7.20 16.18,7.20 16.85,6.94 17.51,6.94 18.17,6.94 18.83,6.94 19.49,6.69 20.15,6.69 20.82,6.69 21.48,6.69 22.14,6.43 22.80,6.43 23.46,6.43 24.13,6.43 24.79,6.17 25.45,6.17 26.11,6.17 26.77,6.17 27.44,5.91 28.10,5.91 28.76,5.91 29.42,5.91 30.08,5.66 30.75,5.66 31.41,5.66 32.07,5.66 32.73,5.40 33.39,5.40 34.05,5.40 34.72,5.40 35.38,5.14 36.04,5.14 36.70,5.14 37.36,4.89 38.03,4.89 38.69,4.89 39.35,4.63 40.01,4.63 40.67,4.63 41.34,4.37 42.00,4.37 42.66,4.37 43.32,4.11 43.98,4.11 44.65,3.86 45.31,3.86 45.97,3.60 46.63,3.60 47.29,3.60 47.95,3.34 48.62,3.34 49.28,3.09 49.94,3.09 50.60,3.09 51.26,3.09 51.93,2.83 52.59,2.83 53.25,2.83 53.91,2.57 54.57,2.57 55.24,2.31 55.90,2.31 56.56,2.31 57.22,2.06 57.88,2.06 58.55,1.80 59.21,1.80 59.87,1.80 60.53,1.54 61.19,1.54 61.85,1.54 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='2.95' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='3.61' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='60.53' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /><circle cx='61.19' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /><circle cx='61.85' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_left gt_striped">Pct. Fully Vaccinated</td>
<td class="gt_row gt_right gt_striped">52.7</td>
<td class="gt_row gt_right gt_striped">54.2</td>
<td class="gt_row gt_right gt_striped">+3&percnt;</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,9.26 3.61,9.17 4.27,8.92 4.93,8.75 5.59,8.66 6.25,8.49 6.92,8.16 7.58,8.07 8.24,7.90 8.90,7.82 9.56,7.82 10.23,7.73 10.89,7.65 11.55,7.56 12.21,7.48 12.87,7.39 13.54,7.31 14.20,7.31 14.86,7.22 15.52,7.14 16.18,7.05 16.85,6.97 17.51,6.88 18.17,6.88 18.83,6.80 19.49,6.71 20.15,6.71 20.82,6.63 21.48,6.54 22.14,6.46 22.80,6.37 23.46,6.37 24.13,6.29 24.79,6.29 25.45,6.21 26.11,6.12 26.77,6.04 27.44,5.95 28.10,5.95 28.76,5.87 29.42,5.78 30.08,5.78 30.75,5.70 31.41,5.61 32.07,5.53 32.73,5.44 33.39,5.44 34.05,5.36 34.72,5.27 35.38,5.19 36.04,5.10 36.70,5.02 37.36,4.93 38.03,4.93 38.69,4.85 39.35,4.76 40.01,4.59 40.67,4.51 41.34,4.43 42.00,4.34 42.66,4.26 43.32,4.17 43.98,4.09 44.65,4.00 45.31,3.83 45.97,3.75 46.63,3.66 47.29,3.58 47.95,3.49 48.62,3.41 49.28,3.24 49.94,3.15 50.60,3.15 51.26,3.15 51.93,2.98 52.59,2.81 53.25,2.73 53.91,2.64 54.57,2.56 55.24,2.48 55.90,2.39 56.56,2.31 57.22,2.22 57.88,2.05 58.55,1.97 59.21,1.88 59.87,1.80 60.53,1.71 61.19,1.63 61.85,1.54 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='2.95' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='61.85' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
  </tbody>
  <tfoot class="gt_sourcenotes">
    <tr>
      <td class="gt_sourcenote" colspan="5">Latest data: Wednesday</td>
    </tr>
  </tfoot>
  
</table>
</div>

![USA Metrics](https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/US_facet.png)

![USA fully vaccinated map](https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/usa_vax_total.png)

![USA transmission levels map](https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/usa_transmission.png)

## World

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
<td class="gt_row gt_right">588.0K</td>
<td class="gt_row gt_right">516.0K</td>
<td class="gt_row gt_right">&minus;12&percnt;</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,9.26 3.61,9.20 4.27,9.18 4.93,9.05 5.59,8.99 6.25,9.15 6.92,9.02 7.58,8.94 8.24,8.91 8.90,8.84 9.56,8.70 10.23,8.41 10.89,8.15 11.55,8.02 12.21,7.76 12.87,7.57 13.54,7.41 14.20,7.18 14.86,6.91 15.52,6.62 16.18,6.28 16.85,5.94 17.51,5.76 18.17,5.54 18.83,5.31 19.49,5.28 20.15,5.20 20.82,5.23 21.48,4.89 22.14,4.89 22.80,4.83 23.46,4.68 24.13,4.39 24.79,4.07 25.45,3.73 26.11,3.57 26.77,3.44 27.44,3.31 28.10,3.15 28.76,3.04 29.42,2.94 30.08,2.81 30.75,2.46 31.41,2.31 32.07,2.46 32.73,2.17 33.39,2.12 34.05,1.94 34.72,1.83 35.38,1.91 36.04,1.96 36.70,1.89 37.36,1.78 38.03,1.67 38.69,1.67 39.35,1.65 40.01,1.70 40.67,1.67 41.34,1.75 42.00,1.65 42.66,1.62 43.32,1.62 43.98,1.54 44.65,1.73 45.31,1.70 45.97,1.70 46.63,1.75 47.29,2.02 47.95,2.02 48.62,2.25 49.28,2.36 49.94,2.57 50.60,2.65 51.26,3.57 51.93,3.12 52.59,3.49 53.25,3.65 53.91,3.97 54.57,4.12 55.24,4.36 55.90,3.70 56.56,4.41 57.22,4.65 57.88,4.89 58.55,5.02 59.21,4.73 59.87,4.73 60.53,4.99 61.19,5.31 61.85,5.39 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='2.95' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='43.98' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_left gt_striped">Deaths</td>
<td class="gt_row gt_right gt_striped">9.2K</td>
<td class="gt_row gt_right gt_striped">8.4K</td>
<td class="gt_row gt_right gt_striped">&minus;8&percnt;</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,7.38 3.61,7.66 4.27,7.94 4.93,8.09 5.59,8.49 6.25,8.64 6.92,8.61 7.58,8.98 8.24,9.26 8.90,9.01 9.56,8.70 10.23,8.49 10.89,8.77 11.55,8.70 12.21,8.64 12.87,8.73 13.54,8.37 14.20,8.00 14.86,8.09 15.52,8.06 16.18,8.21 16.85,8.06 17.51,7.87 18.17,8.09 18.83,8.55 19.49,6.95 20.15,6.92 20.82,6.80 21.48,7.23 22.14,6.28 22.80,6.18 23.46,5.88 24.13,6.80 24.79,6.12 25.45,5.23 26.11,4.43 26.77,4.59 27.44,4.68 28.10,4.49 28.76,4.28 29.42,4.16 30.08,4.06 30.75,3.60 31.41,3.72 32.07,3.57 32.73,3.39 33.39,2.68 34.05,2.93 34.72,3.08 35.38,3.11 36.04,3.08 36.70,3.17 37.36,2.65 38.03,3.20 38.69,2.80 39.35,2.46 40.01,2.46 40.67,2.37 41.34,2.19 42.00,2.16 42.66,1.85 43.32,1.85 43.98,1.54 44.65,1.85 45.31,1.85 45.97,2.34 46.63,2.59 47.29,3.48 47.95,2.99 48.62,3.17 49.28,2.99 49.94,3.29 50.60,3.42 51.26,4.12 51.93,3.48 52.59,4.59 53.25,4.80 53.91,5.48 54.57,5.23 55.24,5.66 55.90,5.17 56.56,5.48 57.22,5.32 57.88,5.45 58.55,5.66 59.21,6.37 59.87,6.15 60.53,6.52 61.19,6.83 61.85,6.95 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='8.24' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='43.98' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_left">New Vaccine Doses</td>
<td class="gt_row gt_right">31.6M</td>
<td class="gt_row gt_right">28.1M</td>
<td class="gt_row gt_right">&minus;11&percnt;</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,2.20 3.61,1.95 4.27,1.54 4.93,1.95 5.59,2.10 6.25,2.55 6.92,2.55 7.58,3.31 8.24,3.86 8.90,4.72 9.56,5.07 10.23,5.83 10.89,6.08 11.55,6.69 12.21,7.14 12.87,7.59 13.54,7.95 14.20,8.15 14.86,8.00 15.52,7.74 16.18,7.95 16.85,7.54 17.51,7.44 18.17,7.64 18.83,7.44 19.49,7.49 20.15,7.85 20.82,7.54 21.48,7.24 22.14,7.14 22.80,6.69 23.46,6.03 24.13,5.43 24.79,4.77 25.45,4.27 26.11,3.96 26.77,3.71 27.44,2.85 28.10,3.21 28.76,2.15 29.42,1.90 30.08,2.45 30.75,2.65 31.41,2.70 32.07,3.26 32.73,2.95 33.39,4.11 34.05,4.57 34.72,5.07 35.38,4.92 36.04,4.82 36.70,5.17 37.36,5.07 38.03,5.12 38.69,5.22 39.35,5.02 40.01,5.17 40.67,5.48 41.34,5.12 42.00,5.93 42.66,5.53 43.32,5.02 43.98,4.32 44.65,3.41 45.31,3.06 45.97,2.40 46.63,2.10 47.29,2.55 47.95,2.35 48.62,3.21 49.28,4.87 49.94,5.53 50.60,6.23 51.26,6.79 51.93,6.89 52.59,7.49 53.25,7.14 53.91,7.04 54.57,6.38 55.24,6.13 55.90,5.98 56.56,6.53 57.22,7.14 57.88,7.49 58.55,7.90 59.21,7.54 59.87,8.10 60.53,8.40 61.19,8.60 61.85,9.26 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='61.85' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='4.27' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_left gt_striped">Fully Vaccinated</td>
<td class="gt_row gt_right gt_striped">2.3B</td>
<td class="gt_row gt_right gt_striped">2.5B</td>
<td class="gt_row gt_right gt_striped">+10&percnt;</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,9.26 3.61,9.23 4.27,9.20 4.93,9.17 5.59,9.13 6.25,9.10 6.92,9.06 7.58,9.03 8.24,9.00 8.90,8.97 9.56,8.93 10.23,8.90 10.89,8.86 11.55,8.81 12.21,8.78 12.87,8.76 13.54,8.73 14.20,8.69 14.86,8.65 15.52,8.61 16.18,8.56 16.85,8.53 17.51,8.50 18.17,8.48 18.83,8.43 19.49,8.40 20.15,8.36 20.82,8.32 21.48,8.28 22.14,8.26 22.80,8.23 23.46,8.18 24.13,8.13 24.79,8.10 25.45,8.05 26.11,8.01 26.77,7.98 27.44,7.96 28.10,7.92 28.76,7.87 29.42,7.83 30.08,7.80 30.75,7.77 31.41,7.73 32.07,7.71 32.73,7.65 33.39,7.61 34.05,7.53 34.72,4.44 35.38,4.40 36.04,4.36 36.70,4.32 37.36,4.28 38.03,4.24 38.69,4.20 39.35,4.12 40.01,4.08 40.67,4.08 41.34,4.04 42.00,4.00 42.66,3.92 43.32,3.88 43.98,3.41 44.65,3.33 45.31,3.29 45.97,3.25 46.63,3.21 47.29,3.17 47.95,3.09 48.62,3.05 49.28,3.01 49.94,2.97 50.60,2.93 51.26,2.57 51.93,2.53 52.59,2.46 53.25,2.38 53.91,2.34 54.57,2.30 55.24,2.26 55.90,2.22 56.56,2.14 57.22,1.94 57.88,1.86 58.55,1.86 59.21,1.74 59.87,1.70 60.53,1.66 61.19,1.62 61.85,1.54 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='2.95' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='61.85' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_left">Pct. Fully Vaccinated</td>
<td class="gt_row gt_right">29.3</td>
<td class="gt_row gt_right">32.2</td>
<td class="gt_row gt_right">+10&percnt;</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,9.26 3.61,9.23 4.27,9.19 4.93,9.17 5.59,9.13 6.25,9.09 6.92,9.06 7.58,9.03 8.24,9.00 8.90,8.97 9.56,8.93 10.23,8.89 10.89,8.86 11.55,8.81 12.21,8.78 12.87,8.75 13.54,8.72 14.20,8.68 14.86,8.65 15.52,8.60 16.18,8.56 16.85,8.52 17.51,8.49 18.17,8.46 18.83,8.43 19.49,8.40 20.15,8.37 20.82,8.31 21.48,8.27 22.14,8.24 22.80,8.21 23.46,8.18 24.13,8.12 24.79,8.09 25.45,8.05 26.11,7.99 26.77,7.99 27.44,7.96 28.10,7.93 28.76,7.87 29.42,7.84 30.08,7.80 30.75,7.77 31.41,7.74 32.07,7.71 32.73,7.65 33.39,7.59 34.05,7.55 34.72,4.42 35.38,4.36 36.04,4.33 36.70,4.30 37.36,4.27 38.03,4.20 38.69,4.17 39.35,4.14 40.01,4.08 40.67,4.05 41.34,4.02 42.00,3.98 42.66,3.92 43.32,3.89 43.98,3.39 44.65,3.33 45.31,3.30 45.97,3.23 46.63,3.20 47.29,3.14 47.95,3.08 48.62,3.05 49.28,2.98 49.94,2.95 50.60,2.92 51.26,2.54 51.93,2.51 52.59,2.45 53.25,2.39 53.91,2.33 54.57,2.29 55.24,2.23 55.90,2.17 56.56,2.14 57.22,1.92 57.88,1.86 58.55,1.82 59.21,1.73 59.87,1.67 60.53,1.64 61.19,1.61 61.85,1.54 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='2.95' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='61.85' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
  </tbody>
  <tfoot class="gt_sourcenotes">
    <tr>
      <td class="gt_sourcenote" colspan="5">Latest data: Wednesday</td>
    </tr>
  </tfoot>
  
</table>
</div>

![World Metrics](https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/world_facet.png)

## Case Acceleration

As of Wednesday, the 14-day percent change in average new cases was:
  
- -43% in Champaign County
- -19% in Illinois
- -13% in the United States
- -12% worldwide

![Case Acceleration](https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/new_cases_change_facet.png)

This chart measures how quickly the average number of new cases is changing, or roughly, the slope of the new-cases charts above. If the case acceleration is positive, then the average number of new cases is increasing. If it is negative, then the average number of new cases is decreasing.

## Death Acceleration

As of Wednesday, the 14-day percent change in average new deaths was:
  
- 36% in Illinois
- 35% in the United States
- -8% worldwide

![Death Acceleration](https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/new_deaths_change_facet.png)

This chart measures how quickly the average number of new deaths is changing, or roughly, the slope of the new-deaths charts above. If the death acceleration is positive, then the average number of new deaths is increasing. If it is negative, then the average number of new deaths is decreasing.


