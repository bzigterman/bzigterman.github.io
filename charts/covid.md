---
layout: page
title: COVID-19
permalink: /charts/covid
---

During the COVID-19 pandemic, I've been making charts with data from the [Champaign-Urbana Public Health District](https://www.c-uphd.org/champaign-urbana-illinois-coronavirus-information.html), the [University of Illinois](https://go.illinois.edu/COVIDTestingData), the [Illinois Department of Public Health](http://www.dph.illinois.gov/covid19), the [CDC](https://covid.cdc.gov/covid-data-tracker/), the [U.S. Department of Health and Human Services](https://healthdata.gov/Hospital/COVID-19-Reported-Patient-Impact-and-Hospital-Capa/anag-cw7u), [Our World in Data](https://github.com/owid/covid-19-data/tree/master/public/data) and the [COVID-19 Data Repository by the Center for Systems Science and Engineering (CSSE) at Johns Hopkins University](https://github.com/CSSEGISandData/COVID-19).

## Champaign County

<div id="cu_housing_table" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
  <style>@import url("https://fonts.googleapis.com/css2?family=Lato:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap");
html {
  font-family: Lato, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#cu_housing_table .gt_table {
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

#cu_housing_table .gt_heading {
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

#cu_housing_table .gt_title {
  color: #333333;
  font-size: 24px;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#cu_housing_table .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 6px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#cu_housing_table .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#cu_housing_table .gt_col_headings {
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

#cu_housing_table .gt_col_heading {
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

#cu_housing_table .gt_column_spanner_outer {
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

#cu_housing_table .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#cu_housing_table .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#cu_housing_table .gt_column_spanner {
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

#cu_housing_table .gt_group_heading {
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

#cu_housing_table .gt_empty_group_heading {
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

#cu_housing_table .gt_from_md > :first-child {
  margin-top: 0;
}

#cu_housing_table .gt_from_md > :last-child {
  margin-bottom: 0;
}

#cu_housing_table .gt_row {
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

#cu_housing_table .gt_stub {
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

#cu_housing_table .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#cu_housing_table .gt_first_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
}

#cu_housing_table .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#cu_housing_table .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#cu_housing_table .gt_striped {
  background-color: #FAFAFA;
}

#cu_housing_table .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#cu_housing_table .gt_footnotes {
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

#cu_housing_table .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding: 4px;
}

#cu_housing_table .gt_sourcenotes {
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

#cu_housing_table .gt_sourcenote {
  font-size: 12px;
  padding: 4px;
}

#cu_housing_table .gt_left {
  text-align: left;
}

#cu_housing_table .gt_center {
  text-align: center;
}

#cu_housing_table .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#cu_housing_table .gt_font_normal {
  font-weight: normal;
}

#cu_housing_table .gt_font_bold {
  font-weight: bold;
}

#cu_housing_table .gt_font_italic {
  font-style: italic;
}

#cu_housing_table .gt_super {
  font-size: 65%;
}

#cu_housing_table .gt_footnote_marks {
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
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">Past<br>Year</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td class="gt_row gt_left">Average New Cases</td>
<td class="gt_row gt_right">108</td>
<td class="gt_row gt_right">60</td>
<td class="gt_row gt_right">&minus;45&percnt;</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,7.47 3.11,7.73 3.27,7.54 3.43,7.47 3.59,7.63 3.75,7.44 3.92,7.15 4.08,7.26 4.24,7.12 4.40,7.31 4.56,7.34 4.73,7.13 4.89,7.19 5.05,7.36 5.21,7.45 5.37,7.55 5.53,7.20 5.70,7.30 5.86,7.53 6.02,7.74 6.18,7.53 6.34,7.40 6.51,7.36 6.67,7.34 6.83,7.40 6.99,7.43 7.15,7.30 7.32,7.54 7.48,7.65 7.64,7.55 7.80,7.63 7.96,7.39 8.12,7.30 8.29,6.90 8.45,6.80 8.61,6.43 8.77,6.11 8.93,5.95 9.10,5.96 9.26,5.53 9.42,5.43 9.58,4.97 9.74,4.96 9.90,5.09 10.07,5.02 10.23,3.97 10.39,3.43 10.55,3.12 10.71,3.10 10.88,2.77 11.04,2.26 11.20,1.54 11.36,2.15 11.52,2.41 11.68,2.72 11.85,2.79 12.01,2.66 12.17,2.57 12.33,3.26 12.49,2.80 12.66,2.84 12.82,2.60 12.98,2.69 13.14,3.15 13.30,3.32 13.46,3.35 13.63,4.03 13.79,4.53 13.95,5.10 14.11,4.99 14.27,4.84 14.44,5.09 14.60,4.86 14.76,4.58 14.92,4.46 15.08,3.89 15.25,3.96 15.41,4.07 15.57,3.97 15.73,4.29 15.89,4.47 16.05,4.57 16.22,4.99 16.38,5.23 16.54,5.40 16.70,5.57 16.86,5.75 17.03,6.12 17.19,5.98 17.35,6.05 17.51,6.00 17.67,5.91 17.83,6.14 18.00,6.14 18.16,5.96 18.32,6.10 18.48,6.34 18.64,6.39 18.81,6.42 18.97,6.33 19.13,6.17 19.29,5.97 19.45,5.79 19.61,5.71 19.78,5.79 19.94,5.53 20.10,5.25 20.26,5.10 20.42,5.14 20.59,5.05 20.75,4.82 20.91,4.79 21.07,4.98 21.23,5.32 21.40,5.61 21.56,5.71 21.72,5.93 21.88,6.19 22.04,6.14 22.20,6.40 22.37,6.31 22.53,6.03 22.69,6.27 22.85,6.30 23.01,6.31 23.18,6.27 23.34,6.10 23.50,6.27 23.66,6.42 23.82,6.41 23.98,6.43 24.15,6.40 24.31,6.62 24.47,6.74 24.63,6.70 24.79,6.53 24.96,6.45 25.12,6.47 25.28,6.36 25.44,6.02 25.60,5.90 25.76,5.93 25.93,5.94 26.09,5.91 26.25,5.92 26.41,5.96 26.57,6.18 26.74,6.20 26.90,6.47 27.06,7.05 27.22,6.93 27.38,6.79 27.54,6.80 27.71,6.82 27.87,7.07 28.03,7.00 28.19,6.82 28.35,7.10 28.52,7.49 28.68,7.71 28.84,7.85 29.00,7.95 29.16,7.92 29.33,7.95 29.49,8.19 29.65,8.28 29.81,8.28 29.97,8.34 30.13,8.34 30.30,8.42 30.46,8.51 30.62,8.44 30.78,8.37 30.94,8.39 31.11,8.31 31.27,8.26 31.43,8.29 31.59,8.11 31.75,8.17 31.91,8.12 32.08,8.14 32.24,8.20 32.40,8.19 32.56,8.11 32.72,8.26 32.89,8.10 33.05,8.12 33.21,7.87 33.37,7.85 33.53,7.82 33.69,7.85 33.86,7.75 34.02,7.86 34.18,7.83 34.34,8.00 34.50,7.80 34.67,7.89 34.83,7.89 34.99,7.90 35.15,7.80 35.31,7.71 35.47,7.68 35.64,7.80 35.80,7.65 35.96,7.57 36.12,7.43 36.28,7.54 36.45,7.53 36.61,7.50 36.77,7.54 36.93,7.60 37.09,7.53 37.26,7.60 37.42,7.66 37.58,7.57 37.74,7.62 37.90,7.63 38.06,7.66 38.23,7.77 38.39,7.73 38.55,7.70 38.71,7.72 38.87,7.73 39.04,7.71 39.20,7.71 39.36,7.83 39.52,7.93 39.68,8.00 39.84,8.18 40.01,8.21 40.17,8.22 40.33,8.29 40.49,8.26 40.65,8.35 40.82,8.30 40.98,8.35 41.14,8.37 41.30,8.39 41.46,8.38 41.62,8.27 41.79,8.34 41.95,8.32 42.11,8.34 42.27,8.45 42.43,8.51 42.60,8.52 42.76,8.68 42.92,8.65 43.08,8.64 43.24,8.77 43.40,8.64 43.57,8.66 43.73,8.69 43.89,8.74 44.05,8.82 44.21,8.88 44.38,8.80 44.54,8.94 44.70,8.94 44.86,8.97 45.02,8.95 45.19,9.01 45.35,9.05 45.51,9.13 45.67,9.11 45.83,9.11 45.99,9.11 46.16,9.14 46.32,9.16 46.48,9.20 46.64,9.20 46.80,9.19 46.97,9.23 47.13,9.25 47.29,9.25 47.45,9.25 47.61,9.25 47.77,9.25 47.94,9.23 48.10,9.24 48.26,9.21 48.42,9.21 48.58,9.20 48.75,9.20 48.91,9.19 49.07,9.22 49.23,9.22 49.39,9.25 49.55,9.26 49.72,9.25 49.88,9.19 50.04,9.20 50.20,9.14 50.36,9.10 50.53,9.06 50.69,9.04 50.85,8.98 51.01,9.01 51.17,8.95 51.34,8.97 51.50,8.85 51.66,8.81 51.82,8.64 51.98,8.68 52.14,8.40 52.31,8.36 52.47,8.15 52.63,8.25 52.79,8.26 52.95,8.17 53.12,8.02 53.28,7.94 53.44,7.84 53.60,7.83 53.76,7.65 53.92,7.53 54.09,7.44 54.25,7.33 54.41,7.26 54.57,7.08 54.73,6.84 54.90,6.79 55.06,6.53 55.22,6.42 55.38,6.26 55.54,6.34 55.70,6.20 55.87,6.25 56.03,6.21 56.19,6.29 56.35,6.39 56.51,5.99 56.68,6.12 56.84,6.08 57.00,5.90 57.16,5.90 57.32,5.78 57.48,5.76 57.65,5.97 57.81,5.80 57.97,5.81 58.13,5.90 58.29,5.73 58.46,5.66 58.62,5.39 58.78,5.04 58.94,4.75 59.10,4.35 59.27,4.38 59.43,4.63 59.59,4.84 59.75,5.19 59.91,5.56 60.07,5.56 60.24,5.84 60.40,5.93 60.56,5.82 60.72,6.10 60.88,5.98 61.05,6.23 61.21,6.50 61.37,6.90 61.53,6.94 61.69,7.10 61.85,6.88 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='49.55' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='11.20' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_left gt_striped">Deaths in Past Month</td>
<td class="gt_row gt_right gt_striped">16</td>
<td class="gt_row gt_right gt_striped">16</td>
<td class="gt_row gt_right gt_striped">0&percnt;</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,9.26 3.11,9.26 3.27,9.26 3.43,9.26 3.59,9.26 3.75,9.26 3.92,9.26 4.08,9.26 4.24,9.26 4.40,9.06 4.56,8.87 4.73,8.68 4.89,8.68 5.05,8.68 5.21,8.49 5.37,8.49 5.53,8.29 5.70,7.91 5.86,7.91 6.02,7.91 6.18,7.91 6.34,7.91 6.51,7.91 6.67,7.91 6.83,7.71 6.99,7.71 7.15,7.71 7.32,7.71 7.48,7.71 7.64,7.71 7.80,7.71 7.96,7.71 8.12,7.71 8.29,7.52 8.45,7.52 8.61,7.52 8.77,7.52 8.93,7.71 9.10,7.71 9.26,7.71 9.42,7.91 9.58,8.10 9.74,8.10 9.90,8.10 10.07,8.10 10.23,8.29 10.39,8.10 10.55,8.10 10.71,8.10 10.88,8.10 11.04,7.33 11.20,7.33 11.36,7.33 11.52,6.94 11.68,6.75 11.85,6.94 12.01,6.94 12.17,6.94 12.33,6.94 12.49,6.56 12.66,6.36 12.82,5.98 12.98,5.59 13.14,5.40 13.30,4.82 13.46,4.44 13.63,3.86 13.79,3.86 13.95,3.66 14.11,3.47 14.27,3.47 14.44,3.09 14.60,3.09 14.76,3.28 14.92,2.70 15.08,1.74 15.25,1.54 15.41,1.54 15.57,1.74 15.73,1.93 15.89,1.74 16.05,2.31 16.22,2.12 16.38,2.12 16.54,2.51 16.70,2.51 16.86,2.51 17.03,2.31 17.19,2.31 17.35,2.12 17.51,2.51 17.67,2.51 17.83,2.70 18.00,2.70 18.16,2.89 18.32,3.47 18.48,3.66 18.64,4.24 18.81,4.24 18.97,4.24 19.13,4.44 19.29,4.24 19.45,4.63 19.61,4.63 19.78,4.63 19.94,5.01 20.10,5.98 20.26,5.98 20.42,6.17 20.59,6.17 20.75,6.36 20.91,6.56 21.07,6.75 21.23,6.56 21.40,6.56 21.56,6.94 21.72,6.75 21.88,6.56 22.04,6.75 22.20,6.17 22.37,5.79 22.53,5.40 22.69,5.59 22.85,5.79 23.01,5.79 23.18,5.79 23.34,5.98 23.50,5.98 23.66,5.98 23.82,5.98 23.98,5.79 24.15,5.59 24.31,5.79 24.47,5.79 24.63,5.40 24.79,5.01 24.96,5.21 25.12,5.21 25.28,5.01 25.44,4.82 25.60,4.82 25.76,4.82 25.93,4.63 26.09,4.63 26.25,5.01 26.41,4.05 26.57,3.47 26.74,3.28 26.90,3.47 27.06,3.47 27.22,3.86 27.38,4.05 27.54,4.24 27.71,4.24 27.87,4.24 28.03,4.63 28.19,4.63 28.35,4.63 28.52,4.63 28.68,4.44 28.84,4.24 29.00,4.44 29.16,4.63 29.33,4.63 29.49,4.44 29.65,4.82 29.81,5.01 29.97,5.01 30.13,5.01 30.30,4.82 30.46,5.01 30.62,5.01 30.78,5.01 30.94,5.01 31.11,5.01 31.27,5.01 31.43,5.98 31.59,6.17 31.75,6.56 31.91,6.56 32.08,6.56 32.24,6.75 32.40,7.14 32.56,7.14 32.72,6.94 32.89,6.94 33.05,6.94 33.21,6.94 33.37,6.94 33.53,7.14 33.69,7.14 33.86,7.33 34.02,7.33 34.18,7.33 34.34,7.33 34.50,7.52 34.67,7.52 34.83,7.71 34.99,7.71 35.15,7.71 35.31,8.29 35.47,8.29 35.64,8.29 35.80,8.29 35.96,8.49 36.12,8.49 36.28,8.29 36.45,8.29 36.61,8.29 36.77,8.49 36.93,8.49 37.09,8.29 37.26,8.10 37.42,8.10 37.58,8.10 37.74,8.29 37.90,8.10 38.06,8.10 38.23,7.71 38.39,7.71 38.55,7.71 38.71,7.91 38.87,7.71 39.04,7.71 39.20,7.71 39.36,7.71 39.52,7.71 39.68,7.71 39.84,7.71 40.01,7.52 40.17,7.52 40.33,7.52 40.49,7.52 40.65,7.52 40.82,7.52 40.98,7.52 41.14,7.52 41.30,7.71 41.46,7.71 41.62,7.71 41.79,7.71 41.95,7.52 42.11,7.71 42.27,7.52 42.43,7.52 42.60,7.71 42.76,7.71 42.92,7.91 43.08,7.91 43.24,8.29 43.40,8.29 43.57,8.29 43.73,8.29 43.89,8.49 44.05,8.49 44.21,8.49 44.38,8.29 44.54,8.29 44.70,7.91 44.86,7.52 45.02,7.91 45.19,7.71 45.35,7.71 45.51,7.71 45.67,7.71 45.83,7.71 45.99,7.71 46.16,7.52 46.32,7.52 46.48,7.52 46.64,7.52 46.80,7.52 46.97,7.52 47.13,7.52 47.29,7.91 47.45,7.91 47.61,7.71 47.77,7.71 47.94,7.71 48.10,7.71 48.26,7.71 48.42,7.71 48.58,7.71 48.75,7.71 48.91,7.71 49.07,7.71 49.23,7.71 49.39,7.91 49.55,7.91 49.72,8.10 49.88,8.49 50.04,8.29 50.20,8.49 50.36,8.49 50.53,8.49 50.69,8.49 50.85,8.49 51.01,8.49 51.17,8.68 51.34,8.68 51.50,8.49 51.66,8.49 51.82,8.49 51.98,8.68 52.14,8.68 52.31,8.68 52.47,8.68 52.63,8.87 52.79,8.87 52.95,8.87 53.12,8.87 53.28,8.68 53.44,8.68 53.60,8.68 53.76,8.68 53.92,8.68 54.09,8.68 54.25,8.68 54.41,8.68 54.57,8.68 54.73,8.49 54.90,8.49 55.06,8.49 55.22,8.49 55.38,8.49 55.54,8.10 55.70,8.10 55.87,8.10 56.03,8.10 56.19,8.10 56.35,7.91 56.51,8.10 56.68,8.10 56.84,7.71 57.00,7.52 57.16,7.52 57.32,7.52 57.48,7.52 57.65,7.14 57.81,6.56 57.97,6.56 58.13,6.56 58.29,6.75 58.46,6.75 58.62,6.75 58.78,6.75 58.94,6.36 59.10,6.36 59.27,6.36 59.43,6.17 59.59,6.17 59.75,6.56 59.91,6.56 60.07,6.36 60.24,5.98 60.40,5.98 60.56,6.17 60.72,6.17 60.88,5.98 61.05,5.59 61.21,5.59 61.37,5.79 61.53,5.79 61.69,5.79 61.85,6.17 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='2.95' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='3.11' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='3.27' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='3.43' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='3.59' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='3.75' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='3.92' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='4.08' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='4.24' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='15.25' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /><circle cx='15.41' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
  </tbody>
  
  
</table>
</div>

As of Monday in Champaign County (vs. two weeks ago):
  
- Average new cases: 60 (vs. 108) -45%↓
- Average hospitalized: 69 (vs. 68) 
- Deaths in the past month: 16 (vs. 16)
- Percent of Champaign County fully vaccinated: 53.4% (vs. 52.4%)
- Average new vaccine doses: 320 (vs. 411)

![Champaign County Metrics](https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/Champaign_facet.png)

Charts for Champaign County are posted weekdays on Twitter [@ChampaignCovid](https://twitter.com/ChampaignCovid).

## Illinois

As of Monday in Illinois (vs. two weeks ago):
  
- Average new cases: 3,600 (vs. 4,250) -15%↓
- Hospitalized: 1,900 (vs. 2,280) -17%↓
- Average new deaths: 39 (vs. 28) +38%↑
- Percent of Illinois fully vaccinated: 54.5% (vs. 53.5%)
- Average new vaccine doses: 19,900 (vs. 26,200)

![Illinois Metrics](https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/IL_facet.png)

![Illinois CDC_vax_combined map](https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/IL_vax_combined.png)

![IL CDC_cases_transmission_IL map](https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/IL_cases_transmission.png)

Community transmission levels are calculated by the CDC based on new cases per capita in the past week and test positivity.

## United States

As of Sunday in the United States (vs. two weeks ago):
  
- Average new cases: 147,000 (vs. 164,000) -10%↓
- Hospitalized: 83,800 (vs. 95,200) -12%↓
- Average new deaths: 1,930 (vs. 1,560) +23%↑
- Percent of the United States fully vaccinated: 53.9% (vs. NA%)
- Average new vaccine doses: 763,000 (vs. 875,000)

![USA Metrics](https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/US_facet.png)

![USA fully vaccinated map](https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/usa_vax_total.png)

![USA transmission levels map](https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/usa_transmission.png)

## World

As of Sunday (vs. two weeks ago):
  
- Average new cases: 540,000 (vs. 620,000) -13%↓
- Average new deaths: 8,700 (vs. 9,590) -9%↓
- Percent of the world fully vaccinated: 31.6% (vs. 27.8%)
- Average new vaccine doses: 29,000,000 (vs. 34,100,000)

![World Metrics](https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/world_facet.png)

## Case Acceleration

As of Sunday, the 14-day percent change in average new cases was:
  
- -45% in Champaign County
- -15% in Illinois
- -10% in the United States
- -13% worldwide

![Case Acceleration](https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/new_cases_change_facet.png)

This chart measures how quickly the average number of new cases is changing, or roughly, the slope of the new-cases charts above. If the case acceleration is positive, then the average number of new cases is increasing. If it is negative, then the average number of new cases is decreasing.

## Death Acceleration

As of Sunday, the 14-day percent change in average new deaths was:
  
- 38% in Illinois
- 23% in the United States
- -9% worldwide

![Death Acceleration](https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/new_deaths_change_facet.png)

This chart measures how quickly the average number of new deaths is changing, or roughly, the slope of the new-deaths charts above. If the death acceleration is positive, then the average number of new deaths is increasing. If it is negative, then the average number of new deaths is decreasing.


