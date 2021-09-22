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
<td class="gt_row gt_right">55</td>
<td class="gt_row gt_right">&minus;40&percnt;</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,9.24 3.61,9.21 4.27,9.23 4.93,9.18 5.59,9.19 6.25,9.16 6.92,9.16 7.58,9.15 8.24,9.20 8.90,9.20 9.56,9.25 10.23,9.26 10.89,9.24 11.55,9.15 12.21,9.17 12.87,9.08 13.54,9.01 14.20,8.94 14.86,8.91 15.52,8.83 16.18,8.87 16.85,8.77 17.51,8.81 18.17,8.61 18.83,8.55 19.49,8.29 20.15,8.34 20.82,7.91 21.48,7.85 22.14,7.51 22.80,7.67 23.46,7.69 24.13,7.54 24.79,7.30 25.45,7.18 26.11,7.02 26.77,7.02 27.44,6.73 28.10,6.54 28.76,6.39 29.42,6.22 30.08,6.11 30.75,5.82 31.41,5.45 32.07,5.36 32.73,4.95 33.39,4.79 34.05,4.53 34.72,4.66 35.38,4.44 36.04,4.52 36.70,4.44 37.36,4.58 38.03,4.73 38.69,4.11 39.35,4.31 40.01,4.26 40.67,3.96 41.34,3.97 42.00,3.77 42.66,3.74 43.32,4.08 43.98,3.81 44.65,3.82 45.31,3.96 45.97,3.70 46.63,3.59 47.29,3.17 47.95,2.61 48.62,2.14 49.28,1.54 49.94,1.54 50.60,1.94 51.26,2.28 51.93,2.84 52.59,3.42 53.25,3.42 53.91,3.88 54.57,4.01 55.24,3.84 55.90,4.28 56.56,4.08 57.22,4.48 57.88,4.90 58.55,5.55 59.21,5.61 59.87,5.85 60.53,5.51 61.19,5.91 61.85,5.83 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='10.23' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='49.28' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /><circle cx='49.94' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_left gt_striped">Hospitalized</td>
<td class="gt_row gt_right gt_striped">69</td>
<td class="gt_row gt_right gt_striped">24</td>
<td class="gt_row gt_right gt_striped">&minus;66&percnt;</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,9.09 3.61,9.09 4.27,9.09 4.93,9.09 5.59,9.09 6.25,9.09 6.92,9.09 7.58,9.26 8.24,9.26 8.90,9.26 9.56,9.26 10.23,9.26 10.89,9.26 11.55,9.26 12.21,8.62 12.87,8.62 13.54,8.62 14.20,8.62 14.86,8.62 15.52,8.62 16.18,8.62 16.85,8.61 17.51,8.61 18.17,8.61 18.83,8.61 19.49,8.61 20.15,8.61 20.82,8.61 21.48,7.04 22.14,7.04 22.80,7.04 23.46,7.04 24.13,7.04 24.79,7.04 25.45,7.04 26.11,4.82 26.77,4.82 27.44,4.82 28.10,4.82 28.76,4.82 29.42,4.82 30.08,4.82 30.75,3.01 31.41,3.01 32.07,3.01 32.73,3.01 33.39,3.01 34.05,3.01 34.72,3.01 35.38,2.07 36.04,2.07 36.70,2.07 37.36,2.07 38.03,2.07 38.69,2.07 39.35,2.07 40.01,1.76 40.67,1.76 41.34,1.76 42.00,1.76 42.66,1.76 43.32,1.76 43.98,1.76 44.65,1.54 45.31,1.54 45.97,1.54 46.63,1.54 47.29,1.54 47.95,1.54 48.62,1.54 49.28,1.58 49.94,1.58 50.60,1.58 51.26,1.58 51.93,1.58 52.59,1.58 53.25,1.58 53.91,1.88 54.57,1.88 55.24,1.88 55.90,1.88 56.56,1.88 57.22,1.88 57.88,1.88 58.55,7.32 59.21,7.32 59.87,7.32 60.53,7.32 61.19,7.32 61.85,7.32 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='7.58' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='8.24' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='8.90' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='9.56' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='10.23' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='10.89' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='11.55' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='44.65' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /><circle cx='45.31' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /><circle cx='45.97' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /><circle cx='46.63' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /><circle cx='47.29' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /><circle cx='47.95' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /><circle cx='48.62' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_left">Deaths</td>
<td class="gt_row gt_right">14</td>
<td class="gt_row gt_right">15</td>
<td class="gt_row gt_right">+7&percnt;</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,6.53 3.61,6.53 4.27,6.53 4.93,6.53 5.59,6.53 6.25,6.53 6.92,6.53 7.58,6.53 8.24,6.53 8.90,6.53 9.56,6.99 10.23,6.99 10.89,7.44 11.55,8.35 12.21,7.90 12.87,8.35 13.54,8.35 14.20,8.35 14.86,8.35 15.52,8.35 16.18,8.35 16.85,8.80 17.51,8.80 18.17,8.35 18.83,8.35 19.49,8.35 20.15,8.80 20.82,8.80 21.48,8.80 22.14,8.80 22.80,9.26 23.46,9.26 24.13,9.26 24.79,9.26 25.45,8.80 26.11,8.80 26.77,8.80 27.44,8.80 28.10,8.80 28.76,8.80 29.42,8.80 30.08,8.80 30.75,8.80 31.41,8.35 32.07,8.35 32.73,8.35 33.39,8.35 34.05,8.35 34.72,7.44 35.38,7.44 36.04,7.44 36.70,7.44 37.36,7.44 38.03,6.99 38.69,7.44 39.35,7.44 40.01,6.53 40.67,6.08 41.34,6.08 42.00,6.08 42.66,6.08 43.32,5.17 43.98,3.81 44.65,3.81 45.31,3.81 45.97,4.27 46.63,4.27 47.29,4.27 47.95,4.27 48.62,3.36 49.28,3.36 49.94,3.36 50.60,2.90 51.26,2.90 51.93,3.81 52.59,3.81 53.25,3.36 53.91,2.45 54.57,2.45 55.24,2.90 55.90,2.90 56.56,2.45 57.22,1.54 57.88,1.54 58.55,2.00 59.21,2.00 59.87,2.00 60.53,2.90 61.19,3.36 61.85,3.36 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='22.80' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='23.46' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='24.13' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='24.79' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='57.22' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /><circle cx='57.88' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_left gt_striped">New Vaccine Doses</td>
<td class="gt_row gt_right gt_striped">327</td>
<td class="gt_row gt_right gt_striped">297</td>
<td class="gt_row gt_right gt_striped">&minus;9&percnt;</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,4.24 3.61,2.18 4.27,2.31 4.93,1.79 5.59,1.67 6.25,1.54 6.92,1.92 7.58,4.71 8.24,7.38 8.90,7.38 9.56,8.51 10.23,9.26 10.89,9.11 11.55,9.00 12.21,9.03 12.87,9.07 13.54,8.81 14.20,7.84 14.86,7.34 15.52,7.75 16.18,7.95 16.85,8.05 17.51,7.93 18.17,8.06 18.83,7.71 19.49,7.41 20.15,7.38 20.82,7.49 21.48,7.24 22.14,7.28 22.80,7.39 23.46,8.01 24.13,8.01 24.79,7.45 25.45,7.23 26.11,7.30 26.77,7.23 27.44,7.02 28.10,7.00 28.76,7.15 29.42,7.67 30.08,7.69 30.75,7.73 31.41,7.71 32.07,7.73 32.73,7.73 33.39,7.95 34.05,7.73 34.72,7.47 35.38,7.08 36.04,6.85 36.70,6.63 37.36,6.54 38.03,6.03 38.69,5.87 39.35,5.85 40.01,6.00 40.67,6.05 41.34,6.11 42.00,5.98 42.66,5.85 43.32,5.98 43.98,6.31 44.65,6.24 45.31,6.16 45.97,6.07 46.63,5.81 47.29,5.98 47.95,5.75 48.62,5.57 49.28,5.51 49.94,5.68 50.60,5.70 51.26,6.50 51.93,7.00 52.59,7.26 53.25,7.24 53.91,7.47 54.57,7.60 55.24,7.84 55.90,7.24 56.56,7.13 57.22,7.17 57.88,7.13 58.55,7.30 59.21,7.34 59.87,7.39 60.53,7.73 61.19,7.82 61.85,7.82 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='10.23' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='6.25' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_left">Fully Vaccinated</td>
<td class="gt_row gt_right">110,000</td>
<td class="gt_row gt_right">112,000</td>
<td class="gt_row gt_right">+2&percnt;</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,9.26 3.61,8.81 4.27,8.75 4.93,8.64 5.59,8.53 6.25,8.36 6.92,8.25 7.58,8.25 8.24,8.25 8.90,8.25 9.56,8.25 10.23,8.25 10.89,7.69 11.55,7.69 12.21,7.69 12.87,7.69 13.54,7.69 14.20,7.13 14.86,7.13 15.52,7.13 16.18,7.13 16.85,7.13 17.51,7.13 18.17,7.13 18.83,6.57 19.49,6.57 20.15,6.57 20.82,6.57 21.48,6.57 22.14,6.01 22.80,6.01 23.46,6.01 24.13,6.01 24.79,6.01 25.45,6.01 26.11,6.01 26.77,6.01 27.44,5.46 28.10,5.46 28.76,5.46 29.42,5.46 30.08,5.46 30.75,5.46 31.41,5.46 32.07,5.46 32.73,4.90 33.39,4.90 34.05,4.90 34.72,4.90 35.38,4.90 36.04,4.90 36.70,4.90 37.36,4.34 38.03,4.34 38.69,4.34 39.35,4.34 40.01,4.34 40.67,3.78 41.34,3.78 42.00,3.78 42.66,3.78 43.32,3.78 43.98,3.78 44.65,3.22 45.31,3.22 45.97,3.22 46.63,3.22 47.29,3.22 47.95,3.22 48.62,3.22 49.28,2.66 49.94,2.66 50.60,2.66 51.26,2.66 51.93,2.66 52.59,2.66 53.25,2.10 53.91,2.10 54.57,2.10 55.24,2.10 55.90,2.10 56.56,2.10 57.22,2.10 57.88,1.54 58.55,1.54 59.21,1.54 59.87,1.54 60.53,1.54 61.19,1.54 61.85,1.54 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='2.95' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='57.88' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /><circle cx='58.55' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /><circle cx='59.21' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /><circle cx='59.87' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /><circle cx='60.53' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /><circle cx='61.19' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /><circle cx='61.85' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_left gt_striped">Pct. Fully Vaccinated</td>
<td class="gt_row gt_right gt_striped">53</td>
<td class="gt_row gt_right gt_striped">54</td>
<td class="gt_row gt_right gt_striped">+2&percnt;</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,9.26 3.61,8.80 4.27,8.80 4.93,8.68 5.59,8.57 6.25,8.45 6.92,8.34 7.58,8.22 8.24,8.11 8.90,8.11 9.56,8.11 10.23,8.11 10.89,7.99 11.55,7.76 12.21,7.65 12.87,7.65 13.54,7.53 14.20,7.41 14.86,7.41 15.52,7.30 16.18,7.18 16.85,7.07 17.51,7.07 18.17,6.95 18.83,6.84 19.49,6.72 20.15,6.61 20.82,6.49 21.48,6.38 22.14,6.38 22.80,6.38 23.46,6.26 24.13,6.15 24.79,6.03 25.45,6.03 26.11,5.92 26.77,5.92 27.44,5.80 28.10,5.80 28.76,5.69 29.42,5.57 30.08,5.57 30.75,5.46 31.41,5.34 32.07,5.34 32.73,5.23 33.39,5.23 34.05,5.11 34.72,5.00 35.38,4.88 36.04,4.77 36.70,4.77 37.36,4.65 38.03,4.54 38.69,4.42 39.35,4.31 40.01,4.19 40.67,4.19 41.34,4.08 42.00,4.08 42.66,3.85 43.32,3.85 43.98,3.73 44.65,3.62 45.31,3.50 45.97,3.50 46.63,3.39 47.29,3.27 47.95,3.15 48.62,3.15 49.28,2.92 49.94,2.92 50.60,2.81 51.26,2.81 51.93,2.69 52.59,2.58 53.25,2.58 53.91,2.46 54.57,2.35 55.24,2.35 55.90,2.23 56.56,2.12 57.22,2.00 57.88,1.89 58.55,1.77 59.21,1.77 59.87,1.66 60.53,1.66 61.19,1.54 61.85,1.54 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='2.95' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='61.19' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /><circle cx='61.85' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
  </tbody>
  
  
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
<td class="gt_row gt_right">3.8K</td>
<td class="gt_row gt_right">3.3K</td>
<td class="gt_row gt_right">&minus;13&percnt;</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,9.23 3.61,9.25 4.27,9.26 4.93,9.24 5.59,9.21 6.25,9.21 6.92,9.15 7.58,9.13 8.24,9.10 8.90,9.13 9.56,9.17 10.23,9.09 10.89,9.04 11.55,8.99 12.21,8.92 12.87,8.87 13.54,8.75 14.20,8.66 14.86,8.67 15.52,8.60 16.18,8.53 16.85,8.52 17.51,8.42 18.17,8.26 18.83,8.20 19.49,8.16 20.15,8.10 20.82,7.80 21.48,7.60 22.14,7.49 22.80,7.43 23.46,7.32 24.13,7.07 24.79,6.77 25.45,6.86 26.11,6.63 26.77,6.42 27.44,6.33 28.10,6.19 28.76,5.91 29.42,5.84 30.08,5.49 30.75,5.30 31.41,5.08 32.07,4.94 32.73,4.72 33.39,4.64 34.05,4.22 34.72,4.22 35.38,4.09 36.04,3.84 36.70,3.74 37.36,3.76 38.03,3.58 38.69,3.62 39.35,3.60 40.01,3.21 40.67,3.18 41.34,3.34 42.00,3.19 42.66,3.36 43.32,3.21 43.98,2.97 44.65,2.97 45.31,3.18 45.97,2.59 46.63,2.75 47.29,2.26 47.95,2.06 48.62,2.02 49.28,1.74 49.94,1.54 50.60,1.91 51.26,1.89 51.93,2.50 52.59,2.81 53.25,2.68 53.91,2.86 54.57,2.74 55.24,2.74 55.90,2.94 56.56,2.41 57.22,2.33 57.88,2.44 58.55,2.88 59.21,3.16 59.87,3.21 60.53,3.08 61.19,3.51 61.85,3.67 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='4.27' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='49.94' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_left gt_striped">Hospitalized</td>
<td class="gt_row gt_right gt_striped">2.3K</td>
<td class="gt_row gt_right gt_striped">2.0K</td>
<td class="gt_row gt_right gt_striped">&minus;13&percnt;</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,9.04 3.61,9.13 4.27,9.05 4.93,8.99 5.59,9.03 6.25,9.16 6.92,9.08 7.58,9.18 8.24,9.25 8.90,9.26 9.56,9.10 10.23,8.85 10.89,9.09 11.55,9.06 12.21,9.08 12.87,9.05 13.54,9.02 14.20,8.80 14.86,8.87 15.52,8.75 16.18,8.88 16.85,8.85 17.51,8.74 18.17,8.64 18.83,8.39 19.49,8.51 20.15,8.29 20.82,8.12 21.48,8.07 22.14,7.92 22.80,7.92 23.46,7.61 24.13,7.39 24.79,7.30 25.45,7.21 26.11,7.21 26.77,7.06 27.44,6.92 28.10,6.40 28.76,6.20 29.42,6.05 30.08,6.05 30.75,5.62 31.41,5.69 32.07,5.34 32.73,4.91 33.39,4.64 34.05,4.44 34.72,4.28 35.38,4.13 36.04,3.85 36.70,3.46 37.36,3.11 38.03,2.99 38.69,2.95 39.35,2.91 40.01,3.03 40.67,2.99 41.34,2.68 42.00,2.29 42.66,2.13 43.32,2.21 43.98,1.97 44.65,2.29 45.31,2.29 45.97,2.13 46.63,1.86 47.29,1.97 47.95,1.93 48.62,1.78 49.28,1.74 49.94,2.13 50.60,1.82 51.26,1.62 51.93,1.62 52.59,1.58 53.25,1.54 53.91,1.97 54.57,1.93 55.24,1.93 55.90,1.90 56.56,2.01 57.22,2.29 57.88,2.60 58.55,3.07 59.21,3.58 59.87,3.31 60.53,2.76 61.19,2.80 61.85,2.80 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='8.90' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='53.25' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_left">Deaths</td>
<td class="gt_row gt_right">31</td>
<td class="gt_row gt_right">35</td>
<td class="gt_row gt_right">+16&percnt;</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,8.12 3.61,8.18 4.27,8.33 4.93,8.36 5.59,8.42 6.25,8.54 6.92,8.78 7.58,8.72 8.24,8.75 8.90,8.84 9.56,8.93 10.23,8.57 10.89,8.51 11.55,8.48 12.21,8.54 12.87,8.39 13.54,8.15 14.20,8.06 14.86,8.18 15.52,8.15 16.18,8.30 16.85,8.30 17.51,8.30 18.17,8.54 18.83,8.51 19.49,8.72 20.15,8.63 20.82,8.66 21.48,8.78 22.14,9.05 22.80,9.14 23.46,9.14 24.13,9.14 24.79,9.26 25.45,9.05 26.11,8.93 26.77,8.81 27.44,8.81 28.10,8.87 28.76,8.78 29.42,8.42 30.08,8.36 30.75,8.21 31.41,8.03 32.07,7.76 32.73,7.64 33.39,7.58 34.05,7.85 34.72,7.58 35.38,7.37 36.04,7.24 36.70,7.28 37.36,7.37 38.03,7.18 38.69,6.08 39.35,6.34 40.01,6.40 40.67,6.44 41.34,6.10 42.00,5.96 42.66,5.98 43.32,6.19 43.98,4.82 44.65,4.93 45.31,4.76 45.97,4.99 46.63,5.12 47.29,4.78 47.95,5.18 48.62,5.45 49.28,4.76 49.94,4.70 50.60,4.44 51.26,4.19 51.93,4.72 52.59,3.67 53.25,4.57 53.91,4.28 54.57,2.87 55.24,2.53 55.90,2.80 56.56,1.84 57.22,2.34 57.88,1.75 58.55,1.54 59.21,2.32 59.87,2.30 60.53,1.96 61.19,2.51 61.85,2.66 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='24.79' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='58.55' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_left gt_striped">New Vaccine Doses</td>
<td class="gt_row gt_right gt_striped">21K</td>
<td class="gt_row gt_right gt_striped">20K</td>
<td class="gt_row gt_right gt_striped">&minus;7&percnt;</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,3.68 3.61,1.54 4.27,1.83 4.93,1.81 5.59,1.73 6.25,1.89 6.92,2.44 7.58,4.70 8.24,7.62 8.90,7.60 9.56,8.41 10.23,9.02 10.89,9.15 11.55,9.13 12.21,9.26 12.87,9.23 13.54,9.05 14.20,8.15 14.86,7.78 15.52,7.89 16.18,8.05 16.85,8.07 17.51,8.07 18.17,8.18 18.83,8.44 19.49,8.34 20.15,8.23 20.82,8.34 21.48,8.39 22.14,8.57 22.80,8.70 23.46,8.89 24.13,8.81 24.79,7.94 25.45,7.73 26.11,6.81 26.77,6.55 27.44,6.33 28.10,6.10 28.76,6.12 29.42,6.94 30.08,6.89 30.75,7.57 31.41,6.91 32.07,6.83 32.73,6.91 33.39,7.28 34.05,6.23 34.72,5.44 35.38,4.81 36.04,4.12 36.70,3.25 37.36,3.12 38.03,2.70 38.69,3.57 39.35,4.33 40.01,4.97 40.67,6.12 41.34,6.99 42.00,6.99 42.66,7.02 43.32,7.10 43.98,6.44 44.65,6.02 45.31,5.04 45.97,3.44 46.63,3.02 47.29,2.99 47.95,2.96 48.62,3.60 49.28,3.99 49.94,4.97 50.60,6.57 51.26,7.28 51.93,7.91 52.59,7.97 53.25,8.10 53.91,8.23 54.57,8.39 55.24,8.47 55.90,8.26 56.56,7.86 57.22,8.05 57.88,8.13 58.55,8.20 59.21,8.23 59.87,8.23 60.53,8.36 61.19,8.34 61.85,8.34 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='12.21' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='3.61' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_left">Fully Vaccinated</td>
<td class="gt_row gt_right">6.8M</td>
<td class="gt_row gt_right">7.0M</td>
<td class="gt_row gt_right">+2&percnt;</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,9.26 3.61,8.82 4.27,8.82 4.93,8.68 5.59,8.61 6.25,8.46 6.92,8.39 7.58,8.25 8.24,8.18 8.90,8.18 9.56,8.18 10.23,8.10 10.89,7.96 11.55,7.89 12.21,7.82 12.87,7.74 13.54,7.67 14.20,7.60 14.86,7.45 15.52,7.38 16.18,7.31 16.85,7.24 17.51,7.17 18.17,7.17 18.83,7.09 19.49,7.02 20.15,6.95 20.82,6.88 21.48,6.81 22.14,6.73 22.80,6.73 23.46,6.73 24.13,6.59 24.79,6.45 25.45,6.37 26.11,6.23 26.77,6.16 27.44,6.16 28.10,6.08 28.76,6.01 29.42,5.94 30.08,5.87 30.75,5.80 31.41,5.65 32.07,5.58 32.73,5.58 33.39,5.51 34.05,5.29 34.72,5.15 35.38,5.00 36.04,4.79 36.70,4.64 37.36,4.57 38.03,4.50 38.69,4.43 39.35,4.28 40.01,4.21 40.67,4.14 41.34,4.07 42.00,3.99 42.66,3.92 43.32,3.85 43.98,3.78 44.65,3.63 45.31,3.49 45.97,3.20 46.63,3.13 47.29,3.06 47.95,2.91 48.62,2.84 49.28,2.77 49.94,2.70 50.60,2.62 51.26,2.62 51.93,2.55 52.59,2.48 53.25,2.41 53.91,2.34 54.57,2.26 55.24,2.19 55.90,2.12 56.56,2.05 57.22,1.98 57.88,1.90 58.55,1.83 59.21,1.76 59.87,1.69 60.53,1.69 61.19,1.54 61.85,1.54 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='2.95' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='61.19' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /><circle cx='61.85' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_left gt_striped">Pct. Fully Vaccinated</td>
<td class="gt_row gt_right gt_striped">54</td>
<td class="gt_row gt_right gt_striped">55</td>
<td class="gt_row gt_right gt_striped">+2&percnt;</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,9.26 3.61,8.80 4.27,8.80 4.93,8.71 5.59,8.61 6.25,8.43 6.92,8.34 7.58,8.25 8.24,8.16 8.90,8.16 9.56,8.16 10.23,8.06 10.89,7.97 11.55,7.88 12.21,7.79 12.87,7.70 13.54,7.70 14.20,7.60 14.86,7.51 15.52,7.42 16.18,7.33 16.85,7.24 17.51,7.14 18.17,7.14 18.83,7.05 19.49,6.96 20.15,6.87 20.82,6.87 21.48,6.78 22.14,6.78 22.80,6.69 23.46,6.69 24.13,6.59 24.79,6.50 25.45,6.41 26.11,6.23 26.77,6.23 27.44,6.13 28.10,6.04 28.76,6.04 29.42,5.95 30.08,5.86 30.75,5.77 31.41,5.68 32.07,5.58 32.73,5.58 33.39,5.49 34.05,5.31 34.72,5.12 35.38,4.94 36.04,4.76 36.70,4.67 37.36,4.57 38.03,4.48 38.69,4.39 39.35,4.30 40.01,4.21 40.67,4.11 41.34,4.11 42.00,4.02 42.66,3.93 43.32,3.84 43.98,3.75 44.65,3.66 45.31,3.47 45.97,3.20 46.63,3.10 47.29,3.01 47.95,2.92 48.62,2.83 49.28,2.74 49.94,2.74 50.60,2.64 51.26,2.64 51.93,2.55 52.59,2.46 53.25,2.37 53.91,2.28 54.57,2.28 55.24,2.19 55.90,2.19 56.56,2.09 57.22,2.00 57.88,1.91 58.55,1.82 59.21,1.73 59.87,1.73 60.53,1.63 61.19,1.54 61.85,1.54 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='2.95' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='61.19' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /><circle cx='61.85' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
  </tbody>
  
  
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
<td class="gt_row gt_right">153.0K</td>
<td class="gt_row gt_right">136.0K</td>
<td class="gt_row gt_right">&minus;11&percnt;</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,9.26 3.61,9.24 4.27,9.23 4.93,9.24 5.59,9.22 6.25,9.24 6.92,9.22 7.58,9.22 8.24,9.18 8.90,9.21 9.56,9.21 10.23,9.25 10.89,9.14 11.55,9.09 12.21,9.06 12.87,8.94 13.54,8.91 14.20,8.86 14.86,8.69 15.52,8.67 16.18,8.60 16.85,8.53 17.51,8.32 18.17,8.29 18.83,8.24 19.49,8.12 20.15,8.01 20.82,7.89 21.48,7.72 22.14,7.43 22.80,7.33 23.46,7.30 24.13,7.06 24.79,6.87 25.45,6.74 26.11,6.57 26.77,6.10 27.44,6.05 28.10,5.93 28.76,5.70 29.42,5.46 30.08,5.27 30.75,5.06 31.41,4.58 32.07,4.48 32.73,4.58 33.39,4.19 34.05,4.05 34.72,3.66 35.38,3.42 36.04,3.61 36.70,3.61 37.36,3.47 38.03,3.23 38.69,2.99 39.35,2.99 40.01,2.89 40.67,2.80 41.34,2.65 42.00,2.70 42.66,2.60 43.32,2.55 43.98,2.46 44.65,2.27 45.31,2.31 45.97,2.36 46.63,2.31 47.29,2.17 47.95,2.02 48.62,1.83 49.28,1.88 49.94,1.93 50.60,1.93 51.26,1.93 51.93,3.18 52.59,2.46 53.25,2.60 53.91,2.75 54.57,2.80 55.24,2.80 55.90,2.80 56.56,1.54 57.22,2.46 57.88,2.55 58.55,2.55 59.21,2.70 59.87,2.75 60.53,2.75 61.19,3.13 61.85,3.28 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='2.95' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='56.56' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_left gt_striped">Hospitalized</td>
<td class="gt_row gt_right gt_striped">96.8K</td>
<td class="gt_row gt_right gt_striped">83.4K</td>
<td class="gt_row gt_right gt_striped">&minus;14&percnt;</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,9.24 3.61,9.24 4.27,9.26 4.93,9.26 5.59,9.23 6.25,9.21 6.92,9.19 7.58,9.19 8.24,9.17 8.90,9.19 9.56,9.18 10.23,9.15 10.89,9.10 11.55,9.03 12.21,9.00 12.87,8.97 13.54,8.94 14.20,8.88 14.86,8.80 15.52,8.72 16.18,8.64 16.85,8.56 17.51,8.47 18.17,8.41 18.83,8.32 19.49,8.17 20.15,8.04 20.82,7.92 21.48,7.78 22.14,7.63 22.80,7.52 23.46,7.35 24.13,7.14 24.79,6.91 25.45,6.71 26.11,6.56 26.77,6.35 27.44,6.18 28.10,5.99 28.76,5.70 29.42,5.45 30.08,5.24 30.75,5.00 31.41,4.77 32.07,4.64 32.73,4.39 33.39,4.08 34.05,3.84 34.72,3.63 35.38,3.43 36.04,3.29 36.70,3.20 37.36,3.02 38.03,2.77 38.69,2.56 39.35,2.39 40.01,2.32 40.67,2.24 41.34,2.23 42.00,2.06 42.66,1.84 43.32,1.72 43.98,1.72 44.65,1.70 45.31,1.71 45.97,1.81 46.63,1.71 47.29,1.61 47.95,1.56 48.62,1.54 49.28,1.56 49.94,1.65 50.60,1.80 51.26,1.79 51.93,1.73 52.59,1.65 53.25,1.68 53.91,1.75 54.57,1.86 55.24,2.09 55.90,2.13 56.56,2.07 57.22,2.22 57.88,2.30 58.55,2.42 59.21,2.57 59.87,2.77 60.53,2.84 61.19,2.85 61.85,2.86 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='4.27' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='4.93' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='48.62' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_left">Deaths</td>
<td class="gt_row gt_right">1.5K</td>
<td class="gt_row gt_right">2.0K</td>
<td class="gt_row gt_right">+36&percnt;</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,8.85 3.61,8.91 4.27,8.93 4.93,8.93 5.59,9.01 6.25,9.01 6.92,9.10 7.58,9.12 8.24,9.13 8.90,9.17 9.56,9.19 10.23,9.26 10.89,9.24 11.55,9.22 12.21,9.25 12.87,9.23 13.54,9.19 14.20,9.20 14.86,9.08 15.52,9.07 16.18,9.04 16.85,9.03 17.51,9.10 18.17,9.13 18.83,9.07 19.49,9.09 20.15,9.13 20.82,9.12 21.48,9.10 22.14,9.01 22.80,8.98 23.46,9.04 24.13,9.01 24.79,8.91 25.45,8.88 26.11,8.89 26.77,8.66 27.44,8.64 28.10,8.62 28.76,8.51 29.42,8.42 30.08,8.36 30.75,8.23 31.41,8.07 32.07,8.02 32.73,7.99 33.39,7.96 34.05,7.54 34.72,7.62 35.38,7.35 36.04,7.40 36.70,7.39 37.36,7.35 38.03,7.02 38.69,7.19 39.35,6.69 40.01,6.24 40.67,5.99 41.34,5.84 42.00,5.80 42.66,5.63 43.32,5.37 43.98,5.16 44.65,4.86 45.31,4.74 45.97,4.74 46.63,4.65 47.29,4.44 47.95,4.44 48.62,4.14 49.28,3.67 49.94,3.59 50.60,3.59 51.26,3.54 51.93,4.27 52.59,3.84 53.25,3.76 53.91,3.54 54.57,3.33 55.24,3.20 55.90,3.25 56.56,2.27 57.22,2.48 57.88,2.18 58.55,2.10 59.21,2.05 59.87,1.97 60.53,1.97 61.19,1.88 61.85,1.54 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='10.23' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='61.85' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_left gt_striped">New Vaccine Doses</td>
<td class="gt_row gt_right gt_striped">826.0K</td>
<td class="gt_row gt_right gt_striped">761.0K</td>
<td class="gt_row gt_right gt_striped">&minus;8&percnt;</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,5.36 3.61,6.38 4.27,6.64 4.93,6.00 5.59,5.14 6.25,4.98 6.92,3.68 7.58,2.17 8.24,1.92 8.90,1.54 9.56,2.55 10.23,3.96 10.89,4.74 11.55,6.41 12.21,8.10 12.87,8.16 13.54,9.17 14.20,9.26 14.86,9.01 15.52,8.93 16.18,8.74 16.85,8.97 17.51,9.09 18.17,9.03 18.83,9.18 19.49,9.08 20.15,9.26 20.82,9.14 21.48,8.97 22.14,8.88 22.80,8.80 23.46,8.30 24.13,8.51 24.79,8.24 25.45,7.99 26.11,7.90 26.77,7.43 27.44,7.37 28.10,7.29 28.76,7.17 29.42,7.07 30.08,7.12 30.75,6.84 31.41,6.90 32.07,6.68 32.73,6.75 33.39,6.63 34.05,6.34 34.72,6.46 35.38,6.84 36.04,6.66 36.70,6.39 37.36,6.59 38.03,6.00 38.69,6.04 39.35,5.93 40.01,5.28 40.67,5.10 41.34,5.00 42.00,4.45 42.66,4.89 43.32,4.81 43.98,4.41 44.65,4.59 45.31,4.49 45.97,4.44 46.63,4.48 47.29,4.34 47.95,4.32 48.62,4.06 49.28,4.22 49.94,3.63 50.60,3.81 51.26,4.63 51.93,4.97 52.59,5.24 53.25,5.43 53.91,5.75 54.57,6.55 55.24,6.68 55.90,6.20 56.56,6.04 57.22,5.82 57.88,6.04 58.55,5.90 59.21,5.88 59.87,5.86 60.53,6.04 61.19,5.92 61.85,6.06 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='14.20' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='20.15' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='8.90' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_left">Fully Vaccinated</td>
<td class="gt_row gt_right">177.0M</td>
<td class="gt_row gt_right">182.0M</td>
<td class="gt_row gt_right">+3&percnt;</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,9.26 3.61,9.01 4.27,9.01 4.93,8.76 5.59,8.51 6.25,8.51 6.92,8.26 7.58,8.01 8.24,8.01 8.90,7.76 9.56,7.76 10.23,7.76 10.89,7.52 11.55,7.52 12.21,7.52 12.87,7.27 13.54,7.27 14.20,7.27 14.86,7.27 15.52,7.02 16.18,7.02 16.85,7.02 17.51,6.77 18.17,6.77 18.83,6.77 19.49,6.77 20.15,6.52 20.82,6.52 21.48,6.52 22.14,6.52 22.80,6.27 23.46,6.27 24.13,6.27 24.79,6.27 25.45,6.02 26.11,6.02 26.77,6.02 27.44,6.02 28.10,5.77 28.76,5.77 29.42,5.77 30.08,5.77 30.75,5.52 31.41,5.52 32.07,5.52 32.73,5.52 33.39,5.28 34.05,5.28 34.72,5.28 35.38,5.28 36.04,5.03 36.70,5.03 37.36,5.03 38.03,4.78 38.69,4.78 39.35,4.78 40.01,4.53 40.67,4.53 41.34,4.53 42.00,4.28 42.66,4.28 43.32,4.28 43.98,4.03 44.65,4.03 45.31,3.78 45.97,3.78 46.63,3.53 47.29,3.53 47.95,3.53 48.62,3.28 49.28,3.28 49.94,3.04 50.60,3.04 51.26,3.04 51.93,3.04 52.59,2.79 53.25,2.79 53.91,2.79 54.57,2.54 55.24,2.54 55.90,2.29 56.56,2.29 57.22,2.29 57.88,2.04 58.55,2.04 59.21,1.79 59.87,1.79 60.53,1.79 61.19,1.54 61.85,1.54 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='2.95' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='61.19' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /><circle cx='61.85' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_left gt_striped">Pct. Fully Vaccinated</td>
<td class="gt_row gt_right gt_striped">52.5</td>
<td class="gt_row gt_right gt_striped">54.1</td>
<td class="gt_row gt_right gt_striped">+3&percnt;</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,9.26 3.61,9.17 4.27,9.09 4.93,8.83 5.59,8.66 6.25,8.58 6.92,8.41 7.58,8.07 8.24,7.99 8.90,7.82 9.56,7.73 10.23,7.73 10.89,7.65 11.55,7.56 12.21,7.48 12.87,7.39 13.54,7.31 14.20,7.22 14.86,7.22 15.52,7.14 16.18,7.05 16.85,6.97 17.51,6.88 18.17,6.80 18.83,6.80 19.49,6.71 20.15,6.63 20.82,6.63 21.48,6.54 22.14,6.46 22.80,6.37 23.46,6.29 24.13,6.29 24.79,6.21 25.45,6.21 26.11,6.12 26.77,6.04 27.44,5.95 28.10,5.87 28.76,5.87 29.42,5.78 30.08,5.70 30.75,5.70 31.41,5.61 32.07,5.53 32.73,5.44 33.39,5.36 34.05,5.36 34.72,5.27 35.38,5.19 36.04,5.10 36.70,5.02 37.36,4.93 38.03,4.85 38.69,4.85 39.35,4.76 40.01,4.68 40.67,4.51 41.34,4.43 42.00,4.34 42.66,4.26 43.32,4.17 43.98,4.09 44.65,4.00 45.31,3.92 45.97,3.75 46.63,3.66 47.29,3.58 47.95,3.49 48.62,3.41 49.28,3.32 49.94,3.15 50.60,3.07 51.26,3.07 51.93,3.07 52.59,2.90 53.25,2.73 53.91,2.64 54.57,2.56 55.24,2.48 55.90,2.39 56.56,2.31 57.22,2.22 57.88,2.14 58.55,1.97 59.21,1.88 59.87,1.80 60.53,1.71 61.19,1.63 61.85,1.54 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='2.95' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='61.85' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
  </tbody>
  
  
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
<td class="gt_row gt_right">602.0K</td>
<td class="gt_row gt_right">519.0K</td>
<td class="gt_row gt_right">&minus;14&percnt;</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,9.26 3.61,9.20 4.27,9.15 4.93,9.13 5.59,9.00 6.25,8.94 6.92,9.10 7.58,8.97 8.24,8.89 8.90,8.86 9.56,8.79 10.23,8.66 10.89,8.37 11.55,8.11 12.21,7.98 12.87,7.71 13.54,7.53 14.20,7.37 14.86,7.14 15.52,6.88 16.18,6.59 16.85,6.25 17.51,5.91 18.17,5.73 18.83,5.52 19.49,5.28 20.15,5.26 20.82,5.18 21.48,5.20 22.14,4.86 22.80,4.86 23.46,4.81 24.13,4.65 24.79,4.37 25.45,4.05 26.11,3.71 26.77,3.56 27.44,3.43 28.10,3.29 28.76,3.14 29.42,3.03 30.08,2.93 30.75,2.80 31.41,2.46 32.07,2.30 32.73,2.46 33.39,2.17 34.05,2.12 34.72,1.94 35.38,1.83 36.04,1.91 36.70,1.96 37.36,1.88 38.03,1.78 38.69,1.67 39.35,1.67 40.01,1.65 40.67,1.70 41.34,1.67 42.00,1.75 42.66,1.65 43.32,1.62 43.98,1.62 44.65,1.54 45.31,1.73 45.97,1.70 46.63,1.70 47.29,1.75 47.95,2.01 48.62,2.01 49.28,2.25 49.94,2.35 50.60,2.56 51.26,2.64 51.93,3.56 52.59,3.11 53.25,3.48 53.91,3.63 54.57,3.95 55.24,4.11 55.90,4.34 56.56,3.69 57.22,4.39 57.88,4.63 58.55,4.86 59.21,4.99 59.87,4.71 60.53,4.71 61.19,4.97 61.85,5.28 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='2.95' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='44.65' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_left gt_striped">Deaths</td>
<td class="gt_row gt_right gt_striped">9.6K</td>
<td class="gt_row gt_right gt_striped">8.5K</td>
<td class="gt_row gt_right gt_striped">&minus;11&percnt;</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,7.38 3.61,7.38 4.27,7.66 4.93,7.94 5.59,8.09 6.25,8.49 6.92,8.64 7.58,8.61 8.24,8.98 8.90,9.26 9.56,9.01 10.23,8.70 10.89,8.49 11.55,8.77 12.21,8.70 12.87,8.64 13.54,8.73 14.20,8.37 14.86,8.00 15.52,8.09 16.18,8.06 16.85,8.21 17.51,8.06 18.17,7.87 18.83,8.09 19.49,8.55 20.15,6.95 20.82,6.92 21.48,6.80 22.14,7.23 22.80,6.28 23.46,6.18 24.13,5.88 24.79,6.80 25.45,6.12 26.11,5.23 26.77,4.43 27.44,4.59 28.10,4.68 28.76,4.49 29.42,4.28 30.08,4.16 30.75,4.06 31.41,3.60 32.07,3.72 32.73,3.57 33.39,3.39 34.05,2.68 34.72,2.93 35.38,3.08 36.04,3.11 36.70,3.08 37.36,3.17 38.03,2.65 38.69,3.20 39.35,2.80 40.01,2.46 40.67,2.46 41.34,2.37 42.00,2.19 42.66,2.16 43.32,1.85 43.98,1.85 44.65,1.54 45.31,1.85 45.97,1.85 46.63,2.34 47.29,2.59 47.95,3.48 48.62,2.99 49.28,3.17 49.94,2.99 50.60,3.29 51.26,3.42 51.93,4.12 52.59,3.48 53.25,4.59 53.91,4.80 54.57,5.48 55.24,5.23 55.90,5.66 56.56,5.17 57.22,5.48 57.88,5.32 58.55,5.45 59.21,5.66 59.87,6.37 60.53,6.15 61.19,6.52 61.85,6.83 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='8.90' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='44.65' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_left">New Vaccine Doses</td>
<td class="gt_row gt_right">32.7M</td>
<td class="gt_row gt_right">28.5M</td>
<td class="gt_row gt_right">&minus;13&percnt;</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,2.27 3.61,2.22 4.27,1.96 4.93,1.54 5.59,1.96 6.25,2.11 6.92,2.58 7.58,2.58 8.24,3.35 8.90,3.92 9.56,4.80 10.23,5.17 10.89,5.94 11.55,6.20 12.21,6.82 12.87,7.29 13.54,7.76 14.20,8.12 14.86,8.33 15.52,8.17 16.18,7.91 16.85,8.12 17.51,7.70 18.17,7.60 18.83,7.81 19.49,7.60 20.15,7.65 20.82,8.01 21.48,7.70 22.14,7.39 22.80,7.29 23.46,6.82 24.13,6.15 24.79,5.53 25.45,4.86 26.11,4.34 26.77,4.03 27.44,3.77 28.10,2.89 28.76,3.25 29.42,2.16 30.08,1.91 30.75,2.47 31.41,2.68 32.07,2.73 32.73,3.30 33.39,2.99 34.05,4.18 34.72,4.65 35.38,5.17 36.04,5.01 36.70,4.91 37.36,5.27 38.03,5.17 38.69,5.22 39.35,5.32 40.01,5.12 40.67,5.27 41.34,5.58 42.00,5.22 42.66,6.05 43.32,5.63 43.98,5.17 44.65,4.44 45.31,3.56 45.97,3.15 46.63,2.53 47.29,2.22 47.95,2.68 48.62,2.37 49.28,3.30 49.94,5.01 50.60,5.68 51.26,6.36 51.93,6.93 52.59,7.08 53.25,7.70 53.91,7.29 54.57,7.19 55.24,6.56 55.90,6.31 56.56,6.10 57.22,6.72 57.88,7.29 58.55,7.65 59.21,8.07 59.87,7.70 60.53,8.38 61.19,8.79 61.85,9.26 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='61.85' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='4.93' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_left gt_striped">Fully Vaccinated</td>
<td class="gt_row gt_right gt_striped">2.3B</td>
<td class="gt_row gt_right gt_striped">2.5B</td>
<td class="gt_row gt_right gt_striped">+10&percnt;</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,9.26 3.61,9.23 4.27,9.21 4.93,9.17 5.59,9.14 6.25,9.10 6.92,9.07 7.58,9.03 8.24,9.01 8.90,8.97 9.56,8.94 10.23,8.90 10.89,8.87 11.55,8.83 12.21,8.78 12.87,8.75 13.54,8.73 14.20,8.70 14.86,8.65 15.52,8.62 16.18,8.57 16.85,8.53 17.51,8.49 18.17,8.47 18.83,8.44 19.49,8.40 20.15,8.37 20.82,8.33 21.48,8.29 22.14,8.25 22.80,8.22 23.46,8.19 24.13,8.14 24.79,8.10 25.45,8.06 26.11,8.01 26.77,7.97 27.44,7.95 28.10,7.92 28.76,7.89 29.42,7.83 30.08,7.79 30.75,7.76 31.41,7.73 32.07,7.70 32.73,7.67 33.39,7.62 34.05,7.58 34.72,7.50 35.38,4.38 36.04,4.34 36.70,4.30 37.36,4.26 38.03,4.22 38.69,4.18 39.35,4.14 40.01,4.06 40.67,4.02 41.34,4.02 42.00,3.98 42.66,3.94 43.32,3.86 43.98,3.82 44.65,3.34 45.31,3.26 45.97,3.22 46.63,3.18 47.29,3.14 47.95,3.10 48.62,3.02 49.28,2.98 49.94,2.94 50.60,2.90 51.26,2.86 51.93,2.50 52.59,2.46 53.25,2.38 53.91,2.30 54.57,2.26 55.24,2.22 55.90,2.18 56.56,2.14 57.22,2.06 57.88,1.86 58.55,1.82 59.21,1.78 59.87,1.66 60.53,1.62 61.19,1.58 61.85,1.54 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='2.95' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='61.85' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_left">Pct. Fully Vaccinated</td>
<td class="gt_row gt_right">29.1</td>
<td class="gt_row gt_right">32.0</td>
<td class="gt_row gt_right">+10&percnt;</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,9.26 3.61,9.23 4.27,9.21 4.93,9.17 5.59,9.14 6.25,9.10 6.92,9.07 7.58,9.03 8.24,9.01 8.90,8.97 9.56,8.94 10.23,8.90 10.89,8.87 11.55,8.83 12.21,8.78 12.87,8.75 13.54,8.73 14.20,8.70 14.86,8.65 15.52,8.62 16.18,8.57 16.85,8.53 17.51,8.50 18.17,8.46 18.83,8.43 19.49,8.40 20.15,8.37 20.82,8.34 21.48,8.28 22.14,8.24 22.80,8.21 23.46,8.18 24.13,8.15 24.79,8.09 25.45,8.06 26.11,8.02 26.77,7.96 27.44,7.96 28.10,7.93 28.76,7.90 29.42,7.84 30.08,7.80 30.75,7.77 31.41,7.74 32.07,7.71 32.73,7.68 33.39,7.61 34.05,7.55 34.72,7.52 35.38,4.37 36.04,4.31 36.70,4.28 37.36,4.25 38.03,4.22 38.69,4.15 39.35,4.12 40.01,4.09 40.67,4.03 41.34,4.00 42.00,3.97 42.66,3.93 43.32,3.87 43.98,3.84 44.65,3.34 45.31,3.27 45.97,3.24 46.63,3.18 47.29,3.15 47.95,3.08 48.62,3.02 49.28,2.99 49.94,2.93 50.60,2.90 51.26,2.86 51.93,2.49 52.59,2.46 53.25,2.39 53.91,2.33 54.57,2.27 55.24,2.24 55.90,2.17 56.56,2.11 57.22,2.08 57.88,1.86 58.55,1.79 59.21,1.76 59.87,1.67 60.53,1.64 61.19,1.57 61.85,1.54 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='2.95' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='61.85' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
  </tbody>
  
  
</table>
</div>

![World Metrics](https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/world_facet.png)

## Case Acceleration

As of Tuesday, the 14-day percent change in average new cases was:
  
- -40% in Champaign County
- -13% in Illinois
- -11% in the United States
- -14% worldwide

![Case Acceleration](https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/new_cases_change_facet.png)

This chart measures how quickly the average number of new cases is changing, or roughly, the slope of the new-cases charts above. If the case acceleration is positive, then the average number of new cases is increasing. If it is negative, then the average number of new cases is decreasing.

## Death Acceleration

As of Tuesday, the 14-day percent change in average new deaths was:
  
- 16% in Illinois
- 36% in the United States
- -11% worldwide

![Death Acceleration](https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/new_deaths_change_facet.png)

This chart measures how quickly the average number of new deaths is changing, or roughly, the slope of the new-deaths charts above. If the death acceleration is positive, then the average number of new deaths is increasing. If it is negative, then the average number of new deaths is decreasing.


