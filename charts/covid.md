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
<td class="gt_row gt_right">57</td>
<td class="gt_row gt_right">&minus;43&percnt;</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,7.73 3.11,7.54 3.27,7.47 3.43,7.63 3.59,7.44 3.75,7.15 3.92,7.26 4.08,7.12 4.24,7.31 4.40,7.34 4.56,7.13 4.73,7.19 4.89,7.36 5.05,7.45 5.21,7.55 5.37,7.20 5.53,7.30 5.70,7.53 5.86,7.74 6.02,7.53 6.18,7.40 6.34,7.36 6.51,7.34 6.67,7.40 6.83,7.43 6.99,7.30 7.15,7.54 7.32,7.65 7.48,7.55 7.64,7.63 7.80,7.39 7.96,7.30 8.12,6.90 8.29,6.80 8.45,6.43 8.61,6.11 8.77,5.95 8.93,5.96 9.10,5.53 9.26,5.43 9.42,4.97 9.58,4.96 9.74,5.09 9.90,5.02 10.07,3.97 10.23,3.43 10.39,3.12 10.55,3.10 10.71,2.77 10.88,2.26 11.04,1.54 11.20,2.15 11.36,2.41 11.52,2.72 11.68,2.79 11.85,2.66 12.01,2.57 12.17,3.26 12.33,2.80 12.49,2.84 12.66,2.60 12.82,2.69 12.98,3.15 13.14,3.32 13.30,3.35 13.46,4.03 13.63,4.53 13.79,5.10 13.95,4.99 14.11,4.84 14.27,5.09 14.44,4.86 14.60,4.58 14.76,4.46 14.92,3.89 15.08,3.96 15.25,4.07 15.41,3.97 15.57,4.29 15.73,4.47 15.89,4.57 16.05,4.99 16.22,5.23 16.38,5.40 16.54,5.57 16.70,5.75 16.86,6.12 17.03,5.98 17.19,6.05 17.35,6.00 17.51,5.91 17.67,6.14 17.83,6.14 18.00,5.96 18.16,6.10 18.32,6.34 18.48,6.39 18.64,6.42 18.81,6.33 18.97,6.17 19.13,5.97 19.29,5.79 19.45,5.71 19.61,5.79 19.78,5.53 19.94,5.25 20.10,5.10 20.26,5.14 20.42,5.05 20.59,4.82 20.75,4.79 20.91,4.98 21.07,5.32 21.23,5.61 21.40,5.71 21.56,5.93 21.72,6.19 21.88,6.14 22.04,6.40 22.20,6.31 22.37,6.03 22.53,6.27 22.69,6.30 22.85,6.31 23.01,6.27 23.18,6.10 23.34,6.27 23.50,6.42 23.66,6.41 23.82,6.43 23.98,6.40 24.15,6.62 24.31,6.74 24.47,6.70 24.63,6.53 24.79,6.45 24.96,6.47 25.12,6.36 25.28,6.02 25.44,5.90 25.60,5.93 25.76,5.94 25.93,5.91 26.09,5.92 26.25,5.96 26.41,6.18 26.57,6.20 26.74,6.47 26.90,7.05 27.06,6.93 27.22,6.79 27.38,6.80 27.54,6.82 27.71,7.07 27.87,7.00 28.03,6.82 28.19,7.10 28.35,7.49 28.52,7.71 28.68,7.85 28.84,7.95 29.00,7.92 29.16,7.95 29.33,8.19 29.49,8.28 29.65,8.28 29.81,8.34 29.97,8.34 30.13,8.42 30.30,8.51 30.46,8.44 30.62,8.37 30.78,8.39 30.94,8.31 31.11,8.26 31.27,8.29 31.43,8.11 31.59,8.17 31.75,8.12 31.91,8.14 32.08,8.20 32.24,8.19 32.40,8.11 32.56,8.26 32.72,8.10 32.89,8.12 33.05,7.87 33.21,7.85 33.37,7.82 33.53,7.85 33.69,7.75 33.86,7.86 34.02,7.83 34.18,8.00 34.34,7.80 34.50,7.89 34.67,7.89 34.83,7.90 34.99,7.80 35.15,7.71 35.31,7.68 35.47,7.80 35.64,7.65 35.80,7.57 35.96,7.43 36.12,7.54 36.28,7.53 36.45,7.50 36.61,7.54 36.77,7.60 36.93,7.53 37.09,7.60 37.26,7.66 37.42,7.57 37.58,7.62 37.74,7.63 37.90,7.66 38.06,7.77 38.23,7.73 38.39,7.70 38.55,7.72 38.71,7.73 38.87,7.71 39.04,7.71 39.20,7.83 39.36,7.93 39.52,8.00 39.68,8.18 39.84,8.21 40.01,8.22 40.17,8.29 40.33,8.26 40.49,8.35 40.65,8.30 40.82,8.35 40.98,8.37 41.14,8.39 41.30,8.38 41.46,8.27 41.62,8.34 41.79,8.32 41.95,8.34 42.11,8.45 42.27,8.51 42.43,8.52 42.60,8.68 42.76,8.65 42.92,8.64 43.08,8.77 43.24,8.64 43.40,8.66 43.57,8.69 43.73,8.74 43.89,8.82 44.05,8.88 44.21,8.80 44.38,8.94 44.54,8.94 44.70,8.97 44.86,8.95 45.02,9.01 45.19,9.05 45.35,9.13 45.51,9.11 45.67,9.11 45.83,9.11 45.99,9.14 46.16,9.16 46.32,9.20 46.48,9.20 46.64,9.19 46.80,9.23 46.97,9.25 47.13,9.25 47.29,9.25 47.45,9.25 47.61,9.25 47.77,9.23 47.94,9.24 48.10,9.21 48.26,9.21 48.42,9.20 48.58,9.20 48.75,9.19 48.91,9.22 49.07,9.22 49.23,9.25 49.39,9.26 49.55,9.25 49.72,9.19 49.88,9.20 50.04,9.14 50.20,9.10 50.36,9.06 50.53,9.04 50.69,8.98 50.85,9.01 51.01,8.95 51.17,8.97 51.34,8.85 51.50,8.81 51.66,8.64 51.82,8.68 51.98,8.40 52.14,8.36 52.31,8.15 52.47,8.25 52.63,8.26 52.79,8.17 52.95,8.02 53.12,7.94 53.28,7.84 53.44,7.83 53.60,7.65 53.76,7.53 53.92,7.44 54.09,7.33 54.25,7.26 54.41,7.08 54.57,6.84 54.73,6.79 54.90,6.53 55.06,6.42 55.22,6.26 55.38,6.34 55.54,6.20 55.70,6.25 55.87,6.21 56.03,6.29 56.19,6.39 56.35,5.99 56.51,6.12 56.68,6.08 56.84,5.90 57.00,5.90 57.16,5.78 57.32,5.76 57.48,5.97 57.65,5.80 57.81,5.81 57.97,5.90 58.13,5.73 58.29,5.66 58.46,5.39 58.62,5.04 58.78,4.75 58.94,4.35 59.10,4.38 59.27,4.63 59.43,4.84 59.59,5.19 59.75,5.56 59.91,5.56 60.07,5.84 60.24,5.93 60.40,5.82 60.56,6.10 60.72,5.98 60.88,6.23 61.05,6.50 61.21,6.90 61.37,6.94 61.53,7.10 61.69,6.88 61.85,7.00 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='49.39' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='11.04' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
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
  
- Average new cases: 57 (vs. 100) -43%↓
- Average hospitalized: 24 (vs. 69) 
- Deaths in the past month: 15 (vs. 14)
- Percent of Champaign County fully vaccinated: 53.4% (vs. 52.4%)
- Average new vaccine doses: 320 (vs. 411)

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
<td class="gt_row gt_right">3,679</td>
<td class="gt_row gt_right">3,426</td>
<td class="gt_row gt_right">&minus;7&percnt;</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,6.27 3.11,6.32 3.27,6.32 3.43,6.02 3.59,6.02 3.75,6.06 3.92,6.06 4.08,5.89 4.24,5.89 4.40,5.71 4.56,5.71 4.73,5.49 4.89,5.49 5.05,5.35 5.21,5.35 5.37,5.20 5.53,5.20 5.70,5.25 5.86,5.25 6.02,4.90 6.18,4.90 6.34,4.84 6.51,4.84 6.67,4.80 6.83,4.80 6.99,4.75 7.15,4.75 7.32,4.66 7.48,4.66 7.64,4.52 7.80,4.52 7.96,4.21 8.12,4.21 8.29,4.15 8.45,4.15 8.61,3.95 8.77,3.95 8.93,3.75 9.10,3.75 9.26,3.62 9.42,3.62 9.58,3.53 9.74,3.53 9.90,3.46 10.07,3.46 10.23,3.53 10.39,3.53 10.55,3.57 10.71,3.57 10.88,3.61 11.04,3.61 11.20,3.72 11.36,3.72 11.52,3.79 11.68,3.79 11.85,3.92 12.01,3.92 12.17,4.07 12.33,4.07 12.49,4.28 12.66,4.28 12.82,4.38 12.98,4.38 13.14,4.51 13.30,4.51 13.46,4.59 13.63,4.59 13.79,4.75 13.95,4.75 14.11,4.71 14.27,4.71 14.44,4.71 14.60,4.71 14.76,4.72 14.92,4.72 15.08,4.67 15.25,4.67 15.41,4.71 15.57,4.71 15.73,4.73 15.89,4.73 16.05,4.78 16.22,4.78 16.38,4.80 16.54,4.80 16.70,4.89 16.86,4.89 17.03,4.97 17.19,4.97 17.35,5.40 17.51,5.40 17.67,5.37 17.83,5.37 18.00,5.65 18.16,5.65 18.32,5.68 18.48,5.68 18.64,5.84 18.81,5.84 18.97,6.01 19.13,6.01 19.29,6.17 19.45,6.17 19.61,6.14 19.78,6.14 19.94,6.53 20.10,6.53 20.26,6.58 20.42,6.58 20.59,6.71 20.75,6.71 20.91,6.84 21.07,6.84 21.23,6.85 21.40,6.85 21.56,6.90 21.72,6.90 21.88,6.99 22.04,6.99 22.20,7.06 22.37,7.06 22.53,7.17 22.69,7.17 22.85,7.25 23.01,7.25 23.18,7.25 23.34,7.25 23.50,7.43 23.66,7.43 23.82,7.56 23.98,7.56 24.15,7.73 24.31,7.73 24.47,7.89 24.63,7.89 24.79,7.97 24.96,7.97 25.12,8.05 25.28,8.05 25.44,8.16 25.60,8.16 25.76,8.27 25.93,8.27 26.09,8.44 26.25,8.44 26.41,8.50 26.57,8.50 26.74,8.59 26.90,8.59 27.06,8.66 27.22,8.66 27.38,8.73 27.54,8.73 27.71,8.80 27.87,8.80 28.03,8.81 28.19,8.81 28.35,8.83 28.52,8.83 28.68,8.91 28.84,8.91 29.00,8.97 29.16,8.97 29.33,9.04 29.49,9.04 29.65,9.05 29.81,9.05 29.97,9.07 30.13,9.07 30.30,9.11 30.46,9.11 30.62,9.12 30.78,9.12 30.94,9.15 31.11,9.15 31.27,9.23 31.43,9.23 31.59,9.20 31.75,9.20 31.91,9.23 32.08,9.23 32.24,9.22 32.40,9.22 32.56,9.23 32.72,9.23 32.89,9.26 33.05,9.26 33.21,9.26 33.37,9.26 33.53,9.21 33.69,9.21 33.86,9.23 34.02,9.23 34.18,9.23 34.34,9.23 34.50,9.21 34.67,9.21 34.83,9.18 34.99,9.18 35.15,9.18 35.31,9.18 35.47,9.13 35.64,9.13 35.80,9.11 35.96,9.11 36.12,9.08 36.28,9.08 36.45,9.10 36.61,9.10 36.77,9.14 36.93,9.14 37.09,9.06 37.26,9.06 37.42,9.01 37.58,9.01 37.74,8.97 37.90,8.97 38.06,8.89 38.23,8.89 38.39,8.84 38.55,8.84 38.71,8.73 38.87,8.73 39.04,8.64 39.20,8.64 39.36,8.65 39.52,8.65 39.68,8.57 39.84,8.57 40.01,8.51 40.17,8.51 40.33,8.50 40.49,8.50 40.65,8.40 40.82,8.40 40.98,8.24 41.14,8.24 41.30,8.18 41.46,8.18 41.62,8.14 41.79,8.14 41.95,8.08 42.11,8.08 42.27,7.78 42.43,7.78 42.60,7.58 42.76,7.58 42.92,7.48 43.08,7.48 43.24,7.41 43.40,7.41 43.57,7.30 43.73,7.30 43.89,7.06 44.05,7.06 44.21,6.76 44.38,6.76 44.54,6.84 44.70,6.84 44.86,6.61 45.02,6.61 45.19,6.40 45.35,6.40 45.51,6.32 45.67,6.32 45.83,6.16 45.99,6.16 46.16,5.90 46.32,5.90 46.48,5.82 46.64,5.82 46.80,5.47 46.97,5.47 47.13,5.29 47.29,5.29 47.45,5.07 47.61,5.07 47.77,4.93 47.94,4.93 48.10,4.70 48.26,4.70 48.42,4.63 48.58,4.63 48.75,4.22 48.91,4.22 49.07,4.20 49.23,4.20 49.39,4.09 49.55,4.09 49.72,3.83 49.88,3.83 50.04,3.73 50.20,3.73 50.36,3.76 50.53,3.76 50.69,3.58 50.85,3.58 51.01,3.60 51.17,3.60 51.34,3.59 51.50,3.59 51.66,3.21 51.82,3.21 51.98,3.17 52.14,3.17 52.31,3.33 52.47,3.33 52.63,3.19 52.79,3.19 52.95,3.36 53.12,3.36 53.28,3.20 53.44,3.20 53.60,2.97 53.76,2.97 53.92,2.96 54.09,2.96 54.25,3.18 54.41,3.18 54.57,2.58 54.73,2.58 54.90,2.74 55.06,2.74 55.22,2.25 55.38,2.25 55.54,2.06 55.70,2.06 55.87,2.01 56.03,2.01 56.19,1.74 56.35,1.74 56.51,1.54 56.68,1.54 56.84,1.91 57.00,1.91 57.16,1.90 57.32,1.90 57.48,2.50 57.65,2.50 57.81,2.81 57.97,2.81 58.13,2.68 58.29,2.68 58.46,2.85 58.62,2.85 58.78,2.73 58.94,2.73 59.10,2.74 59.27,2.74 59.43,2.93 59.59,2.93 59.75,2.39 59.91,2.39 60.07,2.33 60.24,2.33 60.40,2.43 60.56,2.43 60.72,2.88 60.88,2.88 61.05,3.16 61.21,3.16 61.37,3.21 61.53,3.21 61.69,3.07 61.85,3.40 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='32.89' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='33.05' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='33.21' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='33.37' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='56.51' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /><circle cx='56.68' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_left gt_striped">Hospitalized</td>
<td class="gt_row gt_right gt_striped">2,263</td>
<td class="gt_row gt_right gt_striped">1,905</td>
<td class="gt_row gt_right gt_striped">&minus;16&percnt;</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,5.76 3.11,5.80 3.27,5.80 3.43,5.84 3.59,5.84 3.75,5.64 3.92,5.64 4.08,5.51 4.24,5.51 4.40,5.50 4.56,5.50 4.73,5.44 4.89,5.44 5.05,5.27 5.21,5.27 5.37,5.20 5.53,5.20 5.70,5.21 5.86,5.21 6.02,5.08 6.18,5.08 6.34,5.15 6.51,5.15 6.67,4.90 6.83,4.90 6.99,4.54 7.15,4.54 7.32,4.28 7.48,4.28 7.64,4.04 7.80,4.04 7.96,3.69 8.12,3.69 8.29,3.65 8.45,3.65 8.61,3.56 8.77,3.56 8.93,3.55 9.10,3.55 9.26,2.91 9.42,2.91 9.58,2.79 9.74,2.79 9.90,2.60 10.07,2.60 10.23,2.73 10.39,2.73 10.55,2.67 10.71,2.67 10.88,2.27 11.04,2.27 11.20,2.40 11.36,2.40 11.52,2.05 11.68,2.05 11.85,1.77 12.01,1.77 12.17,2.15 12.33,2.15 12.49,2.32 12.66,2.32 12.82,2.46 12.98,2.46 13.14,2.71 13.30,2.71 13.46,2.77 13.63,2.77 13.79,2.57 13.95,2.57 14.11,2.19 14.27,2.19 14.44,2.30 14.60,2.30 14.76,2.45 14.92,2.45 15.08,2.81 15.25,2.81 15.41,2.90 15.57,2.90 15.73,3.23 15.89,3.23 16.05,3.05 16.22,3.05 16.38,2.61 16.54,2.61 16.70,2.67 16.86,2.67 17.03,2.68 17.19,2.68 17.35,2.99 17.51,2.99 17.67,3.11 17.83,3.11 18.00,3.41 18.16,3.41 18.32,3.27 18.48,3.27 18.64,3.18 18.81,3.18 18.97,3.30 19.13,3.30 19.29,3.82 19.45,3.82 19.61,4.05 19.78,4.05 19.94,4.54 20.10,4.54 20.26,4.54 20.42,4.54 20.59,4.82 20.75,4.82 20.91,4.85 21.07,4.85 21.23,4.79 21.40,4.79 21.56,4.91 21.72,4.91 21.88,5.15 22.04,5.15 22.20,5.25 22.37,5.25 22.53,5.19 22.69,5.19 22.85,5.28 23.01,5.28 23.18,5.18 23.34,5.18 23.50,5.27 23.66,5.27 23.82,5.58 23.98,5.58 24.15,5.98 24.31,5.98 24.47,6.18 24.63,6.18 24.79,6.52 24.96,6.52 25.12,6.46 25.28,6.46 25.44,6.70 25.60,6.70 25.76,6.77 25.93,6.77 26.09,6.84 26.25,6.84 26.41,7.21 26.57,7.21 26.74,7.29 26.90,7.29 27.06,7.64 27.22,7.64 27.38,7.66 27.54,7.66 27.71,7.64 27.87,7.64 28.03,7.62 28.19,7.62 28.35,7.75 28.52,7.75 28.68,7.97 28.84,7.97 29.00,8.06 29.16,8.06 29.33,8.30 29.49,8.30 29.65,8.29 29.81,8.29 29.97,8.24 30.13,8.24 30.30,8.40 30.46,8.40 30.62,8.69 30.78,8.69 30.94,8.82 31.11,8.82 31.27,8.80 31.43,8.80 31.59,9.05 31.75,9.05 31.91,8.97 32.08,8.97 32.24,8.94 32.40,8.94 32.56,8.82 32.72,8.82 32.89,9.01 33.05,9.01 33.21,9.04 33.37,9.04 33.53,9.04 33.69,9.04 33.86,9.13 34.02,9.13 34.18,9.05 34.34,9.05 34.50,8.99 34.67,8.99 34.83,9.03 34.99,9.03 35.15,9.16 35.31,9.16 35.47,9.08 35.64,9.08 35.80,9.18 35.96,9.18 36.12,9.25 36.28,9.25 36.45,9.26 36.61,9.26 36.77,9.10 36.93,9.10 37.09,8.85 37.26,8.85 37.42,9.09 37.58,9.09 37.74,9.06 37.90,9.06 38.06,9.08 38.23,9.08 38.39,9.05 38.55,9.05 38.71,9.02 38.87,9.02 39.04,8.79 39.20,8.79 39.36,8.86 39.52,8.86 39.68,8.75 39.84,8.75 40.01,8.88 40.17,8.88 40.33,8.85 40.49,8.85 40.65,8.74 40.82,8.74 40.98,8.64 41.14,8.64 41.30,8.39 41.46,8.39 41.62,8.50 41.79,8.50 41.95,8.28 42.11,8.28 42.27,8.12 42.43,8.12 42.60,8.06 42.76,8.06 42.92,7.92 43.08,7.92 43.24,7.92 43.40,7.92 43.57,7.61 43.73,7.61 43.89,7.39 44.05,7.39 44.21,7.29 44.38,7.29 44.54,7.20 44.70,7.20 44.86,7.20 45.02,7.20 45.19,7.06 45.35,7.06 45.51,6.91 45.67,6.91 45.83,6.40 45.99,6.40 46.16,6.18 46.32,6.18 46.48,6.02 46.64,6.02 46.80,6.04 46.97,6.04 47.13,5.61 47.29,5.61 47.45,5.67 47.61,5.67 47.77,5.32 47.94,5.32 48.10,4.91 48.26,4.91 48.42,4.63 48.58,4.63 48.75,4.44 48.91,4.44 49.07,4.27 49.23,4.27 49.39,4.11 49.55,4.11 49.72,3.82 49.88,3.82 50.04,3.44 50.20,3.44 50.36,3.09 50.53,3.09 50.69,2.99 50.85,2.99 51.01,2.92 51.17,2.92 51.34,2.90 51.50,2.90 51.66,3.01 51.82,3.01 51.98,2.98 52.14,2.98 52.31,2.65 52.47,2.65 52.63,2.27 52.79,2.27 52.95,2.13 53.12,2.13 53.28,2.18 53.44,2.18 53.60,1.96 53.76,1.96 53.92,2.27 54.09,2.27 54.25,2.29 54.41,2.29 54.57,2.10 54.73,2.10 54.90,1.86 55.06,1.86 55.22,1.95 55.38,1.95 55.54,1.90 55.70,1.90 55.87,1.78 56.03,1.78 56.19,1.70 56.35,1.70 56.51,2.14 56.68,2.14 56.84,1.79 57.00,1.79 57.16,1.59 57.32,1.59 57.48,1.62 57.65,1.62 57.81,1.58 57.97,1.58 58.13,1.54 58.29,1.54 58.46,1.95 58.62,1.95 58.78,1.92 58.94,1.92 59.10,1.93 59.27,1.93 59.43,1.87 59.59,1.87 59.75,2.00 59.91,2.00 60.07,2.26 60.24,2.26 60.40,2.58 60.56,2.58 60.72,3.05 60.88,3.05 61.05,3.56 61.21,3.56 61.37,3.27 61.53,3.27 61.69,3.27 61.85,3.27 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='36.45' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='36.61' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='58.13' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /><circle cx='58.29' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_left">Deaths</td>
<td class="gt_row gt_right">35</td>
<td class="gt_row gt_right">36</td>
<td class="gt_row gt_right">+5&percnt;</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,5.63 3.11,5.75 3.27,5.75 3.43,5.66 3.59,5.66 3.75,5.66 3.92,5.66 4.08,5.02 4.24,5.02 4.40,5.02 4.56,5.02 4.73,4.99 4.89,4.99 5.05,5.51 5.21,5.51 5.37,5.38 5.53,5.38 5.70,5.14 5.86,5.14 6.02,5.45 6.18,5.45 6.34,5.75 6.51,5.75 6.67,6.17 6.83,6.17 6.99,6.44 7.15,6.44 7.32,6.32 7.48,6.32 7.64,6.44 7.80,6.44 7.96,6.44 8.12,6.44 8.29,6.20 8.45,6.20 8.61,6.26 8.77,6.26 8.93,6.20 9.10,6.20 9.26,6.14 9.42,6.14 9.58,5.87 9.74,5.87 9.90,5.78 10.07,5.78 10.23,5.72 10.39,5.72 10.55,5.48 10.71,5.48 10.88,5.48 11.04,5.48 11.20,5.17 11.36,5.17 11.52,5.35 11.68,5.35 11.85,5.23 12.01,5.23 12.17,5.45 12.33,5.45 12.49,5.51 12.66,5.51 12.82,5.72 12.98,5.72 13.14,5.69 13.30,5.69 13.46,5.63 13.63,5.63 13.79,5.20 13.95,5.20 14.11,5.60 14.27,5.60 14.44,5.17 14.60,5.17 14.76,5.08 14.92,5.08 15.08,4.93 15.25,4.93 15.41,4.60 15.57,4.60 15.73,4.39 15.89,4.39 16.05,4.30 16.22,4.30 16.38,3.73 16.54,3.73 16.70,3.85 16.86,3.85 17.03,3.88 17.19,3.88 17.35,3.85 17.51,3.85 17.67,3.76 17.83,3.76 18.00,4.06 18.16,4.06 18.32,3.97 18.48,3.97 18.64,4.45 18.81,4.45 18.97,4.30 19.13,4.30 19.29,4.42 19.45,4.42 19.61,4.54 19.78,4.54 19.94,4.18 20.10,4.18 20.26,3.43 20.42,3.43 20.59,3.61 20.75,3.61 20.91,3.79 21.07,3.79 21.23,3.88 21.40,3.88 21.56,3.82 21.72,3.82 21.88,3.64 22.04,3.64 22.20,4.45 22.37,4.45 22.53,4.57 22.69,4.57 22.85,4.57 23.01,4.57 23.18,4.45 23.34,4.45 23.50,4.60 23.66,4.60 23.82,4.63 23.98,4.63 24.15,4.60 24.31,4.60 24.47,4.60 24.63,4.60 24.79,4.78 24.96,4.78 25.12,4.96 25.28,4.96 25.44,4.27 25.60,4.27 25.76,4.57 25.93,4.57 26.09,5.14 26.25,5.14 26.41,5.69 26.57,5.69 26.74,5.87 26.90,5.87 27.06,6.02 27.22,6.02 27.38,5.45 27.54,5.45 27.71,6.02 27.87,6.02 28.03,5.87 28.19,5.87 28.35,5.45 28.52,5.45 28.68,5.66 28.84,5.66 29.00,5.45 29.16,5.45 29.33,5.96 29.49,5.96 29.65,6.74 29.81,6.74 29.97,6.95 30.13,6.95 30.30,6.83 30.46,6.83 30.62,6.86 30.78,6.86 30.94,6.89 31.11,6.89 31.27,7.16 31.43,7.16 31.59,7.31 31.75,7.31 31.91,7.28 32.08,7.28 32.24,7.37 32.40,7.37 32.56,7.64 32.72,7.64 32.89,8.03 33.05,8.03 33.21,7.97 33.37,7.97 33.53,8.12 33.69,8.12 33.86,8.18 34.02,8.18 34.18,8.33 34.34,8.33 34.50,8.36 34.67,8.36 34.83,8.42 34.99,8.42 35.15,8.54 35.31,8.54 35.47,8.78 35.64,8.78 35.80,8.72 35.96,8.72 36.12,8.75 36.28,8.75 36.45,8.84 36.61,8.84 36.77,8.93 36.93,8.93 37.09,8.57 37.26,8.57 37.42,8.51 37.58,8.51 37.74,8.48 37.90,8.48 38.06,8.54 38.23,8.54 38.39,8.39 38.55,8.39 38.71,8.15 38.87,8.15 39.04,8.06 39.20,8.06 39.36,8.18 39.52,8.18 39.68,8.15 39.84,8.15 40.01,8.30 40.17,8.30 40.33,8.30 40.49,8.30 40.65,8.30 40.82,8.30 40.98,8.54 41.14,8.54 41.30,8.51 41.46,8.51 41.62,8.72 41.79,8.72 41.95,8.63 42.11,8.63 42.27,8.66 42.43,8.66 42.60,8.78 42.76,8.78 42.92,9.05 43.08,9.05 43.24,9.14 43.40,9.14 43.57,9.14 43.73,9.14 43.89,9.14 44.05,9.14 44.21,9.26 44.38,9.26 44.54,9.05 44.70,9.05 44.86,8.93 45.02,8.93 45.19,8.81 45.35,8.81 45.51,8.81 45.67,8.81 45.83,8.87 45.99,8.87 46.16,8.78 46.32,8.78 46.48,8.42 46.64,8.42 46.80,8.36 46.97,8.36 47.13,8.21 47.29,8.21 47.45,8.03 47.61,8.03 47.77,7.76 47.94,7.76 48.10,7.64 48.26,7.64 48.42,7.58 48.58,7.58 48.75,7.85 48.91,7.85 49.07,7.58 49.23,7.58 49.39,7.37 49.55,7.37 49.72,7.25 49.88,7.25 50.04,7.28 50.20,7.28 50.36,7.37 50.53,7.37 50.69,7.19 50.85,7.19 51.01,6.08 51.17,6.08 51.34,6.35 51.50,6.35 51.66,6.41 51.82,6.41 51.98,6.44 52.14,6.44 52.31,6.11 52.47,6.11 52.63,5.96 52.79,5.96 52.95,5.99 53.12,5.99 53.28,6.20 53.44,6.20 53.60,4.81 53.76,4.81 53.92,4.93 54.09,4.93 54.25,4.75 54.41,4.75 54.57,4.99 54.73,4.99 54.90,5.11 55.06,5.11 55.22,4.78 55.38,4.78 55.54,5.17 55.70,5.17 55.87,5.45 56.03,5.45 56.19,4.75 56.35,4.75 56.51,4.69 56.68,4.69 56.84,4.45 57.00,4.45 57.16,4.18 57.32,4.18 57.48,4.72 57.65,4.72 57.81,3.67 57.97,3.67 58.13,4.57 58.29,4.57 58.46,4.27 58.62,4.27 58.78,2.86 58.94,2.86 59.10,2.53 59.27,2.53 59.43,2.80 59.59,2.80 59.75,1.84 59.91,1.84 60.07,2.35 60.24,2.35 60.40,1.75 60.56,1.75 60.72,1.54 60.88,1.54 61.05,2.32 61.21,2.32 61.37,2.29 61.53,2.29 61.69,1.96 61.85,2.47 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='44.21' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='44.38' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='60.72' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /><circle cx='60.88' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
  </tbody>
  
  
</table>
</div>

As of Tuesday in Illinois (vs. two weeks ago):
  
- Average new cases: 3,430 (vs. 3,920) -13%↓
- Hospitalized: 1,900 (vs. 2,330) -17%↓
- Average new deaths: 36 (vs. 26) +42%↑
- Percent of Illinois fully vaccinated: 54.5% (vs. 53.5%)
- Average new vaccine doses: 19,900 (vs. 26,200)

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
  
- -43% in Champaign County
- -13% in Illinois
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


