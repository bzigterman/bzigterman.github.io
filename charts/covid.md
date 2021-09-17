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
<td class="gt_row gt_right">110</td>
<td class="gt_row gt_right">69</td>
<td class="gt_row gt_right">&minus;37&percnt;</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,6.94 3.11,6.90 3.27,7.42 3.43,7.62 3.59,7.47 3.75,7.73 3.92,7.54 4.08,7.47 4.24,7.63 4.40,7.44 4.56,7.15 4.73,7.26 4.89,7.12 5.05,7.31 5.21,7.34 5.37,7.13 5.53,7.19 5.70,7.36 5.86,7.45 6.02,7.55 6.18,7.20 6.34,7.30 6.51,7.53 6.67,7.74 6.83,7.53 6.99,7.40 7.15,7.36 7.32,7.34 7.48,7.40 7.64,7.43 7.80,7.30 7.96,7.54 8.12,7.65 8.29,7.55 8.45,7.63 8.61,7.39 8.77,7.30 8.93,6.90 9.10,6.80 9.26,6.43 9.42,6.11 9.58,5.95 9.74,5.96 9.90,5.53 10.07,5.43 10.23,4.97 10.39,4.96 10.55,5.09 10.71,5.02 10.88,3.97 11.04,3.43 11.20,3.12 11.36,3.10 11.52,2.77 11.68,2.26 11.85,1.54 12.01,2.15 12.17,2.41 12.33,2.72 12.49,2.79 12.66,2.66 12.82,2.57 12.98,3.26 13.14,2.80 13.30,2.84 13.46,2.60 13.63,2.69 13.79,3.15 13.95,3.32 14.11,3.35 14.27,4.03 14.44,4.53 14.60,5.10 14.76,4.99 14.92,4.84 15.08,5.09 15.25,4.86 15.41,4.58 15.57,4.46 15.73,3.89 15.89,3.96 16.05,4.07 16.22,3.97 16.38,4.29 16.54,4.47 16.70,4.57 16.86,4.99 17.03,5.23 17.19,5.40 17.35,5.57 17.51,5.75 17.67,6.12 17.83,5.98 18.00,6.05 18.16,6.00 18.32,5.91 18.48,6.14 18.64,6.14 18.81,5.96 18.97,6.10 19.13,6.34 19.29,6.39 19.45,6.42 19.61,6.33 19.78,6.17 19.94,5.97 20.10,5.79 20.26,5.71 20.42,5.79 20.59,5.53 20.75,5.25 20.91,5.10 21.07,5.14 21.23,5.05 21.40,4.82 21.56,4.79 21.72,4.98 21.88,5.32 22.04,5.61 22.20,5.71 22.37,5.93 22.53,6.19 22.69,6.14 22.85,6.40 23.01,6.31 23.18,6.03 23.34,6.27 23.50,6.30 23.66,6.31 23.82,6.27 23.98,6.10 24.15,6.27 24.31,6.42 24.47,6.41 24.63,6.43 24.79,6.40 24.96,6.62 25.12,6.74 25.28,6.70 25.44,6.53 25.60,6.45 25.76,6.47 25.93,6.36 26.09,6.02 26.25,5.90 26.41,5.93 26.57,5.94 26.74,5.91 26.90,5.92 27.06,5.96 27.22,6.18 27.38,6.20 27.54,6.47 27.71,7.05 27.87,6.93 28.03,6.79 28.19,6.80 28.35,6.82 28.52,7.07 28.68,7.00 28.84,6.82 29.00,7.10 29.16,7.49 29.33,7.71 29.49,7.85 29.65,7.95 29.81,7.92 29.97,7.95 30.13,8.19 30.30,8.28 30.46,8.28 30.62,8.34 30.78,8.34 30.94,8.42 31.11,8.51 31.27,8.44 31.43,8.37 31.59,8.39 31.75,8.31 31.91,8.26 32.08,8.29 32.24,8.11 32.40,8.17 32.56,8.12 32.72,8.14 32.89,8.20 33.05,8.19 33.21,8.11 33.37,8.26 33.53,8.10 33.69,8.12 33.86,7.87 34.02,7.85 34.18,7.82 34.34,7.85 34.50,7.75 34.67,7.86 34.83,7.83 34.99,8.00 35.15,7.80 35.31,7.89 35.47,7.89 35.64,7.90 35.80,7.80 35.96,7.71 36.12,7.68 36.28,7.80 36.45,7.65 36.61,7.57 36.77,7.43 36.93,7.54 37.09,7.53 37.26,7.50 37.42,7.54 37.58,7.60 37.74,7.53 37.90,7.60 38.06,7.66 38.23,7.57 38.39,7.62 38.55,7.63 38.71,7.66 38.87,7.77 39.04,7.73 39.20,7.70 39.36,7.72 39.52,7.73 39.68,7.71 39.84,7.71 40.01,7.83 40.17,7.93 40.33,8.00 40.49,8.18 40.65,8.21 40.82,8.22 40.98,8.29 41.14,8.26 41.30,8.35 41.46,8.30 41.62,8.35 41.79,8.37 41.95,8.39 42.11,8.38 42.27,8.27 42.43,8.34 42.60,8.32 42.76,8.34 42.92,8.45 43.08,8.51 43.24,8.52 43.40,8.68 43.57,8.65 43.73,8.64 43.89,8.77 44.05,8.64 44.21,8.66 44.38,8.69 44.54,8.74 44.70,8.82 44.86,8.88 45.02,8.80 45.19,8.94 45.35,8.94 45.51,8.97 45.67,8.95 45.83,9.01 45.99,9.05 46.16,9.13 46.32,9.11 46.48,9.11 46.64,9.11 46.80,9.14 46.97,9.16 47.13,9.20 47.29,9.20 47.45,9.19 47.61,9.23 47.77,9.25 47.94,9.25 48.10,9.25 48.26,9.25 48.42,9.25 48.58,9.23 48.75,9.24 48.91,9.21 49.07,9.21 49.23,9.20 49.39,9.20 49.55,9.19 49.72,9.22 49.88,9.22 50.04,9.25 50.20,9.26 50.36,9.25 50.53,9.19 50.69,9.20 50.85,9.14 51.01,9.10 51.17,9.06 51.34,9.04 51.50,8.98 51.66,9.01 51.82,8.95 51.98,8.97 52.14,8.85 52.31,8.81 52.47,8.64 52.63,8.68 52.79,8.40 52.95,8.36 53.12,8.15 53.28,8.25 53.44,8.26 53.60,8.17 53.76,8.02 53.92,7.94 54.09,7.84 54.25,7.83 54.41,7.65 54.57,7.53 54.73,7.44 54.90,7.33 55.06,7.26 55.22,7.08 55.38,6.84 55.54,6.79 55.70,6.53 55.87,6.42 56.03,6.26 56.19,6.34 56.35,6.20 56.51,6.25 56.68,6.21 56.84,6.29 57.00,6.39 57.16,5.99 57.32,6.12 57.48,6.08 57.65,5.90 57.81,5.90 57.97,5.78 58.13,5.76 58.29,5.97 58.46,5.80 58.62,5.81 58.78,5.90 58.94,5.73 59.10,5.66 59.27,5.39 59.43,5.04 59.59,4.75 59.75,4.35 59.91,4.38 60.07,4.63 60.24,4.84 60.40,5.19 60.56,5.56 60.72,5.56 60.88,5.84 61.05,5.93 61.21,5.82 61.37,6.10 61.53,5.98 61.69,6.23 61.85,6.50 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='50.20' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='11.85' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_left gt_striped">Deaths in Past Month</td>
<td class="gt_row gt_right gt_striped">15</td>
<td class="gt_row gt_right gt_striped">19</td>
<td class="gt_row gt_right gt_striped">+27&percnt;</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,9.06 3.11,9.06 3.27,9.06 3.43,9.26 3.59,9.26 3.75,9.26 3.92,9.26 4.08,9.26 4.24,9.26 4.40,9.26 4.56,9.26 4.73,9.26 4.89,9.26 5.05,9.06 5.21,8.87 5.37,8.68 5.53,8.68 5.70,8.68 5.86,8.49 6.02,8.49 6.18,8.29 6.34,7.91 6.51,7.91 6.67,7.91 6.83,7.91 6.99,7.91 7.15,7.91 7.32,7.91 7.48,7.71 7.64,7.71 7.80,7.71 7.96,7.71 8.12,7.71 8.29,7.71 8.45,7.71 8.61,7.71 8.77,7.71 8.93,7.52 9.10,7.52 9.26,7.52 9.42,7.52 9.58,7.71 9.74,7.71 9.90,7.71 10.07,7.91 10.23,8.10 10.39,8.10 10.55,8.10 10.71,8.10 10.88,8.29 11.04,8.10 11.20,8.10 11.36,8.10 11.52,8.10 11.68,7.33 11.85,7.33 12.01,7.33 12.17,6.94 12.33,6.75 12.49,6.94 12.66,6.94 12.82,6.94 12.98,6.94 13.14,6.56 13.30,6.36 13.46,5.98 13.63,5.59 13.79,5.40 13.95,4.82 14.11,4.44 14.27,3.86 14.44,3.86 14.60,3.66 14.76,3.47 14.92,3.47 15.08,3.09 15.25,3.09 15.41,3.28 15.57,2.70 15.73,1.74 15.89,1.54 16.05,1.54 16.22,1.74 16.38,1.93 16.54,1.74 16.70,2.31 16.86,2.12 17.03,2.12 17.19,2.51 17.35,2.51 17.51,2.51 17.67,2.31 17.83,2.31 18.00,2.12 18.16,2.51 18.32,2.51 18.48,2.70 18.64,2.70 18.81,2.89 18.97,3.47 19.13,3.66 19.29,4.24 19.45,4.24 19.61,4.24 19.78,4.44 19.94,4.24 20.10,4.63 20.26,4.63 20.42,4.63 20.59,5.01 20.75,5.98 20.91,5.98 21.07,6.17 21.23,6.17 21.40,6.36 21.56,6.56 21.72,6.75 21.88,6.56 22.04,6.56 22.20,6.94 22.37,6.75 22.53,6.56 22.69,6.75 22.85,6.17 23.01,5.79 23.18,5.40 23.34,5.59 23.50,5.79 23.66,5.79 23.82,5.79 23.98,5.98 24.15,5.98 24.31,5.98 24.47,5.98 24.63,5.79 24.79,5.59 24.96,5.79 25.12,5.79 25.28,5.40 25.44,5.01 25.60,5.21 25.76,5.21 25.93,5.01 26.09,4.82 26.25,4.82 26.41,4.82 26.57,4.63 26.74,4.63 26.90,5.01 27.06,4.05 27.22,3.47 27.38,3.28 27.54,3.47 27.71,3.47 27.87,3.86 28.03,4.05 28.19,4.24 28.35,4.24 28.52,4.24 28.68,4.63 28.84,4.63 29.00,4.63 29.16,4.63 29.33,4.44 29.49,4.24 29.65,4.44 29.81,4.63 29.97,4.63 30.13,4.44 30.30,4.82 30.46,5.01 30.62,5.01 30.78,5.01 30.94,4.82 31.11,5.01 31.27,5.01 31.43,5.01 31.59,5.01 31.75,5.01 31.91,5.01 32.08,5.98 32.24,6.17 32.40,6.56 32.56,6.56 32.72,6.56 32.89,6.75 33.05,7.14 33.21,7.14 33.37,6.94 33.53,6.94 33.69,6.94 33.86,6.94 34.02,6.94 34.18,7.14 34.34,7.14 34.50,7.33 34.67,7.33 34.83,7.33 34.99,7.33 35.15,7.52 35.31,7.52 35.47,7.71 35.64,7.71 35.80,7.71 35.96,8.29 36.12,8.29 36.28,8.29 36.45,8.29 36.61,8.49 36.77,8.49 36.93,8.29 37.09,8.29 37.26,8.29 37.42,8.49 37.58,8.49 37.74,8.29 37.90,8.10 38.06,8.10 38.23,8.10 38.39,8.29 38.55,8.10 38.71,8.10 38.87,7.71 39.04,7.71 39.20,7.71 39.36,7.91 39.52,7.71 39.68,7.71 39.84,7.71 40.01,7.71 40.17,7.71 40.33,7.71 40.49,7.71 40.65,7.52 40.82,7.52 40.98,7.52 41.14,7.52 41.30,7.52 41.46,7.52 41.62,7.52 41.79,7.52 41.95,7.71 42.11,7.71 42.27,7.71 42.43,7.71 42.60,7.52 42.76,7.71 42.92,7.52 43.08,7.52 43.24,7.71 43.40,7.71 43.57,7.91 43.73,7.91 43.89,8.29 44.05,8.29 44.21,8.29 44.38,8.29 44.54,8.49 44.70,8.49 44.86,8.49 45.02,8.29 45.19,8.29 45.35,7.91 45.51,7.52 45.67,7.91 45.83,7.71 45.99,7.71 46.16,7.71 46.32,7.71 46.48,7.71 46.64,7.71 46.80,7.52 46.97,7.52 47.13,7.52 47.29,7.52 47.45,7.52 47.61,7.52 47.77,7.52 47.94,7.91 48.10,7.91 48.26,7.71 48.42,7.71 48.58,7.71 48.75,7.71 48.91,7.71 49.07,7.71 49.23,7.71 49.39,7.71 49.55,7.71 49.72,7.71 49.88,7.71 50.04,7.91 50.20,7.91 50.36,8.10 50.53,8.49 50.69,8.29 50.85,8.49 51.01,8.49 51.17,8.49 51.34,8.49 51.50,8.49 51.66,8.49 51.82,8.68 51.98,8.68 52.14,8.49 52.31,8.49 52.47,8.49 52.63,8.68 52.79,8.68 52.95,8.68 53.12,8.68 53.28,8.87 53.44,8.87 53.60,8.87 53.76,8.87 53.92,8.68 54.09,8.68 54.25,8.68 54.41,8.68 54.57,8.68 54.73,8.68 54.90,8.68 55.06,8.68 55.22,8.68 55.38,8.49 55.54,8.49 55.70,8.49 55.87,8.49 56.03,8.49 56.19,8.10 56.35,8.10 56.51,8.10 56.68,8.10 56.84,8.10 57.00,7.91 57.16,8.10 57.32,8.10 57.48,7.71 57.65,7.52 57.81,7.52 57.97,7.52 58.13,7.52 58.29,7.14 58.46,6.56 58.62,6.56 58.78,6.56 58.94,6.75 59.10,6.75 59.27,6.75 59.43,6.75 59.59,6.36 59.75,6.36 59.91,6.36 60.07,6.17 60.24,6.17 60.40,6.56 60.56,6.56 60.72,6.36 60.88,5.98 61.05,5.98 61.21,6.17 61.37,6.17 61.53,5.98 61.69,5.59 61.85,5.59 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='3.43' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='3.59' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='3.75' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='3.92' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='4.08' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='4.24' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='4.40' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='4.56' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='4.73' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='4.89' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='15.89' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /><circle cx='16.05' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
  </tbody>
  
  
</table>
</div>

As of Thursday in Champaign County (vs. two weeks ago):
  
- Average new cases: 69 (vs. 110) -37%↓
- Average hospitalized: 69 (vs. 68) 
- Deaths in the past month: 19 (vs. 15)
- Percent of Champaign County fully vaccinated: 53.1% (vs. 52.1%)
- Average new vaccine doses: 332 (vs. 408)

![Champaign County Metrics](https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/Champaign_facet.png)

Charts for Champaign County are posted weekdays on Twitter [@ChampaignCovid](https://twitter.com/ChampaignCovid).

## Illinois

As of Thursday in Illinois (vs. two weeks ago):
  
- Average new cases: 3,950 (vs. 4,180) -6%↓
- Hospitalized: 2,160 (vs. 2,250) -4%↓
- Average new deaths: 40 (vs. 22) +79%↑
- Percent of Illinois fully vaccinated: 54.2% (vs. 53.2%)
- Average new vaccine doses: 20,600 (vs. 39,900)

![Illinois Metrics](https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/IL_facet.png)

![Illinois CDC_vax_combined map](https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/IL_vax_combined.png)

![IL CDC_cases_transmission_IL map](https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/IL_cases_transmission.png)

Community transmission levels are calculated by the CDC based on new cases per capita in the past week and test positivity.

## United States

As of Thursday in the United States (vs. two weeks ago):
  
- Average new cases: 151,000 (vs. 165,000) -9%↓
- Hospitalized: 90,100 (vs. 97,900) -8%↓
- Average new deaths: 1,900 (vs. 1,510) +26%↑
- Percent of the United States fully vaccinated: 53.4% (vs. 51.9%)
- Average new vaccine doses: 763,000 (vs. 920,000)

![USA Metrics](https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/US_facet.png)

![USA fully vaccinated map](https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/usa_vax_total.png)

![USA transmission levels map](https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/usa_transmission.png)

## World

As of Thursday (vs. two weeks ago):
  
- Average new cases: 530,000 (vs. 635,000) -17%↓
- Average new deaths: 8,880 (vs. 9,660) -8%↓
- Percent of the world fully vaccinated: 30.4% (vs. 27.3%)
- Average new vaccine doses: 29,600,000 (vs. 41,900,000)

![World Metrics](https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/world_facet.png)

## Case Acceleration

As of Thursday, the 14-day percent change in average new cases was:
  
- -37% in Champaign County
- -6% in Illinois
- -9% in the United States
- -17% worldwide

![Case Acceleration](https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/new_cases_change_facet.png)

This chart measures how quickly the average number of new cases is changing, or roughly, the slope of the new-cases charts above. If the case acceleration is positive, then the average number of new cases is increasing. If it is negative, then the average number of new cases is decreasing.

## Death Acceleration

As of Thursday, the 14-day percent change in average new deaths was:
  
- 79% in Illinois
- 26% in the United States
- -8% worldwide

![Death Acceleration](https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/new_deaths_change_facet.png)

This chart measures how quickly the average number of new deaths is changing, or roughly, the slope of the new-deaths charts above. If the death acceleration is positive, then the average number of new deaths is increasing. If it is negative, then the average number of new deaths is decreasing.


