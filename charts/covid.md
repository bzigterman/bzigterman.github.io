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
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">Past<br>Year</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td class="gt_row gt_left">Cases</td>
<td class="gt_row gt_right">100</td>
<td class="gt_row gt_right">54</td>
<td class="gt_row gt_right">&minus;46&percnt;</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,7.73 3.11,7.54 3.27,7.47 3.43,7.63 3.59,7.44 3.75,7.15 3.92,7.26 4.08,7.12 4.24,7.31 4.40,7.34 4.56,7.13 4.73,7.19 4.89,7.36 5.05,7.45 5.21,7.55 5.37,7.20 5.53,7.30 5.70,7.53 5.86,7.74 6.02,7.53 6.18,7.40 6.34,7.36 6.51,7.34 6.67,7.40 6.83,7.43 6.99,7.30 7.15,7.54 7.32,7.65 7.48,7.55 7.64,7.63 7.80,7.39 7.96,7.30 8.12,6.90 8.29,6.80 8.45,6.43 8.61,6.11 8.77,5.95 8.93,5.96 9.10,5.53 9.26,5.43 9.42,4.97 9.58,4.96 9.74,5.09 9.90,5.02 10.07,3.97 10.23,3.43 10.39,3.12 10.55,3.10 10.71,2.77 10.88,2.26 11.04,1.54 11.20,2.15 11.36,2.41 11.52,2.72 11.68,2.79 11.85,2.66 12.01,2.57 12.17,3.26 12.33,2.80 12.49,2.84 12.66,2.60 12.82,2.69 12.98,3.15 13.14,3.32 13.30,3.35 13.46,4.03 13.63,4.53 13.79,5.10 13.95,4.99 14.11,4.84 14.27,5.09 14.44,4.86 14.60,4.58 14.76,4.46 14.92,3.89 15.08,3.96 15.25,4.07 15.41,3.97 15.57,4.29 15.73,4.47 15.89,4.57 16.05,4.99 16.22,5.23 16.38,5.40 16.54,5.57 16.70,5.75 16.86,6.12 17.03,5.98 17.19,6.05 17.35,6.00 17.51,5.91 17.67,6.14 17.83,6.14 18.00,5.96 18.16,6.10 18.32,6.34 18.48,6.39 18.64,6.42 18.81,6.33 18.97,6.17 19.13,5.97 19.29,5.79 19.45,5.71 19.61,5.79 19.78,5.53 19.94,5.25 20.10,5.10 20.26,5.14 20.42,5.05 20.59,4.82 20.75,4.79 20.91,4.98 21.07,5.32 21.23,5.61 21.40,5.71 21.56,5.93 21.72,6.19 21.88,6.14 22.04,6.40 22.20,6.31 22.37,6.03 22.53,6.27 22.69,6.30 22.85,6.31 23.01,6.27 23.18,6.10 23.34,6.27 23.50,6.42 23.66,6.41 23.82,6.43 23.98,6.40 24.15,6.62 24.31,6.74 24.47,6.70 24.63,6.53 24.79,6.45 24.96,6.47 25.12,6.36 25.28,6.02 25.44,5.90 25.60,5.93 25.76,5.94 25.93,5.91 26.09,5.92 26.25,5.96 26.41,6.18 26.57,6.20 26.74,6.47 26.90,7.05 27.06,6.93 27.22,6.79 27.38,6.80 27.54,6.82 27.71,7.07 27.87,7.00 28.03,6.82 28.19,7.10 28.35,7.49 28.52,7.71 28.68,7.85 28.84,7.95 29.00,7.92 29.16,7.95 29.33,8.19 29.49,8.28 29.65,8.28 29.81,8.34 29.97,8.34 30.13,8.42 30.30,8.51 30.46,8.44 30.62,8.37 30.78,8.39 30.94,8.31 31.11,8.26 31.27,8.29 31.43,8.11 31.59,8.17 31.75,8.12 31.91,8.14 32.08,8.20 32.24,8.19 32.40,8.11 32.56,8.26 32.72,8.10 32.89,8.12 33.05,7.87 33.21,7.85 33.37,7.82 33.53,7.85 33.69,7.75 33.86,7.86 34.02,7.83 34.18,8.00 34.34,7.80 34.50,7.89 34.67,7.89 34.83,7.90 34.99,7.80 35.15,7.71 35.31,7.68 35.47,7.80 35.64,7.65 35.80,7.57 35.96,7.43 36.12,7.54 36.28,7.53 36.45,7.50 36.61,7.54 36.77,7.60 36.93,7.53 37.09,7.60 37.26,7.66 37.42,7.57 37.58,7.62 37.74,7.63 37.90,7.66 38.06,7.77 38.23,7.73 38.39,7.70 38.55,7.72 38.71,7.73 38.87,7.71 39.04,7.71 39.20,7.83 39.36,7.93 39.52,8.00 39.68,8.18 39.84,8.21 40.01,8.22 40.17,8.29 40.33,8.26 40.49,8.35 40.65,8.30 40.82,8.35 40.98,8.37 41.14,8.39 41.30,8.38 41.46,8.27 41.62,8.34 41.79,8.32 41.95,8.34 42.11,8.45 42.27,8.51 42.43,8.52 42.60,8.68 42.76,8.65 42.92,8.64 43.08,8.77 43.24,8.64 43.40,8.66 43.57,8.69 43.73,8.74 43.89,8.82 44.05,8.88 44.21,8.80 44.38,8.94 44.54,8.94 44.70,8.97 44.86,8.95 45.02,9.01 45.19,9.05 45.35,9.13 45.51,9.11 45.67,9.11 45.83,9.11 45.99,9.14 46.16,9.16 46.32,9.20 46.48,9.20 46.64,9.19 46.80,9.23 46.97,9.25 47.13,9.25 47.29,9.25 47.45,9.25 47.61,9.25 47.77,9.23 47.94,9.24 48.10,9.21 48.26,9.21 48.42,9.20 48.58,9.20 48.75,9.19 48.91,9.22 49.07,9.22 49.23,9.25 49.39,9.26 49.55,9.25 49.72,9.19 49.88,9.20 50.04,9.14 50.20,9.10 50.36,9.06 50.53,9.04 50.69,8.98 50.85,9.01 51.01,8.95 51.17,8.97 51.34,8.85 51.50,8.81 51.66,8.64 51.82,8.68 51.98,8.40 52.14,8.36 52.31,8.15 52.47,8.25 52.63,8.26 52.79,8.17 52.95,8.02 53.12,7.94 53.28,7.84 53.44,7.83 53.60,7.65 53.76,7.53 53.92,7.44 54.09,7.33 54.25,7.26 54.41,7.08 54.57,6.84 54.73,6.79 54.90,6.53 55.06,6.42 55.22,6.26 55.38,6.34 55.54,6.20 55.70,6.25 55.87,6.21 56.03,6.29 56.19,6.39 56.35,5.99 56.51,6.12 56.68,6.08 56.84,5.90 57.00,5.90 57.16,5.78 57.32,5.76 57.48,5.97 57.65,5.80 57.81,5.81 57.97,5.90 58.13,5.73 58.29,5.66 58.46,5.39 58.62,5.04 58.78,4.75 58.94,4.35 59.10,4.38 59.27,4.63 59.43,4.84 59.59,5.19 59.75,5.56 59.91,5.56 60.07,5.84 60.24,5.93 60.40,5.82 60.56,6.10 60.72,5.98 60.88,6.23 61.05,6.50 61.21,6.90 61.37,6.94 61.53,7.10 61.69,6.88 61.85,7.14 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='49.39' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='11.04' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_left gt_striped">Hospitalized</td>
<td class="gt_row gt_right gt_striped">69</td>
<td class="gt_row gt_right gt_striped">24</td>
<td class="gt_row gt_right gt_striped">&minus;66&percnt;</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,7.65 3.11,7.65 3.27,7.65 3.43,8.18 3.59,8.18 3.75,8.18 3.92,8.18 4.08,8.18 4.24,8.18 4.40,8.18 4.56,8.04 4.73,8.04 4.89,8.04 5.05,8.04 5.21,8.04 5.37,8.04 5.53,8.04 5.70,6.90 5.86,6.90 6.02,6.90 6.18,6.90 6.34,6.90 6.51,6.90 6.67,6.90 6.83,6.15 6.99,6.15 7.15,6.15 7.32,6.15 7.48,6.15 7.64,6.15 7.80,6.15 7.96,5.05 8.12,5.05 8.29,5.05 8.45,5.05 8.61,5.05 8.77,5.05 8.93,5.05 9.10,5.18 9.26,5.18 9.42,5.18 9.58,5.18 9.74,5.18 9.90,5.18 10.07,5.18 10.23,2.72 10.39,2.72 10.55,2.72 10.71,2.72 10.88,2.72 11.04,2.72 11.20,2.72 11.36,1.54 11.52,1.54 11.68,1.54 11.85,1.54 12.01,1.54 12.17,1.54 12.33,1.54 12.49,2.29 12.66,2.29 12.82,2.29 12.98,2.29 13.14,2.29 13.30,2.29 13.46,2.29 13.63,2.14 13.79,2.14 13.95,2.14 14.11,2.14 14.27,2.14 14.44,2.14 14.60,2.14 14.76,3.10 14.92,3.10 15.08,3.10 15.25,3.10 15.41,3.10 15.57,3.10 15.73,3.10 15.89,3.04 16.05,3.04 16.22,3.04 16.38,3.04 16.54,3.04 16.70,3.04 16.86,3.04 17.03,5.25 17.19,5.25 17.35,5.25 17.51,5.25 17.67,5.25 17.83,5.25 18.00,5.25 18.16,5.17 18.32,5.17 18.48,5.17 18.64,5.17 18.81,5.17 18.97,5.17 19.13,5.17 19.29,3.90 19.45,3.90 19.61,3.90 19.78,3.90 19.94,3.90 20.10,3.90 20.26,3.90 20.42,3.47 20.59,3.47 20.75,3.47 20.91,3.47 21.07,3.47 21.23,3.47 21.40,3.47 21.56,4.13 21.72,4.13 21.88,4.13 22.04,4.13 22.20,4.13 22.37,4.13 22.53,4.13 22.69,4.75 22.85,4.75 23.01,4.75 23.18,4.75 23.34,4.75 23.50,4.75 23.66,4.75 23.82,5.55 23.98,5.55 24.15,5.55 24.31,5.55 24.47,5.55 24.63,5.55 24.79,5.55 24.96,6.48 25.12,6.48 25.28,6.48 25.44,6.48 25.60,6.48 25.76,6.48 25.93,6.48 26.09,7.49 26.25,7.49 26.41,7.49 26.57,7.49 26.74,7.49 26.90,7.49 27.06,7.49 27.22,7.80 27.38,7.80 27.54,7.80 27.71,7.80 27.87,7.80 28.03,7.80 28.19,7.80 28.35,7.49 28.52,7.49 28.68,7.49 28.84,7.49 29.00,7.49 29.16,7.49 29.33,7.49 29.49,8.23 29.65,8.23 29.81,8.23 29.97,8.23 30.13,8.23 30.30,8.23 30.46,8.23 30.62,8.27 30.78,8.27 30.94,8.27 31.11,8.27 31.27,8.27 31.43,8.27 31.59,8.27 31.75,8.51 31.91,8.51 32.08,8.51 32.24,8.51 32.40,8.51 32.56,8.51 32.72,8.51 32.89,8.42 33.05,8.42 33.21,8.42 33.37,8.42 33.53,8.42 33.69,8.42 33.86,8.42 34.02,8.55 34.18,8.55 34.34,8.55 34.50,8.55 34.67,8.55 34.83,8.55 34.99,8.55 35.15,7.87 35.31,7.87 35.47,7.87 35.64,7.87 35.80,7.87 35.96,7.87 36.12,7.87 36.28,7.72 36.45,7.72 36.61,7.72 36.77,7.72 36.93,7.72 37.09,7.72 37.26,7.72 37.42,7.28 37.58,7.28 37.74,7.28 37.90,7.28 38.06,7.28 38.23,7.28 38.39,7.28 38.55,7.62 38.71,7.62 38.87,7.62 39.04,7.62 39.20,7.62 39.36,7.62 39.52,7.62 39.68,7.41 39.84,7.41 40.01,7.41 40.17,7.41 40.33,7.41 40.49,7.41 40.65,7.41 40.82,7.35 40.98,7.35 41.14,7.35 41.30,7.35 41.46,7.35 41.62,7.35 41.79,7.35 41.95,7.56 42.11,7.56 42.27,7.56 42.43,7.56 42.60,7.56 42.76,7.56 42.92,7.56 43.08,7.96 43.24,7.96 43.40,7.96 43.57,7.96 43.73,7.96 43.89,7.96 44.05,7.96 44.21,8.28 44.38,8.28 44.54,8.28 44.70,8.28 44.86,8.28 45.02,8.28 45.19,8.28 45.35,8.82 45.51,8.82 45.67,8.82 45.83,8.82 45.99,8.82 46.16,8.82 46.32,8.82 46.48,8.71 46.64,8.71 46.80,8.71 46.97,8.71 47.13,8.71 47.29,8.71 47.45,8.71 47.61,9.15 47.77,9.15 47.94,9.15 48.10,9.15 48.26,9.15 48.42,9.15 48.58,9.15 48.75,9.26 48.91,9.26 49.07,9.26 49.23,9.26 49.39,9.26 49.55,9.26 49.72,9.26 49.88,8.82 50.04,8.82 50.20,8.82 50.36,8.82 50.53,8.82 50.69,8.82 50.85,8.82 51.01,8.81 51.17,8.81 51.34,8.81 51.50,8.81 51.66,8.81 51.82,8.81 51.98,8.81 52.14,7.73 52.31,7.73 52.47,7.73 52.63,7.73 52.79,7.73 52.95,7.73 53.12,7.73 53.28,6.21 53.44,6.21 53.60,6.21 53.76,6.21 53.92,6.21 54.09,6.21 54.25,6.21 54.41,4.97 54.57,4.97 54.73,4.97 54.90,4.97 55.06,4.97 55.22,4.97 55.38,4.97 55.54,4.33 55.70,4.33 55.87,4.33 56.03,4.33 56.19,4.33 56.35,4.33 56.51,4.33 56.68,4.12 56.84,4.12 57.00,4.12 57.16,4.12 57.32,4.12 57.48,4.12 57.65,4.12 57.81,3.97 57.97,3.97 58.13,3.97 58.29,3.97 58.46,3.97 58.62,3.97 58.78,3.97 58.94,3.99 59.10,3.99 59.27,3.99 59.43,3.99 59.59,3.99 59.75,3.99 59.91,3.99 60.07,4.21 60.24,4.21 60.40,4.21 60.56,4.21 60.72,4.21 60.88,4.21 61.05,4.21 61.21,7.93 61.37,7.93 61.53,7.93 61.69,7.93 61.85,7.93 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='48.75' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='48.91' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='49.07' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='49.23' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='49.39' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='49.55' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='49.72' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='11.36' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /><circle cx='11.52' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /><circle cx='11.68' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /><circle cx='11.85' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /><circle cx='12.01' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /><circle cx='12.17' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /><circle cx='12.33' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_left">Deaths</td>
<td class="gt_row gt_right">14</td>
<td class="gt_row gt_right">15</td>
<td class="gt_row gt_right">+7&percnt;</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,9.26 3.11,9.26 3.27,9.26 3.43,9.26 3.59,9.26 3.75,9.26 3.92,9.26 4.08,9.26 4.24,9.06 4.40,8.87 4.56,8.68 4.73,8.68 4.89,8.68 5.05,8.49 5.21,8.49 5.37,8.29 5.53,7.91 5.70,7.91 5.86,7.91 6.02,7.91 6.18,7.91 6.34,7.91 6.51,7.91 6.67,7.71 6.83,7.71 6.99,7.71 7.15,7.71 7.32,7.71 7.48,7.71 7.64,7.71 7.80,7.71 7.96,7.71 8.12,7.52 8.29,7.52 8.45,7.52 8.61,7.52 8.77,7.71 8.93,7.71 9.10,7.71 9.26,7.91 9.42,8.10 9.58,8.10 9.74,8.10 9.90,8.10 10.07,8.29 10.23,8.10 10.39,8.10 10.55,8.10 10.71,8.10 10.88,7.33 11.04,7.33 11.20,7.33 11.36,6.94 11.52,6.75 11.68,6.94 11.85,6.94 12.01,6.94 12.17,6.94 12.33,6.56 12.49,6.36 12.66,5.98 12.82,5.59 12.98,5.40 13.14,4.82 13.30,4.44 13.46,3.86 13.63,3.86 13.79,3.66 13.95,3.47 14.11,3.47 14.27,3.09 14.44,3.09 14.60,3.28 14.76,2.70 14.92,1.74 15.08,1.54 15.25,1.54 15.41,1.74 15.57,1.93 15.73,1.74 15.89,2.31 16.05,2.12 16.22,2.12 16.38,2.51 16.54,2.51 16.70,2.51 16.86,2.31 17.03,2.31 17.19,2.12 17.35,2.51 17.51,2.51 17.67,2.70 17.83,2.70 18.00,2.89 18.16,3.47 18.32,3.66 18.48,4.24 18.64,4.24 18.81,4.24 18.97,4.44 19.13,4.24 19.29,4.63 19.45,4.63 19.61,4.63 19.78,5.01 19.94,5.98 20.10,5.98 20.26,6.17 20.42,6.17 20.59,6.36 20.75,6.56 20.91,6.75 21.07,6.56 21.23,6.56 21.40,6.94 21.56,6.75 21.72,6.56 21.88,6.75 22.04,6.17 22.20,5.79 22.37,5.40 22.53,5.59 22.69,5.79 22.85,5.79 23.01,5.79 23.18,5.98 23.34,5.98 23.50,5.98 23.66,5.98 23.82,5.79 23.98,5.59 24.15,5.79 24.31,5.79 24.47,5.40 24.63,5.01 24.79,5.21 24.96,5.21 25.12,5.01 25.28,4.82 25.44,4.82 25.60,4.82 25.76,4.63 25.93,4.63 26.09,5.01 26.25,4.05 26.41,3.47 26.57,3.28 26.74,3.47 26.90,3.47 27.06,3.86 27.22,4.05 27.38,4.24 27.54,4.24 27.71,4.24 27.87,4.63 28.03,4.63 28.19,4.63 28.35,4.63 28.52,4.44 28.68,4.24 28.84,4.44 29.00,4.63 29.16,4.63 29.33,4.44 29.49,4.82 29.65,5.01 29.81,5.01 29.97,5.01 30.13,4.82 30.30,5.01 30.46,5.01 30.62,5.01 30.78,5.01 30.94,5.01 31.11,5.01 31.27,5.98 31.43,6.17 31.59,6.56 31.75,6.56 31.91,6.56 32.08,6.75 32.24,7.14 32.40,7.14 32.56,6.94 32.72,6.94 32.89,6.94 33.05,6.94 33.21,6.94 33.37,7.14 33.53,7.14 33.69,7.33 33.86,7.33 34.02,7.33 34.18,7.33 34.34,7.52 34.50,7.52 34.67,7.71 34.83,7.71 34.99,7.71 35.15,8.29 35.31,8.29 35.47,8.29 35.64,8.29 35.80,8.49 35.96,8.49 36.12,8.29 36.28,8.29 36.45,8.29 36.61,8.49 36.77,8.49 36.93,8.29 37.09,8.10 37.26,8.10 37.42,8.10 37.58,8.29 37.74,8.10 37.90,8.10 38.06,7.71 38.23,7.71 38.39,7.71 38.55,7.91 38.71,7.71 38.87,7.71 39.04,7.71 39.20,7.71 39.36,7.71 39.52,7.71 39.68,7.71 39.84,7.52 40.01,7.52 40.17,7.52 40.33,7.52 40.49,7.52 40.65,7.52 40.82,7.52 40.98,7.52 41.14,7.71 41.30,7.71 41.46,7.71 41.62,7.71 41.79,7.52 41.95,7.71 42.11,7.52 42.27,7.52 42.43,7.71 42.60,7.71 42.76,7.91 42.92,7.91 43.08,8.29 43.24,8.29 43.40,8.29 43.57,8.29 43.73,8.49 43.89,8.49 44.05,8.49 44.21,8.29 44.38,8.29 44.54,7.91 44.70,7.52 44.86,7.91 45.02,7.71 45.19,7.71 45.35,7.71 45.51,7.71 45.67,7.71 45.83,7.71 45.99,7.52 46.16,7.52 46.32,7.52 46.48,7.52 46.64,7.52 46.80,7.52 46.97,7.52 47.13,7.91 47.29,7.91 47.45,7.71 47.61,7.71 47.77,7.71 47.94,7.71 48.10,7.71 48.26,7.71 48.42,7.71 48.58,7.71 48.75,7.71 48.91,7.71 49.07,7.71 49.23,7.91 49.39,7.91 49.55,8.10 49.72,8.49 49.88,8.29 50.04,8.49 50.20,8.49 50.36,8.49 50.53,8.49 50.69,8.49 50.85,8.49 51.01,8.68 51.17,8.68 51.34,8.49 51.50,8.49 51.66,8.49 51.82,8.68 51.98,8.68 52.14,8.68 52.31,8.68 52.47,8.87 52.63,8.87 52.79,8.87 52.95,8.87 53.12,8.68 53.28,8.68 53.44,8.68 53.60,8.68 53.76,8.68 53.92,8.68 54.09,8.68 54.25,8.68 54.41,8.68 54.57,8.49 54.73,8.49 54.90,8.49 55.06,8.49 55.22,8.49 55.38,8.10 55.54,8.10 55.70,8.10 55.87,8.10 56.03,8.10 56.19,7.91 56.35,8.10 56.51,8.10 56.68,7.71 56.84,7.52 57.00,7.52 57.16,7.52 57.32,7.52 57.48,7.14 57.65,6.56 57.81,6.56 57.97,6.56 58.13,6.75 58.29,6.75 58.46,6.75 58.62,6.75 58.78,6.36 58.94,6.36 59.10,6.36 59.27,6.17 59.43,6.17 59.59,6.56 59.75,6.56 59.91,6.36 60.07,5.98 60.24,5.98 60.40,6.17 60.56,6.17 60.72,5.98 60.88,5.59 61.05,5.59 61.21,5.79 61.37,5.79 61.53,5.79 61.69,6.17 61.85,6.36 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='2.95' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='3.11' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='3.27' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='3.43' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='3.59' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='3.75' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='3.92' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='4.08' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='15.08' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /><circle cx='15.25' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
  </tbody>
  
  
</table>
</div>

As of Tuesday in Champaign County (vs. two weeks ago):
  
- Average new cases: 54 (vs. 100) -46%↓
- Average hospitalized: 24 (vs. 69) 
- Deaths in the past month: 15 (vs. 14)
- Percent of Champaign County fully vaccinated: 53.4% (vs. 52.4%)
- Average new vaccine doses: 302 (vs. 368)

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
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">Past<br>Year</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr><td class="gt_row gt_left">Cases</td>
<td class="gt_row gt_right">3,919</td>
<td class="gt_row gt_right">3,366</td>
<td class="gt_row gt_right">&minus;14&percnt;</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,8.21 3.11,8.22 3.27,8.21 3.43,8.17 3.59,8.18 3.75,8.16 3.92,8.14 4.08,8.15 4.24,8.11 4.40,8.12 4.56,8.15 4.73,8.15 4.89,8.16 5.05,8.15 5.21,8.13 5.37,8.10 5.53,8.02 5.70,7.96 5.86,7.92 6.02,7.80 6.18,7.72 6.34,7.61 6.51,7.59 6.67,7.50 6.83,7.35 6.99,7.28 7.15,7.14 7.32,7.11 7.48,7.03 7.64,6.90 7.80,6.81 7.96,6.87 8.12,6.64 8.29,6.66 8.45,6.51 8.61,6.49 8.77,6.33 8.93,6.20 9.10,5.92 9.26,5.76 9.42,5.50 9.58,5.36 9.74,5.14 9.90,5.01 10.07,3.99 10.23,3.68 10.39,3.27 10.55,2.99 10.71,2.60 10.88,2.04 11.04,1.58 11.20,2.02 11.36,1.57 11.52,1.70 11.68,1.64 11.85,1.54 12.01,1.54 12.17,1.88 12.33,1.71 12.49,1.93 12.66,1.85 12.82,1.91 12.98,2.21 13.14,2.49 13.30,2.27 13.46,2.50 13.63,2.99 13.79,3.36 13.95,3.62 14.11,3.81 14.27,3.53 14.44,3.68 14.60,3.77 14.76,3.51 14.92,3.32 15.08,3.29 15.25,3.06 15.41,3.48 15.57,3.61 15.73,3.60 15.89,3.70 16.05,3.81 16.22,3.84 16.38,3.97 16.54,4.02 16.70,4.13 16.86,4.33 17.03,4.52 17.19,4.62 17.35,4.73 17.51,4.96 17.67,5.06 17.83,5.10 18.00,5.26 18.16,5.41 18.32,5.79 18.48,6.00 18.64,6.02 18.81,6.07 18.97,6.02 19.13,5.93 19.29,5.80 19.45,5.66 19.61,5.60 19.78,5.55 19.94,5.44 20.10,5.42 20.26,5.35 20.42,5.16 20.59,4.99 20.75,4.96 20.91,4.99 21.07,5.01 21.23,5.16 21.40,5.35 21.56,5.59 21.72,5.72 21.88,5.77 22.04,5.89 22.20,6.10 22.37,6.20 22.53,6.35 22.69,6.31 22.85,6.33 23.01,6.41 23.18,6.45 23.34,6.51 23.50,6.60 23.66,6.68 23.82,6.94 23.98,7.10 24.15,7.18 24.31,7.24 24.47,7.36 24.63,7.40 24.79,7.48 24.96,7.52 25.12,7.55 25.28,7.58 25.44,7.63 25.60,7.65 25.76,7.70 25.93,7.74 26.09,7.84 26.25,7.93 26.41,7.97 26.57,7.99 26.74,8.06 26.90,8.15 27.06,8.23 27.22,8.27 27.38,8.28 27.54,8.29 27.71,8.30 27.87,8.27 28.03,8.25 28.19,8.26 28.35,8.24 28.52,8.25 28.68,8.28 28.84,8.29 29.00,8.30 29.16,8.29 29.33,8.31 29.49,8.40 29.65,8.33 29.81,8.34 29.97,8.34 30.13,8.35 30.30,8.38 30.46,8.39 30.62,8.36 30.78,8.44 30.94,8.40 31.11,8.44 31.27,8.39 31.43,8.40 31.59,8.34 31.75,8.28 31.91,8.26 32.08,8.26 32.24,8.22 32.40,8.24 32.56,8.13 32.72,8.15 32.89,8.09 33.05,8.03 33.21,7.95 33.37,7.90 33.53,7.85 33.69,7.87 33.86,7.75 34.02,7.73 34.18,7.71 34.34,7.69 34.50,7.66 34.67,7.62 34.83,7.51 34.99,7.49 35.15,7.42 35.31,7.35 35.47,7.30 35.64,7.27 35.80,7.25 35.96,7.27 36.12,7.28 36.28,7.30 36.45,7.34 36.61,7.36 36.77,7.40 36.93,7.46 37.09,7.53 37.26,7.57 37.42,7.61 37.58,7.64 37.74,7.70 37.90,7.68 38.06,7.68 38.23,7.69 38.39,7.66 38.55,7.68 38.71,7.69 38.87,7.70 39.04,7.71 39.20,7.74 39.36,7.77 39.52,7.92 39.68,7.91 39.84,8.01 40.01,8.02 40.17,8.07 40.33,8.13 40.49,8.19 40.65,8.18 40.82,8.31 40.98,8.33 41.14,8.37 41.30,8.42 41.46,8.42 41.62,8.44 41.79,8.47 41.95,8.50 42.11,8.53 42.27,8.56 42.43,8.56 42.60,8.62 42.76,8.67 42.92,8.73 43.08,8.78 43.24,8.81 43.40,8.84 43.57,8.88 43.73,8.91 43.89,8.97 44.05,8.99 44.21,9.03 44.38,9.05 44.54,9.07 44.70,9.10 44.86,9.10 45.02,9.11 45.19,9.14 45.35,9.16 45.51,9.18 45.67,9.19 45.83,9.19 45.99,9.20 46.16,9.21 46.32,9.22 46.48,9.25 46.64,9.24 46.80,9.25 46.97,9.25 47.13,9.25 47.29,9.26 47.45,9.26 47.61,9.24 47.77,9.25 47.94,9.25 48.10,9.24 48.26,9.23 48.42,9.23 48.58,9.21 48.75,9.21 48.91,9.19 49.07,9.20 49.23,9.22 49.39,9.19 49.55,9.17 49.72,9.16 49.88,9.13 50.04,9.11 50.20,9.07 50.36,9.04 50.53,9.05 50.69,9.02 50.85,9.00 51.01,8.99 51.17,8.96 51.34,8.90 51.50,8.88 51.66,8.87 51.82,8.85 51.98,8.75 52.14,8.67 52.31,8.64 52.47,8.62 52.63,8.58 52.79,8.49 52.95,8.39 53.12,8.42 53.28,8.34 53.44,8.27 53.60,8.24 53.76,8.18 53.92,8.09 54.09,8.07 54.25,7.94 54.41,7.88 54.57,7.80 54.73,7.76 54.90,7.68 55.06,7.65 55.22,7.51 55.38,7.50 55.54,7.46 55.70,7.37 55.87,7.34 56.03,7.35 56.19,7.29 56.35,7.30 56.51,7.29 56.68,7.16 56.84,7.15 57.00,7.20 57.16,7.15 57.32,7.21 57.48,7.16 57.65,7.08 57.81,7.07 57.97,7.15 58.13,6.94 58.29,7.00 58.46,6.83 58.62,6.76 58.78,6.74 58.94,6.65 59.10,6.58 59.27,6.71 59.43,6.71 59.59,6.91 59.75,7.02 59.91,6.98 60.07,7.04 60.24,6.99 60.40,7.00 60.56,7.06 60.72,6.88 60.88,6.86 61.05,6.89 61.21,7.05 61.37,7.14 61.53,7.16 61.69,7.11 61.85,7.26 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='47.29' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='47.45' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='11.85' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_left gt_striped">Hospitalized</td>
<td class="gt_row gt_right gt_striped">2,327</td>
<td class="gt_row gt_right gt_striped">2,039</td>
<td class="gt_row gt_right gt_striped">&minus;12&percnt;</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,7.68 3.11,7.48 3.27,7.58 3.43,7.64 3.59,7.78 3.75,7.78 3.92,7.72 4.08,7.59 4.24,7.59 4.40,7.53 4.56,7.72 4.73,7.74 4.89,7.59 5.05,7.54 5.21,7.53 5.37,7.43 5.53,7.35 5.70,7.36 5.86,7.40 6.02,7.41 6.18,7.30 6.34,7.14 6.51,7.19 6.67,7.08 6.83,7.00 6.99,7.08 7.15,6.97 7.32,6.75 7.48,6.65 7.64,6.48 7.80,6.44 7.96,6.28 8.12,6.30 8.29,6.25 8.45,6.09 8.61,5.95 8.77,5.73 8.93,5.65 9.10,5.47 9.26,5.38 9.42,5.28 9.58,4.98 9.74,4.76 9.90,4.58 10.07,4.32 10.23,4.11 10.39,4.03 10.55,3.89 10.71,3.45 10.88,3.05 11.04,2.76 11.20,2.63 11.36,2.55 11.52,2.48 11.68,2.33 11.85,1.93 12.01,1.84 12.17,1.73 12.33,1.63 12.49,1.54 12.66,1.68 12.82,1.55 12.98,1.60 13.14,1.60 13.30,1.73 13.46,2.00 13.63,2.08 13.79,1.96 13.95,1.98 14.11,2.00 14.27,2.09 14.44,2.24 14.60,2.50 14.76,2.67 14.92,2.89 15.08,2.85 15.25,2.84 15.41,2.73 15.57,2.92 15.73,2.92 15.89,3.04 16.05,3.01 16.22,3.17 16.38,3.15 16.54,3.38 16.70,3.37 16.86,3.52 17.03,3.61 17.19,3.92 17.35,3.83 17.51,3.68 17.67,3.65 17.83,3.79 18.00,3.97 18.16,4.41 18.32,4.33 18.48,4.11 18.64,4.02 18.81,4.11 18.97,4.31 19.13,4.45 19.29,4.71 19.45,4.68 19.61,4.51 19.78,4.56 19.94,4.53 20.10,4.54 20.26,4.74 20.42,4.99 20.59,5.07 20.75,5.05 20.91,5.03 21.07,4.91 21.23,5.09 21.40,5.18 21.56,5.23 21.72,5.23 21.88,5.31 22.04,5.32 22.20,5.39 22.37,5.40 22.53,5.53 22.69,5.61 22.85,5.78 23.01,5.82 23.18,5.77 23.34,5.86 23.50,6.03 23.66,6.12 23.82,6.30 23.98,6.48 24.15,6.59 24.31,6.51 24.47,6.48 24.63,6.65 24.79,6.68 24.96,6.74 25.12,6.85 25.28,6.89 25.44,6.94 25.60,6.99 25.76,7.16 25.93,7.22 26.09,7.24 26.25,7.40 26.41,7.38 26.57,7.47 26.74,7.47 26.90,7.56 27.06,7.64 27.22,7.70 27.38,7.81 27.54,7.76 27.71,7.78 27.87,7.75 28.03,7.82 28.19,7.91 28.35,7.96 28.52,8.08 28.68,8.05 28.84,8.12 29.00,8.09 29.16,8.17 29.33,8.21 29.49,8.15 29.65,8.24 29.81,8.19 29.97,8.20 30.13,8.22 30.30,8.27 30.46,8.26 30.62,8.32 30.78,8.24 30.94,8.28 31.11,8.23 31.27,8.24 31.43,8.27 31.59,8.26 31.75,8.19 31.91,8.26 32.08,8.19 32.24,8.07 32.40,8.08 32.56,8.10 32.72,8.03 32.89,7.99 33.05,7.98 33.21,7.96 33.37,7.90 33.53,7.88 33.69,7.88 33.86,7.84 34.02,7.86 34.18,7.78 34.34,7.66 34.50,7.57 34.67,7.49 34.83,7.37 34.99,7.36 35.15,7.33 35.31,7.32 35.47,7.10 35.64,7.06 35.80,7.00 35.96,7.04 36.12,7.02 36.28,6.89 36.45,6.93 36.61,6.81 36.77,6.72 36.93,6.85 37.09,6.90 37.26,6.95 37.42,7.04 37.58,7.06 37.74,6.99 37.90,6.86 38.06,6.90 38.23,6.95 38.39,7.07 38.55,7.10 38.71,7.21 38.87,7.15 39.04,7.00 39.20,7.02 39.36,7.03 39.52,7.13 39.68,7.17 39.84,7.27 40.01,7.23 40.17,7.19 40.33,7.24 40.49,7.41 40.65,7.49 40.82,7.66 40.98,7.66 41.14,7.75 41.30,7.76 41.46,7.74 41.62,7.78 41.79,7.86 41.95,7.90 42.11,7.88 42.27,7.91 42.43,7.87 42.60,7.91 42.76,8.01 42.92,8.14 43.08,8.21 43.24,8.33 43.40,8.31 43.57,8.39 43.73,8.41 43.89,8.44 44.05,8.56 44.21,8.59 44.38,8.71 44.54,8.71 44.70,8.71 44.86,8.70 45.02,8.75 45.19,8.82 45.35,8.85 45.51,8.93 45.67,8.93 45.83,8.91 45.99,8.97 46.16,9.07 46.32,9.11 46.48,9.10 46.64,9.19 46.80,9.16 46.97,9.15 47.13,9.11 47.29,9.17 47.45,9.18 47.61,9.18 47.77,9.21 47.94,9.19 48.10,9.17 48.26,9.18 48.42,9.22 48.58,9.20 48.75,9.23 48.91,9.26 49.07,9.26 49.23,9.20 49.39,9.12 49.55,9.20 49.72,9.19 49.88,9.20 50.04,9.19 50.20,9.18 50.36,9.10 50.53,9.12 50.69,9.09 50.85,9.13 51.01,9.12 51.17,9.08 51.34,9.05 51.50,8.96 51.66,9.00 51.82,8.93 51.98,8.87 52.14,8.85 52.31,8.80 52.47,8.80 52.63,8.70 52.79,8.62 52.95,8.59 53.12,8.56 53.28,8.56 53.44,8.51 53.60,8.46 53.76,8.29 53.92,8.21 54.09,8.16 54.25,8.17 54.41,8.02 54.57,8.04 54.73,7.92 54.90,7.78 55.06,7.69 55.22,7.62 55.38,7.56 55.54,7.51 55.70,7.41 55.87,7.28 56.03,7.16 56.19,7.13 56.35,7.11 56.51,7.10 56.68,7.14 56.84,7.13 57.00,7.02 57.16,6.89 57.32,6.84 57.48,6.86 57.65,6.78 57.81,6.89 57.97,6.89 58.13,6.83 58.29,6.75 58.46,6.78 58.62,6.76 58.78,6.72 58.94,6.69 59.10,6.84 59.27,6.72 59.43,6.66 59.59,6.67 59.75,6.65 59.91,6.64 60.07,6.78 60.24,6.77 60.40,6.77 60.56,6.75 60.72,6.80 60.88,6.88 61.05,6.99 61.21,7.15 61.37,7.32 61.53,7.23 61.69,7.05 61.85,7.05 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='49.07' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='12.49' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_left">Deaths</td>
<td class="gt_row gt_right">26</td>
<td class="gt_row gt_right">36</td>
<td class="gt_row gt_right">+42&percnt;</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,8.34 3.11,8.43 3.27,8.39 3.43,8.35 3.59,8.36 3.75,8.36 3.92,8.31 4.08,8.36 4.24,8.27 4.40,8.31 4.56,8.15 4.73,8.10 4.89,8.08 5.05,8.07 5.21,8.01 5.37,7.95 5.53,7.90 5.70,7.99 5.86,8.00 6.02,8.05 6.18,8.06 6.34,8.08 6.51,8.03 6.67,7.88 6.83,7.86 6.99,7.88 7.15,7.78 7.32,7.72 7.48,7.63 7.64,7.50 7.80,7.57 7.96,7.62 8.12,7.35 8.29,7.34 8.45,7.38 8.61,7.33 8.77,7.45 8.93,7.36 9.10,7.32 9.26,7.45 9.42,7.38 9.58,7.36 9.74,7.20 9.90,7.17 10.07,6.87 10.23,6.79 10.39,6.57 10.55,6.50 10.71,6.54 10.88,6.46 11.04,5.81 11.20,6.20 11.36,6.36 11.52,5.70 11.68,5.48 11.85,5.32 12.01,5.20 12.17,5.26 12.33,4.35 12.49,3.64 12.66,3.92 12.82,3.90 12.98,3.82 13.14,3.61 13.30,3.47 13.46,3.74 13.63,4.17 13.79,4.31 13.95,4.44 14.11,4.17 14.27,4.18 14.44,3.58 14.60,3.17 14.76,2.59 14.92,1.86 15.08,1.73 15.25,1.70 15.41,1.54 15.57,1.98 15.73,1.92 15.89,1.60 16.05,2.19 16.22,1.89 16.38,1.81 16.54,2.01 16.70,2.25 16.86,2.36 17.03,2.42 17.19,2.56 17.35,2.83 17.51,2.86 17.67,2.88 17.83,2.95 18.00,3.56 18.16,3.74 18.32,4.05 18.48,3.86 18.64,3.81 18.81,3.87 18.97,3.56 19.13,3.29 19.29,3.29 19.45,3.56 19.61,3.73 19.78,3.92 19.94,3.79 20.10,4.08 20.26,3.78 20.42,4.01 20.59,3.49 20.75,3.49 20.91,3.68 21.07,3.73 21.23,4.03 21.40,4.67 21.56,4.68 21.72,4.46 21.88,4.84 22.04,4.85 22.20,5.47 22.37,5.40 22.53,5.13 22.69,5.34 22.85,5.59 23.01,5.52 23.18,5.54 23.34,5.14 23.50,5.33 23.66,5.47 23.82,5.64 23.98,5.87 24.15,5.86 24.31,6.09 24.47,6.38 24.63,6.46 24.79,6.72 24.96,6.64 25.12,6.68 25.28,6.62 25.44,6.49 25.60,6.69 25.76,6.81 25.93,6.56 26.09,6.92 26.25,6.97 26.41,7.07 26.57,7.01 26.74,6.93 26.90,7.14 27.06,7.36 27.22,7.14 27.38,7.22 27.54,7.22 27.71,7.27 27.87,7.30 28.03,7.15 28.19,7.45 28.35,7.51 28.52,7.57 28.68,7.66 28.84,7.76 29.00,7.62 29.16,7.62 29.33,7.55 29.49,7.71 29.65,7.60 29.81,7.67 29.97,7.79 30.13,8.02 30.30,8.13 30.46,8.04 30.62,8.00 30.78,8.19 30.94,8.14 31.11,8.08 31.27,8.07 31.43,8.15 31.59,8.29 31.75,8.49 31.91,8.48 32.08,8.46 32.24,8.37 32.40,8.40 32.56,8.38 32.72,8.38 32.89,8.23 33.05,8.23 33.21,8.22 33.37,8.35 33.53,8.32 33.69,8.26 33.86,8.33 34.02,8.40 34.18,8.51 34.34,8.57 34.50,8.54 34.67,8.57 34.83,8.57 34.99,8.51 35.15,8.53 35.31,8.51 35.47,8.50 35.64,8.43 35.80,8.41 35.96,8.40 36.12,8.34 36.28,8.34 36.45,8.27 36.61,8.31 36.77,8.28 36.93,8.33 37.09,8.35 37.26,8.40 37.42,8.39 37.58,8.37 37.74,8.27 37.90,8.37 38.06,8.27 38.23,8.24 38.39,8.21 38.55,8.13 38.71,8.08 38.87,8.05 39.04,7.92 39.20,7.94 39.36,7.95 39.52,7.94 39.68,7.92 39.84,8.00 40.01,7.97 40.17,8.09 40.33,8.05 40.49,8.08 40.65,8.11 40.82,8.02 40.98,7.84 41.14,7.89 41.30,7.93 41.46,7.95 41.62,7.94 41.79,7.89 41.95,8.09 42.11,8.12 42.27,8.12 42.43,8.09 42.60,8.13 42.76,8.13 42.92,8.13 43.08,8.13 43.24,8.17 43.40,8.21 43.57,8.05 43.73,8.12 43.89,8.26 44.05,8.39 44.21,8.43 44.38,8.47 44.54,8.33 44.70,8.47 44.86,8.43 45.02,8.33 45.19,8.38 45.35,8.33 45.51,8.46 45.67,8.64 45.83,8.70 45.99,8.67 46.16,8.67 46.32,8.68 46.48,8.75 46.64,8.78 46.80,8.78 46.97,8.80 47.13,8.86 47.29,8.96 47.45,8.94 47.61,8.98 47.77,8.99 47.94,9.03 48.10,9.04 48.26,9.05 48.42,9.08 48.58,9.14 48.75,9.13 48.91,9.13 49.07,9.16 49.23,9.18 49.39,9.09 49.55,9.07 49.72,9.07 49.88,9.08 50.04,9.05 50.20,8.99 50.36,8.97 50.53,8.99 50.69,8.99 50.85,9.02 51.01,9.02 51.17,9.02 51.34,9.08 51.50,9.07 51.66,9.13 51.82,9.10 51.98,9.11 52.14,9.14 52.31,9.21 52.47,9.23 52.63,9.23 52.79,9.23 52.95,9.26 53.12,9.21 53.28,9.18 53.44,9.15 53.60,9.15 53.76,9.16 53.92,9.14 54.09,9.05 54.25,9.04 54.41,9.00 54.57,8.96 54.73,8.89 54.90,8.86 55.06,8.85 55.22,8.91 55.38,8.85 55.54,8.80 55.70,8.77 55.87,8.78 56.03,8.80 56.19,8.75 56.35,8.48 56.51,8.55 56.68,8.56 56.84,8.57 57.00,8.49 57.16,8.46 57.32,8.46 57.48,8.51 57.65,8.18 57.81,8.21 57.97,8.16 58.13,8.22 58.29,8.25 58.46,8.17 58.62,8.27 58.78,8.33 58.94,8.16 59.10,8.15 59.27,8.09 59.43,8.02 59.59,8.16 59.75,7.90 59.91,8.12 60.07,8.05 60.24,7.70 60.40,7.62 60.56,7.69 60.72,7.46 60.88,7.58 61.05,7.43 61.21,7.38 61.37,7.57 61.53,7.57 61.69,7.49 61.85,7.61 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='52.95' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='15.41' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
  </tbody>
  
  
</table>
</div>

As of Tuesday in Illinois (vs. two weeks ago):
  
- Average new cases: 3,370 (vs. 3,920) -14%↓
- Hospitalized: 2,040 (vs. 2,330) -13%↓
- Average new deaths: 36 (vs. 26) +42%↑
- Percent of Illinois fully vaccinated: 54.6% (vs. 53.5%)
- Average new vaccine doses: 19,400 (vs. 23,500)

![Illinois Metrics](https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/IL_facet.png)

![Illinois CDC_vax_combined map](https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/IL_vax_combined.png)

![IL CDC_cases_transmission_IL map](https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/IL_cases_transmission.png)

Community transmission levels are calculated by the CDC based on new cases per capita in the past week and test positivity.

## United States

As of Monday in the United States (vs. two weeks ago):
  
- Average new cases: 139,000 (vs. 138,000) +1%↑
- Hospitalized: 83,800 (vs. 95,200) -12%↓
- Average new deaths: 1,950 (vs. 1,390) +40%↑
- Percent of the United States fully vaccinated: 54% (vs. 52.3%)
- Average new vaccine doses: 772,000 (vs. 848,000)

![USA Metrics](https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/US_facet.png)

![USA fully vaccinated map](https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/usa_vax_total.png)

![USA transmission levels map](https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/usa_transmission.png)

## World

As of Monday (vs. two weeks ago):
  
- Average new cases: 531,000 (vs. 585,000) -9%↓
- Average new deaths: 8,580 (vs. 9,360) -8%↓
- Percent of the world fully vaccinated: 31.9% (vs. 29%)
- Average new vaccine doses: 28,800,000 (vs. 33,000,000)

![World Metrics](https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/world_facet.png)

## Case Acceleration

As of Monday, the 14-day percent change in average new cases was:
  
- -46% in Champaign County
- -14% in Illinois
- 1% in the United States
- -9% worldwide

![Case Acceleration](https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/new_cases_change_facet.png)

This chart measures how quickly the average number of new cases is changing, or roughly, the slope of the new-cases charts above. If the case acceleration is positive, then the average number of new cases is increasing. If it is negative, then the average number of new cases is decreasing.

## Death Acceleration

As of Monday, the 14-day percent change in average new deaths was:
  
- 42% in Illinois
- 40% in the United States
- -8% worldwide

![Death Acceleration](https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/new_deaths_change_facet.png)

This chart measures how quickly the average number of new deaths is changing, or roughly, the slope of the new-deaths charts above. If the death acceleration is positive, then the average number of new deaths is increasing. If it is negative, then the average number of new deaths is decreasing.


