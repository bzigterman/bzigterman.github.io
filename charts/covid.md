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
<td class="gt_row gt_right">108</td>
<td class="gt_row gt_right">60</td>
<td class="gt_row gt_right">&minus;45&percnt;</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,7.47 3.11,7.73 3.27,7.54 3.43,7.47 3.59,7.63 3.75,7.44 3.92,7.15 4.08,7.26 4.24,7.12 4.40,7.31 4.56,7.34 4.73,7.13 4.89,7.19 5.05,7.36 5.21,7.45 5.37,7.55 5.53,7.20 5.70,7.30 5.86,7.53 6.02,7.74 6.18,7.53 6.34,7.40 6.51,7.36 6.67,7.34 6.83,7.40 6.99,7.43 7.15,7.30 7.32,7.54 7.48,7.65 7.64,7.55 7.80,7.63 7.96,7.39 8.12,7.30 8.29,6.90 8.45,6.80 8.61,6.43 8.77,6.11 8.93,5.95 9.10,5.96 9.26,5.53 9.42,5.43 9.58,4.97 9.74,4.96 9.90,5.09 10.07,5.02 10.23,3.97 10.39,3.43 10.55,3.12 10.71,3.10 10.88,2.77 11.04,2.26 11.20,1.54 11.36,2.15 11.52,2.41 11.68,2.72 11.85,2.79 12.01,2.66 12.17,2.57 12.33,3.26 12.49,2.80 12.66,2.84 12.82,2.60 12.98,2.69 13.14,3.15 13.30,3.32 13.46,3.35 13.63,4.03 13.79,4.53 13.95,5.10 14.11,4.99 14.27,4.84 14.44,5.09 14.60,4.86 14.76,4.58 14.92,4.46 15.08,3.89 15.25,3.96 15.41,4.07 15.57,3.97 15.73,4.29 15.89,4.47 16.05,4.57 16.22,4.99 16.38,5.23 16.54,5.40 16.70,5.57 16.86,5.75 17.03,6.12 17.19,5.98 17.35,6.05 17.51,6.00 17.67,5.91 17.83,6.14 18.00,6.14 18.16,5.96 18.32,6.10 18.48,6.34 18.64,6.39 18.81,6.42 18.97,6.33 19.13,6.17 19.29,5.97 19.45,5.79 19.61,5.71 19.78,5.79 19.94,5.53 20.10,5.25 20.26,5.10 20.42,5.14 20.59,5.05 20.75,4.82 20.91,4.79 21.07,4.98 21.23,5.32 21.40,5.61 21.56,5.71 21.72,5.93 21.88,6.19 22.04,6.14 22.20,6.40 22.37,6.31 22.53,6.03 22.69,6.27 22.85,6.30 23.01,6.31 23.18,6.27 23.34,6.10 23.50,6.27 23.66,6.42 23.82,6.41 23.98,6.43 24.15,6.40 24.31,6.62 24.47,6.74 24.63,6.70 24.79,6.53 24.96,6.45 25.12,6.47 25.28,6.36 25.44,6.02 25.60,5.90 25.76,5.93 25.93,5.94 26.09,5.91 26.25,5.92 26.41,5.96 26.57,6.18 26.74,6.20 26.90,6.47 27.06,7.05 27.22,6.93 27.38,6.79 27.54,6.80 27.71,6.82 27.87,7.07 28.03,7.00 28.19,6.82 28.35,7.10 28.52,7.49 28.68,7.71 28.84,7.85 29.00,7.95 29.16,7.92 29.33,7.95 29.49,8.19 29.65,8.28 29.81,8.28 29.97,8.34 30.13,8.34 30.30,8.42 30.46,8.51 30.62,8.44 30.78,8.37 30.94,8.39 31.11,8.31 31.27,8.26 31.43,8.29 31.59,8.11 31.75,8.17 31.91,8.12 32.08,8.14 32.24,8.20 32.40,8.19 32.56,8.11 32.72,8.26 32.89,8.10 33.05,8.12 33.21,7.87 33.37,7.85 33.53,7.82 33.69,7.85 33.86,7.75 34.02,7.86 34.18,7.83 34.34,8.00 34.50,7.80 34.67,7.89 34.83,7.89 34.99,7.90 35.15,7.80 35.31,7.71 35.47,7.68 35.64,7.80 35.80,7.65 35.96,7.57 36.12,7.43 36.28,7.54 36.45,7.53 36.61,7.50 36.77,7.54 36.93,7.60 37.09,7.53 37.26,7.60 37.42,7.66 37.58,7.57 37.74,7.62 37.90,7.63 38.06,7.66 38.23,7.77 38.39,7.73 38.55,7.70 38.71,7.72 38.87,7.73 39.04,7.71 39.20,7.71 39.36,7.83 39.52,7.93 39.68,8.00 39.84,8.18 40.01,8.21 40.17,8.22 40.33,8.29 40.49,8.26 40.65,8.35 40.82,8.30 40.98,8.35 41.14,8.37 41.30,8.39 41.46,8.38 41.62,8.27 41.79,8.34 41.95,8.32 42.11,8.34 42.27,8.45 42.43,8.51 42.60,8.52 42.76,8.68 42.92,8.65 43.08,8.64 43.24,8.77 43.40,8.64 43.57,8.66 43.73,8.69 43.89,8.74 44.05,8.82 44.21,8.88 44.38,8.80 44.54,8.94 44.70,8.94 44.86,8.97 45.02,8.95 45.19,9.01 45.35,9.05 45.51,9.13 45.67,9.11 45.83,9.11 45.99,9.11 46.16,9.14 46.32,9.16 46.48,9.20 46.64,9.20 46.80,9.19 46.97,9.23 47.13,9.25 47.29,9.25 47.45,9.25 47.61,9.25 47.77,9.25 47.94,9.23 48.10,9.24 48.26,9.21 48.42,9.21 48.58,9.20 48.75,9.20 48.91,9.19 49.07,9.22 49.23,9.22 49.39,9.25 49.55,9.26 49.72,9.25 49.88,9.19 50.04,9.20 50.20,9.14 50.36,9.10 50.53,9.06 50.69,9.04 50.85,8.98 51.01,9.01 51.17,8.95 51.34,8.97 51.50,8.85 51.66,8.81 51.82,8.64 51.98,8.68 52.14,8.40 52.31,8.36 52.47,8.15 52.63,8.25 52.79,8.26 52.95,8.17 53.12,8.02 53.28,7.94 53.44,7.84 53.60,7.83 53.76,7.65 53.92,7.53 54.09,7.44 54.25,7.33 54.41,7.26 54.57,7.08 54.73,6.84 54.90,6.79 55.06,6.53 55.22,6.42 55.38,6.26 55.54,6.34 55.70,6.20 55.87,6.25 56.03,6.21 56.19,6.29 56.35,6.39 56.51,5.99 56.68,6.12 56.84,6.08 57.00,5.90 57.16,5.90 57.32,5.78 57.48,5.76 57.65,5.97 57.81,5.80 57.97,5.81 58.13,5.90 58.29,5.73 58.46,5.66 58.62,5.39 58.78,5.04 58.94,4.75 59.10,4.35 59.27,4.38 59.43,4.63 59.59,4.84 59.75,5.19 59.91,5.56 60.07,5.56 60.24,5.84 60.40,5.93 60.56,5.82 60.72,6.10 60.88,5.98 61.05,6.23 61.21,6.50 61.37,6.90 61.53,6.94 61.69,7.10 61.85,6.88 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='49.55' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='11.20' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_left gt_striped">Hospitalized</td>
<td class="gt_row gt_right gt_striped">69</td>
<td class="gt_row gt_right gt_striped">24</td>
<td class="gt_row gt_right gt_striped">&minus;66&percnt;</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,7.65 3.11,7.65 3.27,7.65 3.43,7.65 3.59,8.18 3.75,8.18 3.92,8.18 4.08,8.18 4.24,8.18 4.40,8.18 4.56,8.18 4.73,8.04 4.89,8.04 5.05,8.04 5.21,8.04 5.37,8.04 5.53,8.04 5.70,8.04 5.86,6.90 6.02,6.90 6.18,6.90 6.34,6.90 6.51,6.90 6.67,6.90 6.83,6.90 6.99,6.15 7.15,6.15 7.32,6.15 7.48,6.15 7.64,6.15 7.80,6.15 7.96,6.15 8.12,5.05 8.29,5.05 8.45,5.05 8.61,5.05 8.77,5.05 8.93,5.05 9.10,5.05 9.26,5.18 9.42,5.18 9.58,5.18 9.74,5.18 9.90,5.18 10.07,5.18 10.23,5.18 10.39,2.72 10.55,2.72 10.71,2.72 10.88,2.72 11.04,2.72 11.20,2.72 11.36,2.72 11.52,1.54 11.68,1.54 11.85,1.54 12.01,1.54 12.17,1.54 12.33,1.54 12.49,1.54 12.66,2.29 12.82,2.29 12.98,2.29 13.14,2.29 13.30,2.29 13.46,2.29 13.63,2.29 13.79,2.14 13.95,2.14 14.11,2.14 14.27,2.14 14.44,2.14 14.60,2.14 14.76,2.14 14.92,3.10 15.08,3.10 15.25,3.10 15.41,3.10 15.57,3.10 15.73,3.10 15.89,3.10 16.05,3.04 16.22,3.04 16.38,3.04 16.54,3.04 16.70,3.04 16.86,3.04 17.03,3.04 17.19,5.25 17.35,5.25 17.51,5.25 17.67,5.25 17.83,5.25 18.00,5.25 18.16,5.25 18.32,5.17 18.48,5.17 18.64,5.17 18.81,5.17 18.97,5.17 19.13,5.17 19.29,5.17 19.45,3.90 19.61,3.90 19.78,3.90 19.94,3.90 20.10,3.90 20.26,3.90 20.42,3.90 20.59,3.47 20.75,3.47 20.91,3.47 21.07,3.47 21.23,3.47 21.40,3.47 21.56,3.47 21.72,4.13 21.88,4.13 22.04,4.13 22.20,4.13 22.37,4.13 22.53,4.13 22.69,4.13 22.85,4.75 23.01,4.75 23.18,4.75 23.34,4.75 23.50,4.75 23.66,4.75 23.82,4.75 23.98,5.55 24.15,5.55 24.31,5.55 24.47,5.55 24.63,5.55 24.79,5.55 24.96,5.55 25.12,6.48 25.28,6.48 25.44,6.48 25.60,6.48 25.76,6.48 25.93,6.48 26.09,6.48 26.25,7.49 26.41,7.49 26.57,7.49 26.74,7.49 26.90,7.49 27.06,7.49 27.22,7.49 27.38,7.80 27.54,7.80 27.71,7.80 27.87,7.80 28.03,7.80 28.19,7.80 28.35,7.80 28.52,7.49 28.68,7.49 28.84,7.49 29.00,7.49 29.16,7.49 29.33,7.49 29.49,7.49 29.65,8.23 29.81,8.23 29.97,8.23 30.13,8.23 30.30,8.23 30.46,8.23 30.62,8.23 30.78,8.27 30.94,8.27 31.11,8.27 31.27,8.27 31.43,8.27 31.59,8.27 31.75,8.27 31.91,8.51 32.08,8.51 32.24,8.51 32.40,8.51 32.56,8.51 32.72,8.51 32.89,8.51 33.05,8.42 33.21,8.42 33.37,8.42 33.53,8.42 33.69,8.42 33.86,8.42 34.02,8.42 34.18,8.55 34.34,8.55 34.50,8.55 34.67,8.55 34.83,8.55 34.99,8.55 35.15,8.55 35.31,7.87 35.47,7.87 35.64,7.87 35.80,7.87 35.96,7.87 36.12,7.87 36.28,7.87 36.45,7.72 36.61,7.72 36.77,7.72 36.93,7.72 37.09,7.72 37.26,7.72 37.42,7.72 37.58,7.28 37.74,7.28 37.90,7.28 38.06,7.28 38.23,7.28 38.39,7.28 38.55,7.28 38.71,7.62 38.87,7.62 39.04,7.62 39.20,7.62 39.36,7.62 39.52,7.62 39.68,7.62 39.84,7.41 40.01,7.41 40.17,7.41 40.33,7.41 40.49,7.41 40.65,7.41 40.82,7.41 40.98,7.35 41.14,7.35 41.30,7.35 41.46,7.35 41.62,7.35 41.79,7.35 41.95,7.35 42.11,7.56 42.27,7.56 42.43,7.56 42.60,7.56 42.76,7.56 42.92,7.56 43.08,7.56 43.24,7.96 43.40,7.96 43.57,7.96 43.73,7.96 43.89,7.96 44.05,7.96 44.21,7.96 44.38,8.28 44.54,8.28 44.70,8.28 44.86,8.28 45.02,8.28 45.19,8.28 45.35,8.28 45.51,8.82 45.67,8.82 45.83,8.82 45.99,8.82 46.16,8.82 46.32,8.82 46.48,8.82 46.64,8.71 46.80,8.71 46.97,8.71 47.13,8.71 47.29,8.71 47.45,8.71 47.61,8.71 47.77,9.15 47.94,9.15 48.10,9.15 48.26,9.15 48.42,9.15 48.58,9.15 48.75,9.15 48.91,9.26 49.07,9.26 49.23,9.26 49.39,9.26 49.55,9.26 49.72,9.26 49.88,9.26 50.04,8.82 50.20,8.82 50.36,8.82 50.53,8.82 50.69,8.82 50.85,8.82 51.01,8.82 51.17,8.81 51.34,8.81 51.50,8.81 51.66,8.81 51.82,8.81 51.98,8.81 52.14,8.81 52.31,7.73 52.47,7.73 52.63,7.73 52.79,7.73 52.95,7.73 53.12,7.73 53.28,7.73 53.44,6.21 53.60,6.21 53.76,6.21 53.92,6.21 54.09,6.21 54.25,6.21 54.41,6.21 54.57,4.97 54.73,4.97 54.90,4.97 55.06,4.97 55.22,4.97 55.38,4.97 55.54,4.97 55.70,4.33 55.87,4.33 56.03,4.33 56.19,4.33 56.35,4.33 56.51,4.33 56.68,4.33 56.84,4.12 57.00,4.12 57.16,4.12 57.32,4.12 57.48,4.12 57.65,4.12 57.81,4.12 57.97,3.97 58.13,3.97 58.29,3.97 58.46,3.97 58.62,3.97 58.78,3.97 58.94,3.97 59.10,3.99 59.27,3.99 59.43,3.99 59.59,3.99 59.75,3.99 59.91,3.99 60.07,3.99 60.24,4.21 60.40,4.21 60.56,4.21 60.72,4.21 60.88,4.21 61.05,4.21 61.21,4.21 61.37,7.93 61.53,7.93 61.69,7.93 61.85,7.93 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='48.91' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='49.07' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='49.23' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='49.39' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='49.55' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='49.72' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='49.88' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='11.52' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /><circle cx='11.68' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /><circle cx='11.85' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /><circle cx='12.01' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /><circle cx='12.17' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /><circle cx='12.33' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /><circle cx='12.49' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_left">Deaths</td>
<td class="gt_row gt_right">16</td>
<td class="gt_row gt_right">16</td>
<td class="gt_row gt_right">0&percnt;</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,9.26 3.11,9.26 3.27,9.26 3.43,9.26 3.59,9.26 3.75,9.26 3.92,9.26 4.08,9.26 4.24,9.26 4.40,9.06 4.56,8.87 4.73,8.68 4.89,8.68 5.05,8.68 5.21,8.49 5.37,8.49 5.53,8.29 5.70,7.91 5.86,7.91 6.02,7.91 6.18,7.91 6.34,7.91 6.51,7.91 6.67,7.91 6.83,7.71 6.99,7.71 7.15,7.71 7.32,7.71 7.48,7.71 7.64,7.71 7.80,7.71 7.96,7.71 8.12,7.71 8.29,7.52 8.45,7.52 8.61,7.52 8.77,7.52 8.93,7.71 9.10,7.71 9.26,7.71 9.42,7.91 9.58,8.10 9.74,8.10 9.90,8.10 10.07,8.10 10.23,8.29 10.39,8.10 10.55,8.10 10.71,8.10 10.88,8.10 11.04,7.33 11.20,7.33 11.36,7.33 11.52,6.94 11.68,6.75 11.85,6.94 12.01,6.94 12.17,6.94 12.33,6.94 12.49,6.56 12.66,6.36 12.82,5.98 12.98,5.59 13.14,5.40 13.30,4.82 13.46,4.44 13.63,3.86 13.79,3.86 13.95,3.66 14.11,3.47 14.27,3.47 14.44,3.09 14.60,3.09 14.76,3.28 14.92,2.70 15.08,1.74 15.25,1.54 15.41,1.54 15.57,1.74 15.73,1.93 15.89,1.74 16.05,2.31 16.22,2.12 16.38,2.12 16.54,2.51 16.70,2.51 16.86,2.51 17.03,2.31 17.19,2.31 17.35,2.12 17.51,2.51 17.67,2.51 17.83,2.70 18.00,2.70 18.16,2.89 18.32,3.47 18.48,3.66 18.64,4.24 18.81,4.24 18.97,4.24 19.13,4.44 19.29,4.24 19.45,4.63 19.61,4.63 19.78,4.63 19.94,5.01 20.10,5.98 20.26,5.98 20.42,6.17 20.59,6.17 20.75,6.36 20.91,6.56 21.07,6.75 21.23,6.56 21.40,6.56 21.56,6.94 21.72,6.75 21.88,6.56 22.04,6.75 22.20,6.17 22.37,5.79 22.53,5.40 22.69,5.59 22.85,5.79 23.01,5.79 23.18,5.79 23.34,5.98 23.50,5.98 23.66,5.98 23.82,5.98 23.98,5.79 24.15,5.59 24.31,5.79 24.47,5.79 24.63,5.40 24.79,5.01 24.96,5.21 25.12,5.21 25.28,5.01 25.44,4.82 25.60,4.82 25.76,4.82 25.93,4.63 26.09,4.63 26.25,5.01 26.41,4.05 26.57,3.47 26.74,3.28 26.90,3.47 27.06,3.47 27.22,3.86 27.38,4.05 27.54,4.24 27.71,4.24 27.87,4.24 28.03,4.63 28.19,4.63 28.35,4.63 28.52,4.63 28.68,4.44 28.84,4.24 29.00,4.44 29.16,4.63 29.33,4.63 29.49,4.44 29.65,4.82 29.81,5.01 29.97,5.01 30.13,5.01 30.30,4.82 30.46,5.01 30.62,5.01 30.78,5.01 30.94,5.01 31.11,5.01 31.27,5.01 31.43,5.98 31.59,6.17 31.75,6.56 31.91,6.56 32.08,6.56 32.24,6.75 32.40,7.14 32.56,7.14 32.72,6.94 32.89,6.94 33.05,6.94 33.21,6.94 33.37,6.94 33.53,7.14 33.69,7.14 33.86,7.33 34.02,7.33 34.18,7.33 34.34,7.33 34.50,7.52 34.67,7.52 34.83,7.71 34.99,7.71 35.15,7.71 35.31,8.29 35.47,8.29 35.64,8.29 35.80,8.29 35.96,8.49 36.12,8.49 36.28,8.29 36.45,8.29 36.61,8.29 36.77,8.49 36.93,8.49 37.09,8.29 37.26,8.10 37.42,8.10 37.58,8.10 37.74,8.29 37.90,8.10 38.06,8.10 38.23,7.71 38.39,7.71 38.55,7.71 38.71,7.91 38.87,7.71 39.04,7.71 39.20,7.71 39.36,7.71 39.52,7.71 39.68,7.71 39.84,7.71 40.01,7.52 40.17,7.52 40.33,7.52 40.49,7.52 40.65,7.52 40.82,7.52 40.98,7.52 41.14,7.52 41.30,7.71 41.46,7.71 41.62,7.71 41.79,7.71 41.95,7.52 42.11,7.71 42.27,7.52 42.43,7.52 42.60,7.71 42.76,7.71 42.92,7.91 43.08,7.91 43.24,8.29 43.40,8.29 43.57,8.29 43.73,8.29 43.89,8.49 44.05,8.49 44.21,8.49 44.38,8.29 44.54,8.29 44.70,7.91 44.86,7.52 45.02,7.91 45.19,7.71 45.35,7.71 45.51,7.71 45.67,7.71 45.83,7.71 45.99,7.71 46.16,7.52 46.32,7.52 46.48,7.52 46.64,7.52 46.80,7.52 46.97,7.52 47.13,7.52 47.29,7.91 47.45,7.91 47.61,7.71 47.77,7.71 47.94,7.71 48.10,7.71 48.26,7.71 48.42,7.71 48.58,7.71 48.75,7.71 48.91,7.71 49.07,7.71 49.23,7.71 49.39,7.91 49.55,7.91 49.72,8.10 49.88,8.49 50.04,8.29 50.20,8.49 50.36,8.49 50.53,8.49 50.69,8.49 50.85,8.49 51.01,8.49 51.17,8.68 51.34,8.68 51.50,8.49 51.66,8.49 51.82,8.49 51.98,8.68 52.14,8.68 52.31,8.68 52.47,8.68 52.63,8.87 52.79,8.87 52.95,8.87 53.12,8.87 53.28,8.68 53.44,8.68 53.60,8.68 53.76,8.68 53.92,8.68 54.09,8.68 54.25,8.68 54.41,8.68 54.57,8.68 54.73,8.49 54.90,8.49 55.06,8.49 55.22,8.49 55.38,8.49 55.54,8.10 55.70,8.10 55.87,8.10 56.03,8.10 56.19,8.10 56.35,7.91 56.51,8.10 56.68,8.10 56.84,7.71 57.00,7.52 57.16,7.52 57.32,7.52 57.48,7.52 57.65,7.14 57.81,6.56 57.97,6.56 58.13,6.56 58.29,6.75 58.46,6.75 58.62,6.75 58.78,6.75 58.94,6.36 59.10,6.36 59.27,6.36 59.43,6.17 59.59,6.17 59.75,6.56 59.91,6.56 60.07,6.36 60.24,5.98 60.40,5.98 60.56,6.17 60.72,6.17 60.88,5.98 61.05,5.59 61.21,5.59 61.37,5.79 61.53,5.79 61.69,5.79 61.85,6.17 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='2.95' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='3.11' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='3.27' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='3.43' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='3.59' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='3.75' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='3.92' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='4.08' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='4.24' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='15.25' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /><circle cx='15.41' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
  </tbody>
  
  
</table>
</div>

As of Monday in Champaign County (vs. two weeks ago):
  
- Average new cases: 60 (vs. 108) -45%↓
- Average hospitalized: 24 (vs. 69) 
- Deaths in the past month: 16 (vs. 16)
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
<td class="gt_row gt_right">4,245</td>
<td class="gt_row gt_right">3,603</td>
<td class="gt_row gt_right">&minus;15&percnt;</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,8.22 3.11,8.21 3.27,8.22 3.43,8.21 3.59,8.17 3.75,8.18 3.92,8.16 4.08,8.14 4.24,8.15 4.40,8.11 4.56,8.12 4.73,8.15 4.89,8.15 5.05,8.16 5.21,8.15 5.37,8.13 5.53,8.10 5.70,8.02 5.86,7.96 6.02,7.92 6.18,7.80 6.34,7.72 6.51,7.61 6.67,7.59 6.83,7.50 6.99,7.35 7.15,7.28 7.32,7.14 7.48,7.11 7.64,7.03 7.80,6.90 7.96,6.81 8.12,6.87 8.29,6.64 8.45,6.66 8.61,6.51 8.77,6.49 8.93,6.33 9.10,6.20 9.26,5.92 9.42,5.76 9.58,5.50 9.74,5.36 9.90,5.14 10.07,5.01 10.23,3.99 10.39,3.68 10.55,3.27 10.71,2.99 10.88,2.60 11.04,2.04 11.20,1.58 11.36,2.02 11.52,1.57 11.68,1.70 11.85,1.64 12.01,1.54 12.17,1.54 12.33,1.88 12.49,1.71 12.66,1.93 12.82,1.85 12.98,1.91 13.14,2.21 13.30,2.49 13.46,2.27 13.63,2.50 13.79,2.99 13.95,3.36 14.11,3.62 14.27,3.81 14.44,3.53 14.60,3.68 14.76,3.77 14.92,3.51 15.08,3.32 15.25,3.29 15.41,3.06 15.57,3.48 15.73,3.61 15.89,3.60 16.05,3.70 16.22,3.81 16.38,3.84 16.54,3.97 16.70,4.02 16.86,4.13 17.03,4.33 17.19,4.52 17.35,4.62 17.51,4.73 17.67,4.96 17.83,5.06 18.00,5.10 18.16,5.26 18.32,5.41 18.48,5.79 18.64,6.00 18.81,6.02 18.97,6.07 19.13,6.02 19.29,5.93 19.45,5.80 19.61,5.66 19.78,5.60 19.94,5.55 20.10,5.44 20.26,5.42 20.42,5.35 20.59,5.16 20.75,4.99 20.91,4.96 21.07,4.99 21.23,5.01 21.40,5.16 21.56,5.35 21.72,5.59 21.88,5.72 22.04,5.77 22.20,5.89 22.37,6.10 22.53,6.20 22.69,6.35 22.85,6.31 23.01,6.33 23.18,6.41 23.34,6.45 23.50,6.51 23.66,6.60 23.82,6.68 23.98,6.94 24.15,7.10 24.31,7.18 24.47,7.24 24.63,7.36 24.79,7.40 24.96,7.48 25.12,7.52 25.28,7.55 25.44,7.58 25.60,7.63 25.76,7.65 25.93,7.70 26.09,7.74 26.25,7.84 26.41,7.93 26.57,7.97 26.74,7.99 26.90,8.06 27.06,8.15 27.22,8.23 27.38,8.27 27.54,8.28 27.71,8.29 27.87,8.30 28.03,8.27 28.19,8.25 28.35,8.26 28.52,8.24 28.68,8.25 28.84,8.28 29.00,8.29 29.16,8.30 29.33,8.29 29.49,8.31 29.65,8.40 29.81,8.33 29.97,8.34 30.13,8.34 30.30,8.35 30.46,8.38 30.62,8.39 30.78,8.36 30.94,8.44 31.11,8.40 31.27,8.44 31.43,8.39 31.59,8.40 31.75,8.34 31.91,8.28 32.08,8.26 32.24,8.26 32.40,8.22 32.56,8.24 32.72,8.13 32.89,8.15 33.05,8.09 33.21,8.03 33.37,7.95 33.53,7.90 33.69,7.85 33.86,7.87 34.02,7.75 34.18,7.73 34.34,7.71 34.50,7.69 34.67,7.66 34.83,7.62 34.99,7.51 35.15,7.49 35.31,7.42 35.47,7.35 35.64,7.30 35.80,7.27 35.96,7.25 36.12,7.27 36.28,7.28 36.45,7.30 36.61,7.34 36.77,7.36 36.93,7.40 37.09,7.46 37.26,7.53 37.42,7.57 37.58,7.61 37.74,7.64 37.90,7.70 38.06,7.68 38.23,7.68 38.39,7.69 38.55,7.66 38.71,7.68 38.87,7.69 39.04,7.70 39.20,7.71 39.36,7.74 39.52,7.77 39.68,7.92 39.84,7.91 40.01,8.01 40.17,8.02 40.33,8.07 40.49,8.13 40.65,8.19 40.82,8.18 40.98,8.31 41.14,8.33 41.30,8.37 41.46,8.42 41.62,8.42 41.79,8.44 41.95,8.47 42.11,8.50 42.27,8.53 42.43,8.56 42.60,8.56 42.76,8.62 42.92,8.67 43.08,8.73 43.24,8.78 43.40,8.81 43.57,8.84 43.73,8.88 43.89,8.91 44.05,8.97 44.21,8.99 44.38,9.03 44.54,9.05 44.70,9.07 44.86,9.10 45.02,9.10 45.19,9.11 45.35,9.14 45.51,9.16 45.67,9.18 45.83,9.19 45.99,9.19 46.16,9.20 46.32,9.21 46.48,9.22 46.64,9.25 46.80,9.24 46.97,9.25 47.13,9.25 47.29,9.25 47.45,9.26 47.61,9.26 47.77,9.24 47.94,9.25 48.10,9.25 48.26,9.24 48.42,9.23 48.58,9.23 48.75,9.21 48.91,9.21 49.07,9.19 49.23,9.20 49.39,9.22 49.55,9.19 49.72,9.17 49.88,9.16 50.04,9.13 50.20,9.11 50.36,9.07 50.53,9.04 50.69,9.05 50.85,9.02 51.01,9.00 51.17,8.99 51.34,8.96 51.50,8.90 51.66,8.88 51.82,8.87 51.98,8.85 52.14,8.75 52.31,8.67 52.47,8.64 52.63,8.62 52.79,8.58 52.95,8.49 53.12,8.39 53.28,8.42 53.44,8.34 53.60,8.27 53.76,8.24 53.92,8.18 54.09,8.09 54.25,8.07 54.41,7.94 54.57,7.88 54.73,7.80 54.90,7.76 55.06,7.68 55.22,7.65 55.38,7.51 55.54,7.50 55.70,7.46 55.87,7.37 56.03,7.34 56.19,7.35 56.35,7.29 56.51,7.30 56.68,7.29 56.84,7.16 57.00,7.15 57.16,7.20 57.32,7.15 57.48,7.21 57.65,7.16 57.81,7.08 57.97,7.07 58.13,7.15 58.29,6.94 58.46,7.00 58.62,6.83 58.78,6.76 58.94,6.74 59.10,6.65 59.27,6.58 59.43,6.71 59.59,6.71 59.75,6.91 59.91,7.02 60.07,6.98 60.24,7.04 60.40,6.99 60.56,7.00 60.72,7.06 60.88,6.88 61.05,6.86 61.21,6.89 61.37,7.05 61.53,7.14 61.69,7.16 61.85,7.11 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='47.45' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='47.61' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='12.01' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_left gt_striped">Hospitalized</td>
<td class="gt_row gt_right gt_striped">2,333</td>
<td class="gt_row gt_right gt_striped">1,905</td>
<td class="gt_row gt_right gt_striped">&minus;18&percnt;</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,7.83 3.11,7.68 3.27,7.48 3.43,7.58 3.59,7.64 3.75,7.78 3.92,7.78 4.08,7.72 4.24,7.59 4.40,7.59 4.56,7.53 4.73,7.72 4.89,7.74 5.05,7.59 5.21,7.54 5.37,7.53 5.53,7.43 5.70,7.35 5.86,7.36 6.02,7.40 6.18,7.41 6.34,7.30 6.51,7.14 6.67,7.19 6.83,7.08 6.99,7.00 7.15,7.08 7.32,6.97 7.48,6.75 7.64,6.65 7.80,6.48 7.96,6.44 8.12,6.28 8.29,6.30 8.45,6.25 8.61,6.09 8.77,5.95 8.93,5.73 9.10,5.65 9.26,5.47 9.42,5.38 9.58,5.28 9.74,4.98 9.90,4.76 10.07,4.58 10.23,4.32 10.39,4.11 10.55,4.03 10.71,3.89 10.88,3.45 11.04,3.05 11.20,2.76 11.36,2.63 11.52,2.55 11.68,2.48 11.85,2.33 12.01,1.93 12.17,1.84 12.33,1.73 12.49,1.63 12.66,1.54 12.82,1.68 12.98,1.55 13.14,1.60 13.30,1.60 13.46,1.73 13.63,2.00 13.79,2.08 13.95,1.96 14.11,1.98 14.27,2.00 14.44,2.09 14.60,2.24 14.76,2.50 14.92,2.67 15.08,2.89 15.25,2.85 15.41,2.84 15.57,2.73 15.73,2.92 15.89,2.92 16.05,3.04 16.22,3.01 16.38,3.17 16.54,3.15 16.70,3.38 16.86,3.37 17.03,3.52 17.19,3.61 17.35,3.92 17.51,3.83 17.67,3.68 17.83,3.65 18.00,3.79 18.16,3.97 18.32,4.41 18.48,4.33 18.64,4.11 18.81,4.02 18.97,4.11 19.13,4.31 19.29,4.45 19.45,4.71 19.61,4.68 19.78,4.51 19.94,4.56 20.10,4.53 20.26,4.54 20.42,4.74 20.59,4.99 20.75,5.07 20.91,5.05 21.07,5.03 21.23,4.91 21.40,5.09 21.56,5.18 21.72,5.23 21.88,5.23 22.04,5.31 22.20,5.32 22.37,5.39 22.53,5.40 22.69,5.53 22.85,5.61 23.01,5.78 23.18,5.82 23.34,5.77 23.50,5.86 23.66,6.03 23.82,6.12 23.98,6.30 24.15,6.48 24.31,6.59 24.47,6.51 24.63,6.48 24.79,6.65 24.96,6.68 25.12,6.74 25.28,6.85 25.44,6.89 25.60,6.94 25.76,6.99 25.93,7.16 26.09,7.22 26.25,7.24 26.41,7.40 26.57,7.38 26.74,7.47 26.90,7.47 27.06,7.56 27.22,7.64 27.38,7.70 27.54,7.81 27.71,7.76 27.87,7.78 28.03,7.75 28.19,7.82 28.35,7.91 28.52,7.96 28.68,8.08 28.84,8.05 29.00,8.12 29.16,8.09 29.33,8.17 29.49,8.21 29.65,8.15 29.81,8.24 29.97,8.19 30.13,8.20 30.30,8.22 30.46,8.27 30.62,8.26 30.78,8.32 30.94,8.24 31.11,8.28 31.27,8.23 31.43,8.24 31.59,8.27 31.75,8.26 31.91,8.19 32.08,8.26 32.24,8.19 32.40,8.07 32.56,8.08 32.72,8.10 32.89,8.03 33.05,7.99 33.21,7.98 33.37,7.96 33.53,7.90 33.69,7.88 33.86,7.88 34.02,7.84 34.18,7.86 34.34,7.78 34.50,7.66 34.67,7.57 34.83,7.49 34.99,7.37 35.15,7.36 35.31,7.33 35.47,7.32 35.64,7.10 35.80,7.06 35.96,7.00 36.12,7.04 36.28,7.02 36.45,6.89 36.61,6.93 36.77,6.81 36.93,6.72 37.09,6.85 37.26,6.90 37.42,6.95 37.58,7.04 37.74,7.06 37.90,6.99 38.06,6.86 38.23,6.90 38.39,6.95 38.55,7.07 38.71,7.10 38.87,7.21 39.04,7.15 39.20,7.00 39.36,7.02 39.52,7.03 39.68,7.13 39.84,7.17 40.01,7.27 40.17,7.23 40.33,7.19 40.49,7.24 40.65,7.41 40.82,7.49 40.98,7.66 41.14,7.66 41.30,7.75 41.46,7.76 41.62,7.74 41.79,7.78 41.95,7.86 42.11,7.90 42.27,7.88 42.43,7.91 42.60,7.87 42.76,7.91 42.92,8.01 43.08,8.14 43.24,8.21 43.40,8.33 43.57,8.31 43.73,8.39 43.89,8.41 44.05,8.44 44.21,8.56 44.38,8.59 44.54,8.71 44.70,8.71 44.86,8.71 45.02,8.70 45.19,8.75 45.35,8.82 45.51,8.85 45.67,8.93 45.83,8.93 45.99,8.91 46.16,8.97 46.32,9.07 46.48,9.11 46.64,9.10 46.80,9.19 46.97,9.16 47.13,9.15 47.29,9.11 47.45,9.17 47.61,9.18 47.77,9.18 47.94,9.21 48.10,9.19 48.26,9.17 48.42,9.18 48.58,9.22 48.75,9.20 48.91,9.23 49.07,9.26 49.23,9.26 49.39,9.20 49.55,9.12 49.72,9.20 49.88,9.19 50.04,9.20 50.20,9.19 50.36,9.18 50.53,9.10 50.69,9.12 50.85,9.09 51.01,9.13 51.17,9.12 51.34,9.08 51.50,9.05 51.66,8.96 51.82,9.00 51.98,8.93 52.14,8.87 52.31,8.85 52.47,8.80 52.63,8.80 52.79,8.70 52.95,8.62 53.12,8.59 53.28,8.56 53.44,8.56 53.60,8.51 53.76,8.46 53.92,8.29 54.09,8.21 54.25,8.16 54.41,8.17 54.57,8.02 54.73,8.04 54.90,7.92 55.06,7.78 55.22,7.69 55.38,7.62 55.54,7.56 55.70,7.51 55.87,7.41 56.03,7.28 56.19,7.16 56.35,7.13 56.51,7.11 56.68,7.10 56.84,7.14 57.00,7.13 57.16,7.02 57.32,6.89 57.48,6.84 57.65,6.86 57.81,6.78 57.97,6.89 58.13,6.89 58.29,6.83 58.46,6.75 58.62,6.78 58.78,6.76 58.94,6.72 59.10,6.69 59.27,6.84 59.43,6.72 59.59,6.66 59.75,6.67 59.91,6.65 60.07,6.64 60.24,6.78 60.40,6.77 60.56,6.77 60.72,6.75 60.88,6.80 61.05,6.88 61.21,6.99 61.37,7.15 61.53,7.32 61.69,7.23 61.85,7.23 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='49.23' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='12.66' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_left">Deaths</td>
<td class="gt_row gt_right">28</td>
<td class="gt_row gt_right">39</td>
<td class="gt_row gt_right">+38&percnt;</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><polyline points='2.95,8.43 3.11,8.34 3.27,8.43 3.43,8.39 3.59,8.35 3.75,8.36 3.92,8.36 4.08,8.31 4.24,8.36 4.40,8.27 4.56,8.31 4.73,8.15 4.89,8.10 5.05,8.08 5.21,8.07 5.37,8.01 5.53,7.95 5.70,7.90 5.86,7.99 6.02,8.00 6.18,8.05 6.34,8.06 6.51,8.08 6.67,8.03 6.83,7.88 6.99,7.86 7.15,7.88 7.32,7.78 7.48,7.72 7.64,7.63 7.80,7.50 7.96,7.57 8.12,7.62 8.29,7.35 8.45,7.34 8.61,7.38 8.77,7.33 8.93,7.45 9.10,7.36 9.26,7.32 9.42,7.45 9.58,7.38 9.74,7.36 9.90,7.20 10.07,7.17 10.23,6.87 10.39,6.79 10.55,6.57 10.71,6.50 10.88,6.54 11.04,6.46 11.20,5.81 11.36,6.20 11.52,6.36 11.68,5.70 11.85,5.48 12.01,5.32 12.17,5.20 12.33,5.26 12.49,4.35 12.66,3.64 12.82,3.92 12.98,3.90 13.14,3.82 13.30,3.61 13.46,3.47 13.63,3.74 13.79,4.17 13.95,4.31 14.11,4.44 14.27,4.17 14.44,4.18 14.60,3.58 14.76,3.17 14.92,2.59 15.08,1.86 15.25,1.73 15.41,1.70 15.57,1.54 15.73,1.98 15.89,1.92 16.05,1.60 16.22,2.19 16.38,1.89 16.54,1.81 16.70,2.01 16.86,2.25 17.03,2.36 17.19,2.42 17.35,2.56 17.51,2.83 17.67,2.86 17.83,2.88 18.00,2.95 18.16,3.56 18.32,3.74 18.48,4.05 18.64,3.86 18.81,3.81 18.97,3.87 19.13,3.56 19.29,3.29 19.45,3.29 19.61,3.56 19.78,3.73 19.94,3.92 20.10,3.79 20.26,4.08 20.42,3.78 20.59,4.01 20.75,3.49 20.91,3.49 21.07,3.68 21.23,3.73 21.40,4.03 21.56,4.67 21.72,4.68 21.88,4.46 22.04,4.84 22.20,4.85 22.37,5.47 22.53,5.40 22.69,5.13 22.85,5.34 23.01,5.59 23.18,5.52 23.34,5.54 23.50,5.14 23.66,5.33 23.82,5.47 23.98,5.64 24.15,5.87 24.31,5.86 24.47,6.09 24.63,6.38 24.79,6.46 24.96,6.72 25.12,6.64 25.28,6.68 25.44,6.62 25.60,6.49 25.76,6.69 25.93,6.81 26.09,6.56 26.25,6.92 26.41,6.97 26.57,7.07 26.74,7.01 26.90,6.93 27.06,7.14 27.22,7.36 27.38,7.14 27.54,7.22 27.71,7.22 27.87,7.27 28.03,7.30 28.19,7.15 28.35,7.45 28.52,7.51 28.68,7.57 28.84,7.66 29.00,7.76 29.16,7.62 29.33,7.62 29.49,7.55 29.65,7.71 29.81,7.60 29.97,7.67 30.13,7.79 30.30,8.02 30.46,8.13 30.62,8.04 30.78,8.00 30.94,8.19 31.11,8.14 31.27,8.08 31.43,8.07 31.59,8.15 31.75,8.29 31.91,8.49 32.08,8.48 32.24,8.46 32.40,8.37 32.56,8.40 32.72,8.38 32.89,8.38 33.05,8.23 33.21,8.23 33.37,8.22 33.53,8.35 33.69,8.32 33.86,8.26 34.02,8.33 34.18,8.40 34.34,8.51 34.50,8.57 34.67,8.54 34.83,8.57 34.99,8.57 35.15,8.51 35.31,8.53 35.47,8.51 35.64,8.50 35.80,8.43 35.96,8.41 36.12,8.40 36.28,8.34 36.45,8.34 36.61,8.27 36.77,8.31 36.93,8.28 37.09,8.33 37.26,8.35 37.42,8.40 37.58,8.39 37.74,8.37 37.90,8.27 38.06,8.37 38.23,8.27 38.39,8.24 38.55,8.21 38.71,8.13 38.87,8.08 39.04,8.05 39.20,7.92 39.36,7.94 39.52,7.95 39.68,7.94 39.84,7.92 40.01,8.00 40.17,7.97 40.33,8.09 40.49,8.05 40.65,8.08 40.82,8.11 40.98,8.02 41.14,7.84 41.30,7.89 41.46,7.93 41.62,7.95 41.79,7.94 41.95,7.89 42.11,8.09 42.27,8.12 42.43,8.12 42.60,8.09 42.76,8.13 42.92,8.13 43.08,8.13 43.24,8.13 43.40,8.17 43.57,8.21 43.73,8.05 43.89,8.12 44.05,8.26 44.21,8.39 44.38,8.43 44.54,8.47 44.70,8.33 44.86,8.47 45.02,8.43 45.19,8.33 45.35,8.38 45.51,8.33 45.67,8.46 45.83,8.64 45.99,8.70 46.16,8.67 46.32,8.67 46.48,8.68 46.64,8.75 46.80,8.78 46.97,8.78 47.13,8.80 47.29,8.86 47.45,8.96 47.61,8.94 47.77,8.98 47.94,8.99 48.10,9.03 48.26,9.04 48.42,9.05 48.58,9.08 48.75,9.14 48.91,9.13 49.07,9.13 49.23,9.16 49.39,9.18 49.55,9.09 49.72,9.07 49.88,9.07 50.04,9.08 50.20,9.05 50.36,8.99 50.53,8.97 50.69,8.99 50.85,8.99 51.01,9.02 51.17,9.02 51.34,9.02 51.50,9.08 51.66,9.07 51.82,9.13 51.98,9.10 52.14,9.11 52.31,9.14 52.47,9.21 52.63,9.23 52.79,9.23 52.95,9.23 53.12,9.26 53.28,9.21 53.44,9.18 53.60,9.15 53.76,9.15 53.92,9.16 54.09,9.14 54.25,9.05 54.41,9.04 54.57,9.00 54.73,8.96 54.90,8.89 55.06,8.86 55.22,8.85 55.38,8.91 55.54,8.85 55.70,8.80 55.87,8.77 56.03,8.78 56.19,8.80 56.35,8.75 56.51,8.48 56.68,8.55 56.84,8.56 57.00,8.57 57.16,8.49 57.32,8.46 57.48,8.46 57.65,8.51 57.81,8.18 57.97,8.21 58.13,8.16 58.29,8.22 58.46,8.25 58.62,8.17 58.78,8.27 58.94,8.33 59.10,8.16 59.27,8.15 59.43,8.09 59.59,8.02 59.75,8.16 59.91,7.90 60.07,8.12 60.24,8.05 60.40,7.70 60.56,7.62 60.72,7.69 60.88,7.46 61.05,7.58 61.21,7.43 61.37,7.38 61.53,7.57 61.69,7.57 61.85,7.48 ' style='stroke-width: 1.07; stroke: #B3B3B3; stroke-linecap: butt;' /><circle cx='53.12' cy='9.26' r='0.89' style='stroke-width: 0.71; stroke: #0000FF; fill: #0000FF;' /><circle cx='15.57' cy='1.54' r='0.89' style='stroke-width: 0.71; stroke: #FF0000; fill: #FF0000;' /></g></svg></td></tr>
  </tbody>
  
  
</table>
</div>

As of Monday in Illinois (vs. two weeks ago):
  
- Average new cases: 3,600 (vs. 4,250) -15%↓
- Hospitalized: 1,900 (vs. 2,330) -17%↓
- Average new deaths: 39 (vs. 28) +38%↑
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
  
- -45% in Champaign County
- -15% in Illinois
- 1% in the United States
- -9% worldwide

![Case Acceleration](https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/new_cases_change_facet.png)

This chart measures how quickly the average number of new cases is changing, or roughly, the slope of the new-cases charts above. If the case acceleration is positive, then the average number of new cases is increasing. If it is negative, then the average number of new cases is decreasing.

## Death Acceleration

As of Monday, the 14-day percent change in average new deaths was:
  
- 38% in Illinois
- 40% in the United States
- -8% worldwide

![Death Acceleration](https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/new_deaths_change_facet.png)

This chart measures how quickly the average number of new deaths is changing, or roughly, the slope of the new-deaths charts above. If the death acceleration is positive, then the average number of new deaths is increasing. If it is negative, then the average number of new deaths is decreasing.


