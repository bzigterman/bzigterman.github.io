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
<td class="gt_row gt_right">68</td>
<td class="gt_row gt_right">&minus;38&percnt;</td>
<td class="gt_row gt_right"><?xml version="1.0" encoding="UTF-8"?>
<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" class="svglite" width="48.00pt" height="10.80pt" viewBox="0 0 48.00 10.80">
  <defs>
    <style type="text/css"><![CDATA[
    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {
      fill: none;
      stroke: #000000;
      stroke-linecap: round;
      stroke-linejoin: round;
      stroke-miterlimit: 10.00;
    }
  ]]></style>
  </defs>
  <rect width="100%" height="100%" style="stroke: none; fill: none;"/>
  <defs>
    <clipPath id="cpMC4wMHw0OC4wMHwwLjAwfDEwLjgw">
      <rect x="0.00" y="0.00" width="48.00" height="10.80"/>
    </clipPath>
  </defs>
  <g clip-path="url(#cpMC4wMHw0OC4wMHwwLjAwfDEwLjgw)">
    <polyline points="3.42,7.25 3.54,7.20 3.65,7.83 3.76,8.07 3.88,7.89 3.99,8.19 4.10,7.97 4.22,7.89 4.33,8.08 4.44,7.85 4.55,7.50 4.67,7.64 4.78,7.46 4.89,7.70 5.01,7.73 5.12,7.48 5.23,7.55 5.35,7.75 5.46,7.86 5.57,7.98 5.68,7.56 5.80,7.68 5.91,7.95 6.02,8.21 6.14,7.95 6.25,7.80 6.36,7.75 6.48,7.73 6.59,7.80 6.70,7.84 6.82,7.68 6.93,7.97 7.04,8.10 7.15,7.98 7.27,8.07 7.38,7.78 7.49,7.67 7.61,7.20 7.72,7.08 7.83,6.64 7.95,6.26 8.06,6.06 8.17,6.08 8.29,5.56 8.40,5.44 8.51,4.88 8.62,4.88 8.74,5.02 8.85,4.95 8.96,3.68 9.08,3.04 9.19,2.66 9.30,2.64 9.42,2.24 9.53,1.63 9.64,0.77 9.75,1.50 9.87,1.81 9.98,2.18 10.09,2.27 10.21,2.11 10.32,2.00 10.43,2.83 10.55,2.28 10.66,2.33 10.77,2.03 10.89,2.15 11.00,2.70 11.11,2.90 11.22,2.94 11.34,3.75 11.45,4.35 11.56,5.04 11.68,4.91 11.79,4.72 11.90,5.02 12.02,4.75 12.13,4.41 12.24,4.27 12.36,3.59 12.47,3.67 12.58,3.80 12.69,3.68 12.81,4.07 12.92,4.29 13.03,4.40 13.15,4.91 13.26,5.20 13.37,5.40 13.49,5.60 13.60,5.81 13.71,6.26 13.82,6.09 13.94,6.18 14.05,6.12 14.16,6.01 14.28,6.29 14.39,6.29 14.50,6.07 14.62,6.24 14.73,6.53 14.84,6.59 14.96,6.63 15.07,6.51 15.18,6.32 15.29,6.08 15.41,5.87 15.52,5.77 15.63,5.87 15.75,5.56 15.86,5.22 15.97,5.04 16.09,5.09 16.20,4.99 16.31,4.71 16.43,4.67 16.54,4.89 16.65,5.30 16.76,5.65 16.88,5.77 16.99,6.04 17.10,6.34 17.22,6.29 17.33,6.60 17.44,6.50 17.56,6.16 17.67,6.44 17.78,6.48 17.89,6.50 18.01,6.45 18.12,6.24 18.23,6.45 18.35,6.63 18.46,6.61 18.57,6.64 18.69,6.60 18.80,6.87 18.91,7.01 19.03,6.96 19.14,6.75 19.25,6.66 19.36,6.69 19.48,6.56 19.59,6.15 19.70,6.00 19.82,6.03 19.93,6.05 20.04,6.01 20.16,6.03 20.27,6.07 20.38,6.33 20.50,6.36 20.61,6.69 20.72,7.38 20.83,7.24 20.95,7.06 21.06,7.09 21.17,7.10 21.29,7.41 21.40,7.32 21.51,7.10 21.63,7.44 21.74,7.91 21.85,8.18 21.96,8.34 22.08,8.46 22.19,8.42 22.30,8.46 22.42,8.74 22.53,8.86 22.64,8.86 22.76,8.92 22.87,8.92 22.98,9.02 23.10,9.13 23.21,9.05 23.32,8.96 23.43,8.98 23.55,8.90 23.66,8.84 23.77,8.87 23.89,8.66 24.00,8.72 24.11,8.67 24.23,8.69 24.34,8.77 24.45,8.75 24.57,8.65 24.68,8.83 24.79,8.64 24.90,8.66 25.02,8.37 25.13,8.34 25.24,8.31 25.36,8.34 25.47,8.22 25.58,8.36 25.70,8.31 25.81,8.52 25.92,8.29 26.04,8.39 26.15,8.39 26.26,8.40 26.37,8.28 26.49,8.18 26.60,8.13 26.71,8.29 26.83,8.10 26.94,8.00 27.05,7.83 27.17,7.97 27.28,7.96 27.39,7.92 27.50,7.97 27.62,8.04 27.73,7.95 27.84,8.05 27.96,8.12 28.07,8.00 28.18,8.06 28.30,8.07 28.41,8.11 28.52,8.24 28.64,8.20 28.75,8.16 28.86,8.18 28.97,8.20 29.09,8.18 29.20,8.17 29.31,8.32 29.43,8.44 29.54,8.53 29.65,8.74 29.77,8.77 29.88,8.78 29.99,8.87 30.11,8.83 30.22,8.95 30.33,8.88 30.44,8.95 30.56,8.96 30.67,8.98 30.78,8.98 30.90,8.84 31.01,8.92 31.12,8.90 31.24,8.92 31.35,9.06 31.46,9.14 31.57,9.14 31.69,9.34 31.80,9.30 31.91,9.29 32.03,9.45 32.14,9.29 32.25,9.32 32.37,9.35 32.48,9.41 32.59,9.51 32.71,9.57 32.82,9.48 32.93,9.65 33.04,9.65 33.16,9.68 33.27,9.66 33.38,9.73 33.50,9.78 33.61,9.87 33.72,9.86 33.84,9.86 33.95,9.86 34.06,9.89 34.18,9.91 34.29,9.96 34.40,9.96 34.51,9.95 34.63,10.00 34.74,10.02 34.85,10.02 34.97,10.02 35.08,10.02 35.19,10.02 35.31,9.99 35.42,10.01 35.53,9.97 35.64,9.98 35.76,9.96 35.87,9.96 35.98,9.95 36.10,9.99 36.21,9.99 36.32,10.02 36.44,10.03 36.55,10.02 36.66,9.95 36.78,9.96 36.89,9.89 37.00,9.84 37.11,9.79 37.23,9.77 37.34,9.70 37.45,9.73 37.57,9.66 37.68,9.69 37.79,9.54 37.91,9.49 38.02,9.29 38.13,9.33 38.25,9.00 38.36,8.95 38.47,8.70 38.58,8.82 38.70,8.84 38.81,8.72 38.92,8.54 39.04,8.45 39.15,8.33 39.26,8.32 39.38,8.10 39.49,7.96 39.60,7.85 39.71,7.72 39.83,7.64 39.94,7.41 40.05,7.13 40.17,7.06 40.28,6.75 40.39,6.63 40.51,6.43 40.62,6.53 40.73,6.36 40.85,6.42 40.96,6.37 41.07,6.47 41.18,6.58 41.30,6.11 41.41,6.26 41.52,6.22 41.64,6.00 41.75,6.00 41.86,5.85 41.98,5.83 42.09,6.08 42.20,5.88 42.32,5.89 42.43,6.00 42.54,5.80 42.65,5.71 42.77,5.39 42.88,4.97 42.99,4.62 43.11,4.14 43.22,4.18 43.33,4.48 43.45,4.73 43.56,5.15 43.67,5.59 43.78,5.59 43.90,5.93 44.01,6.03 44.12,5.91 44.24,6.24 44.35,6.09 44.46,6.40 44.58,6.77 " style="stroke-width: 1.50; stroke: #D3D3D3;"/>
    <rect x="35.72" y="9.31" width="1.44" height="1.44" style="stroke-width: 1.50; stroke: none; fill: #FF0000;"/>
    <rect x="8.92" y="0.050" width="1.44" height="1.44" style="stroke-width: 1.50; stroke: none; fill: #FF0000;"/>
  </g>
</svg>
</td></tr>
    <tr><td class="gt_row gt_left gt_striped">Deaths in Past Month</td>
<td class="gt_row gt_right gt_striped">15</td>
<td class="gt_row gt_right gt_striped">19</td>
<td class="gt_row gt_right gt_striped">+27&percnt;</td>
<td class="gt_row gt_right gt_striped"><?xml version="1.0" encoding="UTF-8"?>
<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" class="svglite" width="48.00pt" height="10.80pt" viewBox="0 0 48.00 10.80">
  <defs>
    <style type="text/css"><![CDATA[
    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {
      fill: none;
      stroke: #000000;
      stroke-linecap: round;
      stroke-linejoin: round;
      stroke-miterlimit: 10.00;
    }
  ]]></style>
  </defs>
  <rect width="100%" height="100%" style="stroke: none; fill: none;"/>
  <defs>
    <clipPath id="cpMC4wMHw0OC4wMHwwLjAwfDEwLjgw">
      <rect x="0.00" y="0.00" width="48.00" height="10.80"/>
    </clipPath>
  </defs>
  <g clip-path="url(#cpMC4wMHw0OC4wMHwwLjAwfDEwLjgw)">
    <polyline points="3.42,9.80 3.54,9.80 3.65,9.80 3.76,10.03 3.88,10.03 3.99,10.03 4.10,10.03 4.22,10.03 4.33,10.03 4.44,10.03 4.55,10.03 4.67,10.03 4.78,10.03 4.89,9.80 5.01,9.57 5.12,9.34 5.23,9.34 5.35,9.34 5.46,9.10 5.57,9.10 5.68,8.87 5.80,8.41 5.91,8.41 6.02,8.41 6.14,8.41 6.25,8.41 6.36,8.41 6.48,8.41 6.59,8.18 6.70,8.18 6.82,8.18 6.93,8.18 7.04,8.18 7.15,8.18 7.27,8.18 7.38,8.18 7.49,8.18 7.61,7.95 7.72,7.95 7.83,7.95 7.95,7.95 8.06,8.18 8.17,8.18 8.29,8.18 8.40,8.41 8.51,8.64 8.62,8.64 8.74,8.64 8.85,8.64 8.96,8.87 9.08,8.64 9.19,8.64 9.30,8.64 9.42,8.64 9.53,7.71 9.64,7.71 9.75,7.71 9.87,7.25 9.98,7.02 10.09,7.25 10.21,7.25 10.32,7.25 10.43,7.25 10.55,6.79 10.66,6.56 10.77,6.09 10.89,5.63 11.00,5.40 11.11,4.71 11.22,4.24 11.34,3.55 11.45,3.55 11.56,3.32 11.68,3.09 11.79,3.09 11.90,2.62 12.02,2.62 12.13,2.85 12.24,2.16 12.36,1.00 12.47,0.77 12.58,0.77 12.69,1.00 12.81,1.23 12.92,1.00 13.03,1.70 13.15,1.46 13.26,1.46 13.37,1.93 13.49,1.93 13.60,1.93 13.71,1.70 13.82,1.70 13.94,1.46 14.05,1.93 14.16,1.93 14.28,2.16 14.39,2.16 14.50,2.39 14.62,3.09 14.73,3.32 14.84,4.01 14.96,4.01 15.07,4.01 15.18,4.24 15.29,4.01 15.41,4.47 15.52,4.47 15.63,4.47 15.75,4.94 15.86,6.09 15.97,6.09 16.09,6.33 16.20,6.33 16.31,6.56 16.43,6.79 16.54,7.02 16.65,6.79 16.76,6.79 16.88,7.25 16.99,7.02 17.10,6.79 17.22,7.02 17.33,6.33 17.44,5.86 17.56,5.40 17.67,5.63 17.78,5.86 17.89,5.86 18.01,5.86 18.12,6.09 18.23,6.09 18.35,6.09 18.46,6.09 18.57,5.86 18.69,5.63 18.80,5.86 18.91,5.86 19.03,5.40 19.14,4.94 19.25,5.17 19.36,5.17 19.48,4.94 19.59,4.71 19.70,4.71 19.82,4.71 19.93,4.47 20.04,4.47 20.16,4.94 20.27,3.78 20.38,3.09 20.50,2.85 20.61,3.09 20.72,3.09 20.83,3.55 20.95,3.78 21.06,4.01 21.17,4.01 21.29,4.01 21.40,4.47 21.51,4.47 21.63,4.47 21.74,4.47 21.85,4.24 21.96,4.01 22.08,4.24 22.19,4.47 22.30,4.47 22.42,4.24 22.53,4.71 22.64,4.94 22.76,4.94 22.87,4.94 22.98,4.71 23.10,4.94 23.21,4.94 23.32,4.94 23.43,4.94 23.55,4.94 23.66,4.94 23.77,6.09 23.89,6.33 24.00,6.79 24.11,6.79 24.23,6.79 24.34,7.02 24.45,7.48 24.57,7.48 24.68,7.25 24.79,7.25 24.90,7.25 25.02,7.25 25.13,7.25 25.24,7.48 25.36,7.48 25.47,7.71 25.58,7.71 25.70,7.71 25.81,7.71 25.92,7.95 26.04,7.95 26.15,8.18 26.26,8.18 26.37,8.18 26.49,8.87 26.60,8.87 26.71,8.87 26.83,8.87 26.94,9.10 27.05,9.10 27.17,8.87 27.28,8.87 27.39,8.87 27.50,9.10 27.62,9.10 27.73,8.87 27.84,8.64 27.96,8.64 28.07,8.64 28.18,8.87 28.30,8.64 28.41,8.64 28.52,8.18 28.64,8.18 28.75,8.18 28.86,8.41 28.97,8.18 29.09,8.18 29.20,8.18 29.31,8.18 29.43,8.18 29.54,8.18 29.65,8.18 29.77,7.95 29.88,7.95 29.99,7.95 30.11,7.95 30.22,7.95 30.33,7.95 30.44,7.95 30.56,7.95 30.67,8.18 30.78,8.18 30.90,8.18 31.01,8.18 31.12,7.95 31.24,8.18 31.35,7.95 31.46,7.95 31.57,8.18 31.69,8.18 31.80,8.41 31.91,8.41 32.03,8.87 32.14,8.87 32.25,8.87 32.37,8.87 32.48,9.10 32.59,9.10 32.71,9.10 32.82,8.87 32.93,8.87 33.04,8.41 33.16,7.95 33.27,8.41 33.38,8.18 33.50,8.18 33.61,8.18 33.72,8.18 33.84,8.18 33.95,8.18 34.06,7.95 34.18,7.95 34.29,7.95 34.40,7.95 34.51,7.95 34.63,7.95 34.74,7.95 34.85,8.41 34.97,8.41 35.08,8.18 35.19,8.18 35.31,8.18 35.42,8.18 35.53,8.18 35.64,8.18 35.76,8.18 35.87,8.18 35.98,8.18 36.10,8.18 36.21,8.18 36.32,8.41 36.44,8.41 36.55,8.64 36.66,9.10 36.78,8.87 36.89,9.10 37.00,9.10 37.11,9.10 37.23,9.10 37.34,9.10 37.45,9.10 37.57,9.34 37.68,9.34 37.79,9.10 37.91,9.10 38.02,9.10 38.13,9.34 38.25,9.34 38.36,9.34 38.47,9.34 38.58,9.57 38.70,9.57 38.81,9.57 38.92,9.57 39.04,9.34 39.15,9.34 39.26,9.34 39.38,9.34 39.49,9.34 39.60,9.34 39.71,9.34 39.83,9.34 39.94,9.34 40.05,9.10 40.17,9.10 40.28,9.10 40.39,9.10 40.51,9.10 40.62,8.64 40.73,8.64 40.85,8.64 40.96,8.64 41.07,8.64 41.18,8.41 41.30,8.64 41.41,8.64 41.52,8.18 41.64,7.95 41.75,7.95 41.86,7.95 41.98,7.95 42.09,7.48 42.20,6.79 42.32,6.79 42.43,6.79 42.54,7.02 42.65,7.02 42.77,7.02 42.88,7.02 42.99,6.56 43.11,6.56 43.22,6.56 43.33,6.33 43.45,6.33 43.56,6.79 43.67,6.79 43.78,6.56 43.90,6.09 44.01,6.09 44.12,6.33 44.24,6.33 44.35,6.09 44.46,5.63 44.58,5.63 " style="stroke-width: 1.50; stroke: #D3D3D3;"/>
    <rect x="3.04" y="9.31" width="1.44" height="1.44" style="stroke-width: 1.50; stroke: none; fill: #FF0000;"/>
    <rect x="11.75" y="0.050" width="1.44" height="1.44" style="stroke-width: 1.50; stroke: none; fill: #FF0000;"/>
  </g>
</svg>
</td></tr>
  </tbody>
  
  
</table>
</div>

As of Thursday in Champaign County (vs. two weeks ago):
  
- Average new cases: 68 (vs. 110) -38%↓
- Average hospitalized: 69 (vs. 68) 
- Deaths in the past month: 19 (vs. 15)
- Percent of Champaign County fully vaccinated: 53% (vs. 52%)
- Average new vaccine doses: 334 (vs. 396)

![Champaign County Metrics](https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/Champaign_facet.png)

Charts for Champaign County are posted weekdays on Twitter [@ChampaignCovid](https://twitter.com/ChampaignCovid).

## Illinois

As of Thursday in Illinois (vs. two weeks ago):
  
- Average new cases: 3,890 (vs. 4,180) -7%↓
- Hospitalized: 2,230 (vs. 2,240) -1%↓
- Average new deaths: 40 (vs. 22) +79%↑
- Percent of Illinois fully vaccinated: 54.1% (vs. 53.1%)
- Average new vaccine doses: 21,300 (vs. 39,800)

![Illinois Metrics](https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/IL_facet.png)

![Illinois CDC_vax_combined map](https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/IL_vax_combined.png)

![IL CDC_cases_transmission_IL map](https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/IL_cases_transmission.png)

Community transmission levels are calculated by the CDC based on new cases per capita in the past week and test positivity.

## United States

As of Wednesday in the United States (vs. two weeks ago):
  
- Average new cases: 151,000 (vs. 166,000) -9%↓
- Hospitalized: 91,100 (vs. 99,100) -8%↓
- Average new deaths: 1,880 (vs. 1,410) +33%↑
- Percent of the United States fully vaccinated: 53.4% (vs. 51.9%)
- Average new vaccine doses: 763,000 (vs. 920,000)

![USA Metrics](https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/US_facet.png)

![USA fully vaccinated map](https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/usa_vax_total.png)

![USA transmission levels map](https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/usa_transmission.png)

## World

As of Wednesday (vs. two weeks ago):
  
- Average new cases: 543,000 (vs. 644,000) -16%↓
- Average new deaths: 8,950 (vs. 9,720) -8%↓
- Percent of the world fully vaccinated: 30.4% (vs. 27.3%)
- Average new vaccine doses: 29,600,000 (vs. 41,900,000)

![World Metrics](https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/world_facet.png)

## Case Acceleration

As of Wednesday, the 14-day percent change in average new cases was:
  
- -38% in Champaign County
- -7% in Illinois
- -9% in the United States
- -16% worldwide

![Case Acceleration](https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/new_cases_change_facet.png)

This chart measures how quickly the average number of new cases is changing, or roughly, the slope of the new-cases charts above. If the case acceleration is positive, then the average number of new cases is increasing. If it is negative, then the average number of new cases is decreasing.

## Death Acceleration

As of Wednesday, the 14-day percent change in average new deaths was:
  
- 79% in Illinois
- 33% in the United States
- -8% worldwide

![Death Acceleration](https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/new_deaths_change_facet.png)

This chart measures how quickly the average number of new deaths is changing, or roughly, the slope of the new-deaths charts above. If the death acceleration is positive, then the average number of new deaths is increasing. If it is negative, then the average number of new deaths is decreasing.


