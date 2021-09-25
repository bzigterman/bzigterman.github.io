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
<td class="gt_row gt_right">84</td>
<td class="gt_row gt_right">52</td>
<td class="gt_row gt_right">&minus;38&percnt;</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,9.23 3.61,9.18 4.27,9.19 4.93,9.16 5.59,9.16 6.25,9.15 6.92,9.20 7.58,9.20 8.24,9.25 8.90,9.26 9.56,9.24 10.23,9.15 10.89,9.17 11.55,9.08 12.21,9.01 12.87,8.94 13.54,8.91 14.20,8.83 14.86,8.87 15.52,8.77 16.18,8.81 16.85,8.61 17.51,8.55 18.17,8.29 18.83,8.34 19.49,7.91 20.15,7.85 20.82,7.51 21.48,7.67 22.14,7.69 22.80,7.54 23.46,7.30 24.13,7.18 24.79,7.02 25.45,7.02 26.11,6.73 26.77,6.54 27.44,6.39 28.10,6.22 28.76,6.11 29.42,5.82 30.08,5.45 30.75,5.36 31.41,4.95 32.07,4.79 32.73,4.53 33.39,4.66 34.05,4.44 34.72,4.52 35.38,4.44 36.04,4.58 36.70,4.73 37.36,4.11 38.03,4.31 38.69,4.26 39.35,3.96 40.01,3.97 40.67,3.77 41.34,3.74 42.00,4.08 42.66,3.81 43.32,3.82 43.98,3.96 44.65,3.70 45.31,3.59 45.97,3.17 46.63,2.61 47.29,2.14 47.95,1.54 48.62,1.54 49.28,1.94 49.94,2.28 50.60,2.84 51.26,3.42 51.93,3.42 52.59,3.88 53.25,4.01 53.91,3.84 54.57,4.28 55.24,4.08 55.90,4.48 56.56,4.90 57.22,5.55 57.88,5.61 58.55,5.85 59.21,5.51 59.87,5.91 60.53,5.83 61.19,5.96 61.85,6.00 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='8.90' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='47.95' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /><circle cx='48.62' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_left gt_striped">Hospitalized</td>
<td class="gt_row gt_right gt_striped">67</td>
<td class="gt_row gt_right gt_striped">24</td>
<td class="gt_row gt_right gt_striped">&minus;64&percnt;</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,9.09 3.61,9.09 4.27,9.09 4.93,9.09 5.59,9.09 6.25,9.26 6.92,9.26 7.58,9.26 8.24,9.26 8.90,9.26 9.56,9.26 10.23,9.26 10.89,8.62 11.55,8.62 12.21,8.62 12.87,8.62 13.54,8.62 14.20,8.62 14.86,8.62 15.52,8.61 16.18,8.61 16.85,8.61 17.51,8.61 18.17,8.61 18.83,8.61 19.49,8.61 20.15,7.04 20.82,7.04 21.48,7.04 22.14,7.04 22.80,7.04 23.46,7.04 24.13,7.04 24.79,4.82 25.45,4.82 26.11,4.82 26.77,4.82 27.44,4.82 28.10,4.82 28.76,4.82 29.42,3.01 30.08,3.01 30.75,3.01 31.41,3.01 32.07,3.01 32.73,3.01 33.39,3.01 34.05,2.07 34.72,2.07 35.38,2.07 36.04,2.07 36.70,2.07 37.36,2.07 38.03,2.07 38.69,1.76 39.35,1.76 40.01,1.76 40.67,1.76 41.34,1.76 42.00,1.76 42.66,1.76 43.32,1.54 43.98,1.54 44.65,1.54 45.31,1.54 45.97,1.54 46.63,1.54 47.29,1.54 47.95,1.58 48.62,1.58 49.28,1.58 49.94,1.58 50.60,1.58 51.26,1.58 51.93,1.58 52.59,1.88 53.25,1.88 53.91,1.88 54.57,1.88 55.24,1.88 55.90,1.88 56.56,1.88 57.22,7.32 57.88,7.32 58.55,7.32 59.21,7.32 59.87,7.32 60.53,7.32 61.19,7.32 61.85,7.32 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='6.25' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='6.92' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='7.58' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='8.24' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='8.90' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='9.56' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='10.23' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='43.32' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /><circle cx='43.98' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /><circle cx='44.65' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /><circle cx='45.31' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /><circle cx='45.97' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /><circle cx='46.63' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /><circle cx='47.29' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_left">Monthly Deaths</td>
<td class="gt_row gt_right">17</td>
<td class="gt_row gt_right">17</td>
<td class="gt_row gt_right">0&percnt;</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,6.53 3.61,6.53 4.27,6.53 4.93,6.53 5.59,6.53 6.25,6.53 6.92,6.53 7.58,6.53 8.24,6.99 8.90,6.99 9.56,7.44 10.23,8.35 10.89,7.90 11.55,8.35 12.21,8.35 12.87,8.35 13.54,8.35 14.20,8.35 14.86,8.35 15.52,8.80 16.18,8.80 16.85,8.35 17.51,8.35 18.17,8.35 18.83,8.80 19.49,8.80 20.15,8.80 20.82,8.80 21.48,9.26 22.14,9.26 22.80,9.26 23.46,9.26 24.13,8.80 24.79,8.80 25.45,8.80 26.11,8.80 26.77,8.80 27.44,8.80 28.10,8.80 28.76,8.80 29.42,8.80 30.08,8.35 30.75,8.35 31.41,8.35 32.07,8.35 32.73,8.35 33.39,7.44 34.05,7.44 34.72,7.44 35.38,7.44 36.04,7.44 36.70,6.99 37.36,7.44 38.03,7.44 38.69,6.53 39.35,6.08 40.01,6.08 40.67,6.08 41.34,6.08 42.00,5.17 42.66,3.81 43.32,3.81 43.98,3.81 44.65,4.27 45.31,4.27 45.97,4.27 46.63,4.27 47.29,3.36 47.95,3.36 48.62,3.36 49.28,2.90 49.94,2.90 50.60,3.81 51.26,3.81 51.93,3.36 52.59,2.45 53.25,2.45 53.91,2.90 54.57,2.90 55.24,2.45 55.90,1.54 56.56,1.54 57.22,2.00 57.88,2.00 58.55,2.00 59.21,2.90 59.87,3.36 60.53,3.36 61.19,2.90 61.85,2.45 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='21.48' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='22.14' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='22.80' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='23.46' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='55.90' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /><circle cx='56.56' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_left gt_striped">New Vaccine Doses</td>
<td class="gt_row gt_right gt_striped">316</td>
<td class="gt_row gt_right gt_striped">266</td>
<td class="gt_row gt_right gt_striped">&minus;16&percnt;</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,2.31 3.61,1.79 4.27,1.67 4.93,1.54 5.59,1.92 6.25,4.71 6.92,7.38 7.58,7.38 8.24,8.51 8.90,9.26 9.56,9.11 10.23,9.00 10.89,9.03 11.55,9.07 12.21,8.81 12.87,7.84 13.54,7.34 14.20,7.75 14.86,7.95 15.52,8.05 16.18,7.93 16.85,8.06 17.51,7.71 18.17,7.41 18.83,7.38 19.49,7.49 20.15,7.24 20.82,7.28 21.48,7.39 22.14,8.01 22.80,8.01 23.46,7.45 24.13,7.23 24.79,7.30 25.45,7.23 26.11,7.02 26.77,7.00 27.44,7.15 28.10,7.67 28.76,7.69 29.42,7.73 30.08,7.71 30.75,7.73 31.41,7.73 32.07,7.95 32.73,7.73 33.39,7.47 34.05,7.08 34.72,6.85 35.38,6.63 36.04,6.54 36.70,6.03 37.36,5.87 38.03,5.85 38.69,6.00 39.35,6.05 40.01,6.11 40.67,5.98 41.34,5.85 42.00,5.98 42.66,6.31 43.32,6.24 43.98,6.16 44.65,6.07 45.31,5.81 45.97,5.98 46.63,5.75 47.29,5.57 47.95,5.51 48.62,5.68 49.28,5.70 49.94,6.50 50.60,7.00 51.26,7.26 51.93,7.24 52.59,7.47 53.25,7.60 53.91,7.84 54.57,7.24 55.24,7.13 55.90,7.17 56.56,7.13 57.22,7.30 57.88,7.34 58.55,7.39 59.21,7.73 59.87,7.82 60.53,8.18 61.19,8.40 61.85,8.40 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='8.90' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='4.93' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_left">Fully Vaccinated</td>
<td class="gt_row gt_right">111,000</td>
<td class="gt_row gt_right">113,000</td>
<td class="gt_row gt_right">+2&percnt;</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,9.26 3.61,9.15 4.27,9.04 4.93,8.87 5.59,8.76 6.25,8.76 6.92,8.76 7.58,8.76 8.24,8.76 8.90,8.76 9.56,8.20 10.23,8.20 10.89,8.20 11.55,8.20 12.21,8.20 12.87,7.65 13.54,7.65 14.20,7.65 14.86,7.65 15.52,7.65 16.18,7.65 16.85,7.65 17.51,7.09 18.17,7.09 18.83,7.09 19.49,7.09 20.15,7.09 20.82,6.54 21.48,6.54 22.14,6.54 22.80,6.54 23.46,6.54 24.13,6.54 24.79,6.54 25.45,6.54 26.11,5.98 26.77,5.98 27.44,5.98 28.10,5.98 28.76,5.98 29.42,5.98 30.08,5.98 30.75,5.98 31.41,5.43 32.07,5.43 32.73,5.43 33.39,5.43 34.05,5.43 34.72,5.43 35.38,5.43 36.04,4.87 36.70,4.87 37.36,4.87 38.03,4.87 38.69,4.87 39.35,4.32 40.01,4.32 40.67,4.32 41.34,4.32 42.00,4.32 42.66,4.32 43.32,3.76 43.98,3.76 44.65,3.76 45.31,3.76 45.97,3.76 46.63,3.76 47.29,3.76 47.95,3.21 48.62,3.21 49.28,3.21 49.94,3.21 50.60,3.21 51.26,3.21 51.93,2.65 52.59,2.65 53.25,2.65 53.91,2.65 54.57,2.65 55.24,2.65 55.90,2.65 56.56,2.10 57.22,2.10 57.88,2.10 58.55,2.10 59.21,2.10 59.87,2.10 60.53,1.54 61.19,1.54 61.85,1.54 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='2.95' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='60.53' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /><circle cx='61.19' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /><circle cx='61.85' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_left gt_striped">Pct. Fully Vaccinated</td>
<td class="gt_row gt_right gt_striped">53</td>
<td class="gt_row gt_right gt_striped">54</td>
<td class="gt_row gt_right gt_striped">+2&percnt;</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,9.26 3.61,9.14 4.27,9.02 4.93,8.90 5.59,8.78 6.25,8.66 6.92,8.55 7.58,8.55 8.24,8.55 8.90,8.55 9.56,8.43 10.23,8.19 10.89,8.07 11.55,8.07 12.21,7.95 12.87,7.83 13.54,7.83 14.20,7.71 14.86,7.60 15.52,7.48 16.18,7.48 16.85,7.36 17.51,7.24 18.17,7.12 18.83,7.00 19.49,6.88 20.15,6.76 20.82,6.76 21.48,6.76 22.14,6.65 22.80,6.53 23.46,6.41 24.13,6.41 24.79,6.29 25.45,6.29 26.11,6.17 26.77,6.17 27.44,6.05 28.10,5.93 28.76,5.93 29.42,5.82 30.08,5.70 30.75,5.70 31.41,5.58 32.07,5.58 32.73,5.46 33.39,5.34 34.05,5.22 34.72,5.10 35.38,5.10 36.04,4.98 36.70,4.87 37.36,4.75 38.03,4.63 38.69,4.51 39.35,4.51 40.01,4.39 40.67,4.39 41.34,4.15 42.00,4.15 42.66,4.04 43.32,3.92 43.98,3.80 44.65,3.80 45.31,3.68 45.97,3.56 46.63,3.44 47.29,3.44 47.95,3.20 48.62,3.20 49.28,3.09 49.94,3.09 50.60,2.97 51.26,2.85 51.93,2.85 52.59,2.73 53.25,2.61 53.91,2.61 54.57,2.49 55.24,2.37 55.90,2.25 56.56,2.14 57.22,2.02 57.88,2.02 58.55,1.90 59.21,1.90 59.87,1.78 60.53,1.66 61.19,1.54 61.85,1.54 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='2.95' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='61.19' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /><circle cx='61.85' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
  </tbody>
  <tfoot class="gt_sourcenotes">
    <tr>
      <td class="gt_sourcenote" colspan="5">Latest data: Friday</td>
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
<td class="gt_row gt_right">3.7K</td>
<td class="gt_row gt_right">3.1K</td>
<td class="gt_row gt_right">&minus;16&percnt;</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,9.26 3.61,9.24 4.27,9.21 4.93,9.21 5.59,9.15 6.25,9.13 6.92,9.10 7.58,9.13 8.24,9.17 8.90,9.09 9.56,9.04 10.23,8.99 10.89,8.92 11.55,8.87 12.21,8.75 12.87,8.66 13.54,8.67 14.20,8.60 14.86,8.53 15.52,8.52 16.18,8.42 16.85,8.26 17.51,8.20 18.17,8.16 18.83,8.10 19.49,7.80 20.15,7.60 20.82,7.49 21.48,7.43 22.14,7.32 22.80,7.07 23.46,6.77 24.13,6.86 24.79,6.63 25.45,6.42 26.11,6.33 26.77,6.19 27.44,5.91 28.10,5.84 28.76,5.49 29.42,5.30 30.08,5.08 30.75,4.94 31.41,4.72 32.07,4.64 32.73,4.22 33.39,4.22 34.05,4.09 34.72,3.84 35.38,3.74 36.04,3.76 36.70,3.58 37.36,3.62 38.03,3.60 38.69,3.21 39.35,3.18 40.01,3.34 40.67,3.19 41.34,3.36 42.00,3.21 42.66,2.97 43.32,2.97 43.98,3.18 44.65,2.59 45.31,2.75 45.97,2.26 46.63,2.06 47.29,2.02 47.95,1.74 48.62,1.54 49.28,1.91 49.94,1.89 50.60,2.50 51.26,2.81 51.93,2.68 52.59,2.86 53.25,2.74 53.91,2.74 54.57,2.94 55.24,2.41 55.90,2.33 56.56,2.44 57.22,2.88 57.88,3.16 58.55,3.21 59.21,3.08 59.87,3.51 60.53,3.67 61.19,3.91 61.85,3.98 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='2.95' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='48.62' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_left gt_striped">Hospitalized</td>
<td class="gt_row gt_right gt_striped">2.2K</td>
<td class="gt_row gt_right gt_striped">1.9K</td>
<td class="gt_row gt_right gt_striped">&minus;14&percnt;</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,9.05 3.61,8.99 4.27,9.03 4.93,9.16 5.59,9.08 6.25,9.18 6.92,9.25 7.58,9.26 8.24,9.10 8.90,8.85 9.56,9.09 10.23,9.06 10.89,9.08 11.55,9.05 12.21,9.02 12.87,8.80 13.54,8.87 14.20,8.75 14.86,8.88 15.52,8.85 16.18,8.74 16.85,8.64 17.51,8.39 18.17,8.51 18.83,8.29 19.49,8.12 20.15,8.07 20.82,7.92 21.48,7.92 22.14,7.61 22.80,7.39 23.46,7.30 24.13,7.21 24.79,7.21 25.45,7.06 26.11,6.92 26.77,6.40 27.44,6.20 28.10,6.05 28.76,6.05 29.42,5.62 30.08,5.69 30.75,5.34 31.41,4.91 32.07,4.64 32.73,4.44 33.39,4.28 34.05,4.13 34.72,3.85 35.38,3.46 36.04,3.11 36.70,2.99 37.36,2.95 38.03,2.91 38.69,3.03 39.35,2.99 40.01,2.68 40.67,2.29 41.34,2.13 42.00,2.21 42.66,1.97 43.32,2.29 43.98,2.29 44.65,2.13 45.31,1.86 45.97,1.97 46.63,1.93 47.29,1.78 47.95,1.74 48.62,2.13 49.28,1.82 49.94,1.62 50.60,1.62 51.26,1.58 51.93,1.54 52.59,1.97 53.25,1.93 53.91,1.93 54.57,1.90 55.24,2.01 55.90,2.29 56.56,2.60 57.22,3.07 57.88,3.58 58.55,3.31 59.21,2.76 59.87,2.80 60.53,2.87 61.19,3.19 61.85,3.19 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='7.58' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='51.93' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_left">Deaths</td>
<td class="gt_row gt_right">28</td>
<td class="gt_row gt_right">34</td>
<td class="gt_row gt_right">+22&percnt;</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,8.33 3.61,8.36 4.27,8.42 4.93,8.54 5.59,8.78 6.25,8.72 6.92,8.75 7.58,8.84 8.24,8.93 8.90,8.57 9.56,8.51 10.23,8.48 10.89,8.54 11.55,8.39 12.21,8.15 12.87,8.06 13.54,8.18 14.20,8.15 14.86,8.30 15.52,8.30 16.18,8.30 16.85,8.54 17.51,8.51 18.17,8.72 18.83,8.63 19.49,8.66 20.15,8.78 20.82,9.05 21.48,9.14 22.14,9.14 22.80,9.14 23.46,9.26 24.13,9.05 24.79,8.93 25.45,8.81 26.11,8.81 26.77,8.87 27.44,8.78 28.10,8.42 28.76,8.36 29.42,8.21 30.08,8.03 30.75,7.76 31.41,7.64 32.07,7.58 32.73,7.85 33.39,7.58 34.05,7.37 34.72,7.24 35.38,7.28 36.04,7.37 36.70,7.18 37.36,6.08 38.03,6.34 38.69,6.40 39.35,6.44 40.01,6.10 40.67,5.96 41.34,5.98 42.00,6.19 42.66,4.82 43.32,4.93 43.98,4.76 44.65,4.99 45.31,5.12 45.97,4.78 46.63,5.18 47.29,5.45 47.95,4.76 48.62,4.70 49.28,4.44 49.94,4.19 50.60,4.72 51.26,3.67 51.93,4.57 52.59,4.28 53.25,2.87 53.91,2.53 54.57,2.80 55.24,1.84 55.90,2.34 56.56,1.75 57.22,1.54 57.88,2.32 58.55,2.30 59.21,1.96 59.87,2.51 60.53,2.66 61.19,2.55 61.85,2.97 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='23.46' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='57.22' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_left gt_striped">New Vaccine Doses</td>
<td class="gt_row gt_right gt_striped">20K</td>
<td class="gt_row gt_right gt_striped">19K</td>
<td class="gt_row gt_right gt_striped">&minus;3&percnt;</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,1.65 3.61,1.62 4.27,1.54 4.93,1.70 5.59,2.27 6.25,4.59 6.92,7.58 7.58,7.56 8.24,8.39 8.90,9.01 9.56,9.15 10.23,9.12 10.89,9.26 11.55,9.23 12.21,9.04 12.87,8.12 13.54,7.75 14.20,7.85 14.86,8.02 15.52,8.04 16.18,8.04 16.85,8.15 17.51,8.42 18.17,8.31 18.83,8.21 19.49,8.31 20.15,8.37 20.82,8.56 21.48,8.69 22.14,8.88 22.80,8.80 23.46,7.91 24.13,7.69 24.79,6.75 25.45,6.48 26.11,6.26 26.77,6.02 27.44,6.05 28.10,6.88 28.76,6.83 29.42,7.53 30.08,6.86 30.75,6.78 31.41,6.86 32.07,7.23 32.73,6.16 33.39,5.35 34.05,4.70 34.72,4.00 35.38,3.11 36.04,2.97 36.70,2.54 37.36,3.43 38.03,4.21 38.69,4.86 39.35,6.05 40.01,6.94 40.67,6.94 41.34,6.96 42.00,7.05 42.66,6.37 43.32,5.94 43.98,4.94 44.65,3.30 45.31,2.86 45.97,2.84 46.63,2.81 47.29,3.46 47.95,3.86 48.62,4.86 49.28,6.51 49.94,7.23 50.60,7.88 51.26,7.94 51.93,8.07 52.59,8.21 53.25,8.37 53.91,8.45 54.57,8.23 55.24,7.83 55.90,8.02 56.56,8.10 57.22,8.18 57.88,8.21 58.55,8.21 59.21,8.34 59.87,8.31 60.53,8.47 61.19,8.34 61.85,8.34 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='10.89' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='4.27' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_left">Fully Vaccinated</td>
<td class="gt_row gt_right">6.9M</td>
<td class="gt_row gt_right">7.0M</td>
<td class="gt_row gt_right">+2&percnt;</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,9.26 3.61,9.11 4.27,9.03 4.93,8.88 5.59,8.81 6.25,8.66 6.92,8.58 7.58,8.58 8.24,8.58 8.90,8.51 9.56,8.36 10.23,8.28 10.89,8.21 11.55,8.13 12.21,8.06 12.87,7.98 13.54,7.83 14.20,7.76 14.86,7.68 15.52,7.61 16.18,7.53 16.85,7.53 17.51,7.46 18.17,7.38 18.83,7.31 19.49,7.23 20.15,7.16 20.82,7.09 21.48,7.09 22.14,7.09 22.80,6.94 23.46,6.79 24.13,6.71 24.79,6.56 25.45,6.49 26.11,6.49 26.77,6.41 27.44,6.34 28.10,6.26 28.76,6.19 29.42,6.11 30.08,5.96 30.75,5.89 31.41,5.89 32.07,5.81 32.73,5.59 33.39,5.44 34.05,5.29 34.72,5.06 35.38,4.91 36.04,4.84 36.70,4.76 37.36,4.69 38.03,4.54 38.69,4.46 39.35,4.39 40.01,4.31 40.67,4.24 41.34,4.16 42.00,4.09 42.66,4.01 43.32,3.86 43.98,3.71 44.65,3.42 45.31,3.34 45.97,3.27 46.63,3.12 47.29,3.04 47.95,2.97 48.62,2.89 49.28,2.82 49.94,2.82 50.60,2.74 51.26,2.67 51.93,2.59 52.59,2.52 53.25,2.44 53.91,2.37 54.57,2.29 55.24,2.22 55.90,2.14 56.56,2.07 57.22,1.99 57.88,1.92 58.55,1.84 59.21,1.84 59.87,1.69 60.53,1.69 61.19,1.54 61.85,1.54 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='2.95' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='61.19' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /><circle cx='61.85' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_left gt_striped">Pct. Fully Vaccinated</td>
<td class="gt_row gt_right gt_striped">54</td>
<td class="gt_row gt_right gt_striped">55</td>
<td class="gt_row gt_right gt_striped">+2&percnt;</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,9.26 3.61,9.16 4.27,9.06 4.93,8.87 5.59,8.77 6.25,8.68 6.92,8.58 7.58,8.58 8.24,8.58 8.90,8.49 9.56,8.39 10.23,8.29 10.89,8.20 11.55,8.10 12.21,8.10 12.87,8.00 13.54,7.91 14.20,7.81 14.86,7.71 15.52,7.62 16.18,7.52 16.85,7.52 17.51,7.42 18.17,7.33 18.83,7.23 19.49,7.23 20.15,7.14 20.82,7.14 21.48,7.04 22.14,7.04 22.80,6.94 23.46,6.85 24.13,6.75 24.79,6.56 25.45,6.56 26.11,6.46 26.77,6.36 27.44,6.36 28.10,6.27 28.76,6.17 29.42,6.07 30.08,5.98 30.75,5.88 31.41,5.88 32.07,5.79 32.73,5.59 33.39,5.40 34.05,5.21 34.72,5.01 35.38,4.92 36.04,4.82 36.70,4.72 37.36,4.63 38.03,4.53 38.69,4.44 39.35,4.34 40.01,4.34 40.67,4.24 41.34,4.15 42.00,4.05 42.66,3.95 43.32,3.86 43.98,3.66 44.65,3.38 45.31,3.28 45.97,3.18 46.63,3.09 47.29,2.99 47.95,2.89 48.62,2.89 49.28,2.80 49.94,2.80 50.60,2.70 51.26,2.60 51.93,2.51 52.59,2.41 53.25,2.41 53.91,2.31 54.57,2.31 55.24,2.22 55.90,2.12 56.56,2.03 57.22,1.93 57.88,1.83 58.55,1.83 59.21,1.74 59.87,1.64 60.53,1.64 61.19,1.54 61.85,1.54 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='2.95' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='61.19' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /><circle cx='61.85' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
  </tbody>
  <tfoot class="gt_sourcenotes">
    <tr>
      <td class="gt_sourcenote" colspan="5">Latest data: Friday</td>
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
<td class="gt_row gt_right">146.0K</td>
<td class="gt_row gt_right">123.0K</td>
<td class="gt_row gt_right">&minus;16&percnt;</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,9.24 3.61,9.22 4.27,9.25 4.93,9.23 5.59,9.22 6.25,9.18 6.92,9.21 7.58,9.22 8.24,9.26 8.90,9.15 9.56,9.10 10.23,9.07 10.89,8.94 11.55,8.91 12.21,8.87 12.87,8.70 13.54,8.67 14.20,8.61 14.86,8.53 15.52,8.32 16.18,8.30 16.85,8.24 17.51,8.12 18.17,8.01 18.83,7.89 19.49,7.72 20.15,7.43 20.82,7.34 21.48,7.30 22.14,7.06 22.80,6.88 23.46,6.75 24.13,6.58 24.79,6.10 25.45,6.05 26.11,5.93 26.77,5.70 27.44,5.46 28.10,5.27 28.76,5.06 29.42,4.58 30.08,4.48 30.75,4.58 31.41,4.19 32.07,4.05 32.73,3.66 33.39,3.42 34.05,3.62 34.72,3.62 35.38,3.47 36.04,3.23 36.70,2.99 37.36,2.99 38.03,2.89 38.69,2.80 39.35,2.65 40.01,2.70 40.67,2.60 41.34,2.56 42.00,2.46 42.66,2.27 43.32,2.31 43.98,2.36 44.65,2.31 45.31,2.17 45.97,2.03 46.63,1.83 47.29,1.88 47.95,1.93 48.62,1.93 49.28,1.93 49.94,3.18 50.60,2.46 51.26,2.60 51.93,2.75 52.59,2.80 53.25,2.80 53.91,2.80 54.57,1.54 55.24,2.46 55.90,2.56 56.56,2.56 57.22,2.70 57.88,2.75 58.55,2.75 59.21,3.13 59.87,3.28 60.53,3.52 61.19,3.71 61.85,3.91 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='8.24' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='54.57' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_left gt_striped">Hospitalized</td>
<td class="gt_row gt_right gt_striped">95.7K</td>
<td class="gt_row gt_right gt_striped">80.9K</td>
<td class="gt_row gt_right gt_striped">&minus;15&percnt;</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,9.26 3.61,9.26 4.27,9.23 4.93,9.21 5.59,9.19 6.25,9.19 6.92,9.17 7.58,9.19 8.24,9.18 8.90,9.15 9.56,9.10 10.23,9.03 10.89,9.00 11.55,8.97 12.21,8.94 12.87,8.88 13.54,8.80 14.20,8.72 14.86,8.64 15.52,8.56 16.18,8.47 16.85,8.41 17.51,8.32 18.17,8.17 18.83,8.04 19.49,7.92 20.15,7.78 20.82,7.63 21.48,7.52 22.14,7.35 22.80,7.14 23.46,6.91 24.13,6.71 24.79,6.56 25.45,6.35 26.11,6.18 26.77,5.99 27.44,5.70 28.10,5.45 28.76,5.24 29.42,5.00 30.08,4.77 30.75,4.64 31.41,4.39 32.07,4.08 32.73,3.84 33.39,3.63 34.05,3.43 34.72,3.29 35.38,3.20 36.04,3.02 36.70,2.77 37.36,2.56 38.03,2.39 38.69,2.32 39.35,2.24 40.01,2.23 40.67,2.06 41.34,1.84 42.00,1.72 42.66,1.72 43.32,1.70 43.98,1.70 44.65,1.81 45.31,1.71 45.97,1.61 46.63,1.56 47.29,1.54 47.95,1.56 48.62,1.65 49.28,1.80 49.94,1.79 50.60,1.73 51.26,1.65 51.93,1.68 52.59,1.75 53.25,1.86 53.91,2.09 54.57,2.13 55.24,2.07 55.90,2.21 56.56,2.30 57.22,2.42 57.88,2.57 58.55,2.78 59.21,2.84 59.87,2.84 60.53,2.94 61.19,3.08 61.85,3.08 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='2.95' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='3.61' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='47.29' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_left">Deaths</td>
<td class="gt_row gt_right">1.6K</td>
<td class="gt_row gt_right">2.1K</td>
<td class="gt_row gt_right">+28&percnt;</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,8.94 3.61,9.01 4.27,9.02 4.93,9.10 5.59,9.12 6.25,9.13 6.92,9.17 7.58,9.19 8.24,9.26 8.90,9.24 9.56,9.22 10.23,9.25 10.89,9.23 11.55,9.19 12.21,9.20 12.87,9.08 13.54,9.07 14.20,9.05 14.86,9.03 15.52,9.10 16.18,9.14 16.85,9.07 17.51,9.09 18.17,9.13 18.83,9.12 19.49,9.10 20.15,9.02 20.82,8.99 21.48,9.05 22.14,9.01 22.80,8.92 23.46,8.89 24.13,8.89 24.79,8.67 25.45,8.65 26.11,8.63 26.77,8.52 27.44,8.44 28.10,8.37 28.76,8.24 29.42,8.09 30.08,8.04 30.75,8.01 31.41,7.98 32.07,7.57 32.73,7.65 33.39,7.38 34.05,7.43 34.72,7.42 35.38,7.39 36.04,7.05 36.70,7.22 37.36,6.73 38.03,6.29 38.69,6.04 39.35,5.90 40.01,5.86 40.67,5.69 41.34,5.44 42.00,5.23 42.66,4.94 43.32,4.81 43.98,4.81 44.65,4.73 45.31,4.52 45.97,4.52 46.63,4.22 47.29,3.76 47.95,3.68 48.62,3.68 49.28,3.64 49.94,4.35 50.60,3.93 51.26,3.85 51.93,3.64 52.59,3.43 53.25,3.30 53.91,3.34 54.57,2.38 55.24,2.59 55.90,2.30 56.56,2.21 57.22,2.17 57.88,2.09 58.55,2.09 59.21,2.00 59.87,1.67 60.53,1.58 61.19,1.75 61.85,1.54 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='8.24' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='61.85' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_left gt_striped">New Vaccine Doses</td>
<td class="gt_row gt_right gt_striped">722.0K</td>
<td class="gt_row gt_right gt_striped">653.0K</td>
<td class="gt_row gt_right gt_striped">&minus;10&percnt;</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,6.00 3.61,5.14 4.27,4.98 4.93,3.68 5.59,2.17 6.25,1.92 6.92,1.54 7.58,2.55 8.24,3.96 8.90,4.74 9.56,6.41 10.23,8.10 10.89,8.16 11.55,9.17 12.21,9.26 12.87,9.01 13.54,8.93 14.20,8.74 14.86,8.97 15.52,9.09 16.18,9.03 16.85,9.18 17.51,9.08 18.17,9.26 18.83,9.14 19.49,8.97 20.15,8.88 20.82,8.80 21.48,8.30 22.14,8.51 22.80,8.24 23.46,7.99 24.13,7.90 24.79,7.43 25.45,7.37 26.11,7.29 26.77,7.17 27.44,7.07 28.10,7.12 28.76,6.84 29.42,6.90 30.08,6.68 30.75,6.75 31.41,6.63 32.07,6.34 32.73,6.46 33.39,6.84 34.05,6.66 34.72,6.39 35.38,6.59 36.04,6.00 36.70,6.04 37.36,5.93 38.03,5.28 38.69,5.10 39.35,5.00 40.01,4.45 40.67,4.89 41.34,4.81 42.00,4.41 42.66,4.59 43.32,4.49 43.98,4.44 44.65,4.48 45.31,4.34 45.97,4.32 46.63,4.06 47.29,4.22 47.95,3.63 48.62,3.81 49.28,4.63 49.94,4.97 50.60,5.24 51.26,5.43 51.93,5.75 52.59,6.55 53.25,6.68 53.91,6.20 54.57,6.04 55.24,5.82 55.90,6.04 56.56,5.90 57.22,5.88 57.88,5.86 58.55,6.04 59.21,5.92 59.87,6.06 60.53,6.29 61.19,7.04 61.85,7.42 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='12.21' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='18.17' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='6.92' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_left">Fully Vaccinated</td>
<td class="gt_row gt_right">178.0M</td>
<td class="gt_row gt_right">183.0M</td>
<td class="gt_row gt_right">+3&percnt;</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,9.26 3.61,9.00 4.27,9.00 4.93,8.74 5.59,8.49 6.25,8.49 6.92,8.23 7.58,8.23 8.24,8.23 8.90,7.97 9.56,7.97 10.23,7.97 10.89,7.71 11.55,7.71 12.21,7.71 12.87,7.71 13.54,7.46 14.20,7.46 14.86,7.46 15.52,7.20 16.18,7.20 16.85,7.20 17.51,7.20 18.17,6.94 18.83,6.94 19.49,6.94 20.15,6.94 20.82,6.69 21.48,6.69 22.14,6.69 22.80,6.69 23.46,6.43 24.13,6.43 24.79,6.43 25.45,6.43 26.11,6.17 26.77,6.17 27.44,6.17 28.10,6.17 28.76,5.91 29.42,5.91 30.08,5.91 30.75,5.91 31.41,5.66 32.07,5.66 32.73,5.66 33.39,5.66 34.05,5.40 34.72,5.40 35.38,5.40 36.04,5.14 36.70,5.14 37.36,5.14 38.03,4.89 38.69,4.89 39.35,4.89 40.01,4.63 40.67,4.63 41.34,4.63 42.00,4.37 42.66,4.37 43.32,4.11 43.98,4.11 44.65,3.86 45.31,3.86 45.97,3.86 46.63,3.60 47.29,3.60 47.95,3.34 48.62,3.34 49.28,3.34 49.94,3.34 50.60,3.09 51.26,3.09 51.93,3.09 52.59,2.83 53.25,2.83 53.91,2.57 54.57,2.57 55.24,2.57 55.90,2.31 56.56,2.31 57.22,2.06 57.88,2.06 58.55,2.06 59.21,1.80 59.87,1.80 60.53,1.80 61.19,1.54 61.85,1.54 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='2.95' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='61.19' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /><circle cx='61.85' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_left gt_striped">Pct. Fully Vaccinated</td>
<td class="gt_row gt_right gt_striped">52.9</td>
<td class="gt_row gt_right gt_striped">54.4</td>
<td class="gt_row gt_right gt_striped">+3&percnt;</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,9.26 3.61,9.08 4.27,9.00 4.93,8.82 5.59,8.48 6.25,8.39 6.92,8.22 7.58,8.13 8.24,8.13 8.90,8.04 9.56,7.96 10.23,7.87 10.89,7.78 11.55,7.70 12.21,7.61 12.87,7.61 13.54,7.52 14.20,7.44 14.86,7.35 15.52,7.26 16.18,7.18 16.85,7.18 17.51,7.09 18.17,7.00 18.83,7.00 19.49,6.92 20.15,6.83 20.82,6.74 21.48,6.66 22.14,6.66 22.80,6.57 23.46,6.57 24.13,6.48 24.79,6.40 25.45,6.31 26.11,6.22 26.77,6.22 27.44,6.14 28.10,6.05 28.76,6.05 29.42,5.96 30.08,5.88 30.75,5.79 31.41,5.70 32.07,5.70 32.73,5.62 33.39,5.53 34.05,5.44 34.72,5.36 35.38,5.27 36.04,5.18 36.70,5.18 37.36,5.10 38.03,5.01 38.69,4.84 39.35,4.75 40.01,4.66 40.67,4.58 41.34,4.49 42.00,4.40 42.66,4.32 43.32,4.23 43.98,4.06 44.65,3.97 45.31,3.88 45.97,3.80 46.63,3.71 47.29,3.62 47.95,3.45 48.62,3.36 49.28,3.36 49.94,3.36 50.60,3.19 51.26,3.02 51.93,2.93 52.59,2.84 53.25,2.76 53.91,2.67 54.57,2.58 55.24,2.50 55.90,2.41 56.56,2.24 57.22,2.15 57.88,2.06 58.55,1.98 59.21,1.89 59.87,1.80 60.53,1.72 61.19,1.63 61.85,1.54 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='2.95' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='61.85' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
  </tbody>
  <tfoot class="gt_sourcenotes">
    <tr>
      <td class="gt_sourcenote" colspan="5">Latest data: Friday</td>
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
<td class="gt_row gt_right">570.0K</td>
<td class="gt_row gt_right">496.0K</td>
<td class="gt_row gt_right">&minus;13&percnt;</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,9.26 3.61,9.12 4.27,9.07 4.93,9.23 5.59,9.10 6.25,9.02 6.92,8.99 7.58,8.91 8.24,8.78 8.90,8.49 9.56,8.22 10.23,8.09 10.89,7.82 11.55,7.63 12.21,7.47 12.87,7.24 13.54,6.97 14.20,6.68 14.86,6.33 15.52,5.99 16.18,5.80 16.85,5.59 17.51,5.35 18.17,5.32 18.83,5.24 19.49,5.27 20.15,4.92 20.82,4.92 21.48,4.87 22.14,4.71 22.80,4.42 23.46,4.10 24.13,3.75 24.79,3.59 25.45,3.46 26.11,3.33 26.77,3.17 27.44,3.06 28.10,2.95 28.76,2.82 29.42,2.47 30.08,2.31 30.75,2.47 31.41,2.18 32.07,2.13 32.73,1.94 33.39,1.84 34.05,1.92 34.72,1.97 35.38,1.89 36.04,1.78 36.70,1.68 37.36,1.68 38.03,1.65 38.69,1.70 39.35,1.68 40.01,1.76 40.67,1.65 41.34,1.62 42.00,1.62 42.66,1.54 43.32,1.73 43.98,1.70 44.65,1.70 45.31,1.76 45.97,2.02 46.63,2.02 47.29,2.26 47.95,2.37 48.62,2.58 49.28,2.66 49.94,3.59 50.60,3.14 51.26,3.51 51.93,3.67 52.59,3.99 53.25,4.15 53.91,4.39 54.57,3.72 55.24,4.44 55.90,4.68 56.56,4.92 57.22,5.05 57.88,4.76 58.55,4.76 59.21,5.03 59.87,5.35 60.53,5.43 61.19,5.69 61.85,5.96 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='2.95' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='42.66' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_left gt_striped">Deaths</td>
<td class="gt_row gt_right gt_striped">8.9K</td>
<td class="gt_row gt_right gt_striped">8.3K</td>
<td class="gt_row gt_right gt_striped">&minus;6&percnt;</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,7.94 3.61,8.09 4.27,8.49 4.93,8.64 5.59,8.61 6.25,8.98 6.92,9.26 7.58,9.01 8.24,8.70 8.90,8.49 9.56,8.77 10.23,8.70 10.89,8.64 11.55,8.73 12.21,8.37 12.87,8.00 13.54,8.09 14.20,8.06 14.86,8.21 15.52,8.06 16.18,7.87 16.85,8.09 17.51,8.55 18.17,6.95 18.83,6.92 19.49,6.80 20.15,7.23 20.82,6.28 21.48,6.18 22.14,5.88 22.80,6.80 23.46,6.12 24.13,5.23 24.79,4.37 25.45,4.59 26.11,4.62 26.77,4.49 27.44,4.28 28.10,4.16 28.76,4.06 29.42,3.66 30.08,3.72 30.75,3.66 31.41,3.39 32.07,2.68 32.73,2.93 33.39,3.08 34.05,3.11 34.72,3.08 35.38,3.17 36.04,2.65 36.70,3.20 37.36,2.80 38.03,2.46 38.69,2.46 39.35,2.37 40.01,2.19 40.67,2.16 41.34,1.85 42.00,1.85 42.66,1.54 43.32,1.85 43.98,1.85 44.65,2.34 45.31,2.59 45.97,3.48 46.63,2.99 47.29,3.17 47.95,2.99 48.62,3.29 49.28,3.42 49.94,4.12 50.60,3.48 51.26,4.59 51.93,4.80 52.59,5.48 53.25,5.23 53.91,5.66 54.57,5.17 55.24,5.48 55.90,5.32 56.56,5.45 57.22,5.66 57.88,6.37 58.55,6.15 59.21,6.52 59.87,6.83 60.53,6.95 61.19,7.29 61.85,7.23 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='6.92' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='42.66' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_left">New Vaccine Doses</td>
<td class="gt_row gt_right">32.5M</td>
<td class="gt_row gt_right">29.2M</td>
<td class="gt_row gt_right">&minus;10&percnt;</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,1.54 3.61,1.98 4.27,2.14 4.93,2.63 5.59,2.63 6.25,3.44 6.92,4.04 7.58,4.97 8.24,5.35 8.90,6.16 9.56,6.43 10.23,7.08 10.89,7.57 11.55,8.06 12.21,8.44 12.87,8.66 13.54,8.50 14.20,8.22 14.86,8.44 15.52,8.01 16.18,7.90 16.85,8.12 17.51,7.90 18.17,7.95 18.83,8.33 19.49,8.01 20.15,7.68 20.82,7.57 21.48,7.08 22.14,6.38 22.80,5.73 23.46,5.02 24.13,4.48 24.79,4.15 25.45,3.88 26.11,2.96 26.77,3.34 27.44,2.19 28.10,1.92 28.76,2.52 29.42,2.74 30.08,2.79 30.75,3.39 31.41,3.06 32.07,4.31 32.73,4.80 33.39,5.35 34.05,5.24 34.72,5.07 35.38,5.45 36.04,5.35 36.70,5.40 37.36,5.51 38.03,5.29 38.69,5.45 39.35,5.78 40.01,5.40 40.67,6.27 41.34,5.89 42.00,5.35 42.66,4.59 43.32,3.66 43.98,3.28 44.65,2.58 45.31,2.25 45.97,2.74 46.63,2.41 47.29,3.39 47.95,5.18 48.62,5.89 49.28,6.60 49.94,7.19 50.60,7.36 51.26,8.01 51.93,7.57 52.59,7.46 53.25,6.81 53.91,6.54 54.57,6.32 55.24,6.92 55.90,7.57 56.56,7.95 57.22,8.33 57.88,7.90 58.55,8.50 59.21,8.77 59.87,8.66 60.53,9.09 61.19,9.09 61.85,9.26 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='61.85' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='2.95' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_left gt_striped">Fully Vaccinated</td>
<td class="gt_row gt_right gt_striped">2.3B</td>
<td class="gt_row gt_right gt_striped">2.6B</td>
<td class="gt_row gt_right gt_striped">+9&percnt;</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,9.26 3.61,9.23 4.27,9.19 4.93,9.16 5.59,9.12 6.25,9.09 6.92,9.06 7.58,9.03 8.24,8.99 8.90,8.96 9.56,8.92 10.23,8.87 10.89,8.85 11.55,8.82 12.21,8.79 12.87,8.75 13.54,8.71 14.20,8.67 14.86,8.62 15.52,8.59 16.18,8.56 16.85,8.54 17.51,8.49 18.17,8.46 18.83,8.43 19.49,8.38 20.15,8.35 20.82,8.32 21.48,8.29 22.14,8.24 22.80,8.20 23.46,8.16 24.13,8.11 24.79,8.07 25.45,8.05 26.11,8.02 26.77,7.99 27.44,7.94 28.10,7.90 28.76,7.86 29.42,7.83 30.08,7.80 30.75,7.77 31.41,7.72 32.07,7.68 32.73,7.60 33.39,4.51 34.05,4.47 34.72,4.43 35.38,4.39 36.04,4.35 36.70,4.31 37.36,4.27 38.03,4.23 38.69,4.16 39.35,4.16 40.01,4.12 40.67,4.08 41.34,4.00 42.00,3.96 42.66,3.48 43.32,3.40 43.98,3.36 44.65,3.32 45.31,3.28 45.97,3.24 46.63,3.17 47.29,3.13 47.95,3.09 48.62,3.05 49.28,3.01 49.94,2.65 50.60,2.61 51.26,2.53 51.93,2.45 52.59,2.41 53.25,2.37 53.91,2.33 54.57,2.29 55.24,2.22 55.90,2.02 56.56,1.98 57.22,1.94 57.88,1.82 58.55,1.78 59.21,1.74 59.87,1.66 60.53,1.66 61.19,1.58 61.85,1.54 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='2.95' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='61.85' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_left">Pct. Fully Vaccinated</td>
<td class="gt_row gt_right">29.7</td>
<td class="gt_row gt_right">32.5</td>
<td class="gt_row gt_right">+9&percnt;</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,9.26 3.61,9.23 4.27,9.19 4.93,9.16 5.59,9.12 6.25,9.09 6.92,9.06 7.58,9.03 8.24,8.99 8.90,8.96 9.56,8.92 10.23,8.87 10.89,8.85 11.55,8.82 12.21,8.79 12.87,8.75 13.54,8.71 14.20,8.67 14.86,8.62 15.52,8.59 16.18,8.56 16.85,8.53 17.51,8.50 18.17,8.47 18.83,8.43 19.49,8.37 20.15,8.34 20.82,8.31 21.48,8.28 22.14,8.25 22.80,8.18 23.46,8.15 24.13,8.12 24.79,8.06 25.45,8.06 26.11,8.03 26.77,8.00 27.44,7.94 28.10,7.90 28.76,7.87 29.42,7.84 30.08,7.81 30.75,7.78 31.41,7.72 32.07,7.65 32.73,7.62 33.39,4.51 34.05,4.44 34.72,4.41 35.38,4.38 36.04,4.35 36.70,4.29 37.36,4.26 38.03,4.22 38.69,4.16 39.35,4.13 40.01,4.10 40.67,4.07 41.34,4.01 42.00,3.98 42.66,3.48 43.32,3.41 43.98,3.38 44.65,3.32 45.31,3.29 45.97,3.23 46.63,3.16 47.29,3.13 47.95,3.07 48.62,3.04 49.28,3.01 49.94,2.63 50.60,2.60 51.26,2.54 51.93,2.48 52.59,2.42 53.25,2.38 53.91,2.32 54.57,2.26 55.24,2.23 55.90,2.01 56.56,1.95 57.22,1.92 57.88,1.82 58.55,1.76 59.21,1.73 59.87,1.67 60.53,1.64 61.19,1.57 61.85,1.54 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='2.95' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='61.85' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
  </tbody>
  <tfoot class="gt_sourcenotes">
    <tr>
      <td class="gt_sourcenote" colspan="5">Latest data: Friday</td>
    </tr>
  </tfoot>
  
</table>
</div>

## Case Acceleration

As of Friday, the 14-day percent change in average new cases was:
  
- -38% in Champaign County
- -16% in Illinois
- -16% in the United States
- -13% worldwide

![Case Acceleration](https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/new_cases_change_facet.png)

This chart measures how quickly the average number of new cases is changing, or roughly, the slope of the new-cases charts above. If the case acceleration is positive, then the average number of new cases is increasing. If it is negative, then the average number of new cases is decreasing.

## Death Acceleration

As of Friday, the 14-day percent change in average new deaths was:
  
- 22% in Illinois
- 28% in the United States
- -6% worldwide

![Death Acceleration](https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/new_deaths_change_facet.png)

This chart measures how quickly the average number of new deaths is changing, or roughly, the slope of the new-deaths charts above. If the death acceleration is positive, then the average number of new deaths is increasing. If it is negative, then the average number of new deaths is decreasing.


