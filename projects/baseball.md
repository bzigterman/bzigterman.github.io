---
layout: page
title: Baseball Standings
permalink: /projects/baseball
imageurl: https://bzigterman.com/plots/mlb_wild_card.png
---

<p class="updated_time"> Latest data: 01:03 AM CT, October 05</p> 

### Games Above .500

<div class = "standings">
<iframe src="/interactive/al_central_interactive.html" width="100%" height="300"> 
</iframe>

<iframe src="/interactive/al_east_interactive.html" width="100%" height="300"> 
</iframe>

<iframe src="/interactive/al_west_interactive.html" width="100%" height="300"> 
</iframe>

<iframe src="/interactive/nl_central_interactive.html" width="100%" height="300"> 
</iframe>

<iframe src="/interactive/nl_east_interactive.html" width="100%" height="300"> 
</iframe>

<iframe src="/interactive/nl_west_interactive.html" width="100%" height="300"> 
</iframe>
</div>

<div id="division_standings_table" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
  <style>@import url("https://fonts.googleapis.com/css2?family=Lato:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap");
html {
  font-family: Lato, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#division_standings_table .gt_table {
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

#division_standings_table .gt_heading {
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

#division_standings_table .gt_title {
  color: #333333;
  font-size: 24px;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#division_standings_table .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#division_standings_table .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#division_standings_table .gt_col_headings {
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

#division_standings_table .gt_col_heading {
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

#division_standings_table .gt_column_spanner_outer {
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

#division_standings_table .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#division_standings_table .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#division_standings_table .gt_column_spanner {
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

#division_standings_table .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
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

#division_standings_table .gt_empty_group_heading {
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

#division_standings_table .gt_from_md > :first-child {
  margin-top: 0;
}

#division_standings_table .gt_from_md > :last-child {
  margin-bottom: 0;
}

#division_standings_table .gt_row {
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

#division_standings_table .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 80%;
  font-weight: bolder;
  text-transform: uppercase;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}

#division_standings_table .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}

#division_standings_table .gt_row_group_first td {
  border-top-width: 2px;
}

#division_standings_table .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#division_standings_table .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}

#division_standings_table .gt_first_summary_row.thick {
  border-top-width: 2px;
}

#division_standings_table .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#division_standings_table .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#division_standings_table .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#division_standings_table .gt_striped {
  background-color: #FAFAFA;
}

#division_standings_table .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#division_standings_table .gt_footnotes {
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

#division_standings_table .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-left: 4px;
  padding-right: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#division_standings_table .gt_sourcenotes {
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

#division_standings_table .gt_sourcenote {
  font-size: 12px;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#division_standings_table .gt_left {
  text-align: left;
}

#division_standings_table .gt_center {
  text-align: center;
}

#division_standings_table .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#division_standings_table .gt_font_normal {
  font-weight: normal;
}

#division_standings_table .gt_font_bold {
  font-weight: bold;
}

#division_standings_table .gt_font_italic {
  font-style: italic;
}

#division_standings_table .gt_super {
  font-size: 65%;
}

#division_standings_table .gt_footnote_marks {
  font-style: italic;
  font-weight: normal;
  font-size: 75%;
  vertical-align: 0.4em;
}

#division_standings_table .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}

#division_standings_table .gt_indent_1 {
  text-indent: 5px;
}

#division_standings_table .gt_indent_2 {
  text-indent: 10px;
}

#division_standings_table .gt_indent_3 {
  text-indent: 15px;
}

#division_standings_table .gt_indent_4 {
  text-indent: 20px;
}

#division_standings_table .gt_indent_5 {
  text-indent: 25px;
}
</style>
  <table class="gt_table">
  
  <thead class="gt_col_headings">
    <tr>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col">Team</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col">W</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col">L</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col">Pct</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col">GR</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col">GB</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col">M#<br>/E#</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col">Last 10 Games</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr class="gt_group_heading_row">
      <td colspan="9" class="gt_group_heading">AL Central</td>
    </tr>
    <tr class="gt_row_group_first"><td class="gt_row gt_right"><img src="https://www.mlbstatic.com/team-logos/114.svg" style="height:12px;"></td>
<td class="gt_row gt_left">CLE</td>
<td class="gt_row gt_right">91</td>
<td class="gt_row gt_right">70</td>
<td class="gt_row gt_right">.565</td>
<td class="gt_row gt_right">1</td>
<td class="gt_row gt_right">0.0</td>
<td class="gt_row gt_right">✓</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='1.89' x2='7.73' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.60' y1='8.91' x2='11.60' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='15.46' y1='1.89' x2='15.46' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right gt_striped"><img src="https://www.mlbstatic.com/team-logos/145.svg" style="height:12px;"></td>
<td class="gt_row gt_left gt_striped">CWS</td>
<td class="gt_row gt_right gt_striped">81</td>
<td class="gt_row gt_right gt_striped">80</td>
<td class="gt_row gt_right gt_striped">.503</td>
<td class="gt_row gt_right gt_striped">1</td>
<td class="gt_row gt_right gt_striped">10.0</td>
<td class="gt_row gt_right gt_striped">—</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='8.91' x2='11.60' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right"><img src="https://www.mlbstatic.com/team-logos/142.svg" style="height:12px;"></td>
<td class="gt_row gt_left">MIN</td>
<td class="gt_row gt_right">77</td>
<td class="gt_row gt_right">84</td>
<td class="gt_row gt_right">.478</td>
<td class="gt_row gt_right">1</td>
<td class="gt_row gt_right">14.0</td>
<td class="gt_row gt_right">—</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='1.89' x2='15.46' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right gt_striped"><img src="https://www.mlbstatic.com/team-logos/116.svg" style="height:12px;"></td>
<td class="gt_row gt_left gt_striped">DET</td>
<td class="gt_row gt_right gt_striped">66</td>
<td class="gt_row gt_right gt_striped">95</td>
<td class="gt_row gt_right gt_striped">.410</td>
<td class="gt_row gt_right gt_striped">1</td>
<td class="gt_row gt_right gt_striped">25.0</td>
<td class="gt_row gt_right gt_striped">—</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='1.89' x2='7.73' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='1.89' x2='15.46' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right"><img src="https://www.mlbstatic.com/team-logos/118.svg" style="height:12px;"></td>
<td class="gt_row gt_left">KC </td>
<td class="gt_row gt_right">65</td>
<td class="gt_row gt_right">96</td>
<td class="gt_row gt_right">.404</td>
<td class="gt_row gt_right">1</td>
<td class="gt_row gt_right">26.0</td>
<td class="gt_row gt_right">—</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='1.89' x2='7.73' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.60' y1='8.91' x2='11.60' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='8.91' x2='23.19' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr class="gt_group_heading_row">
      <td colspan="9" class="gt_group_heading">AL East</td>
    </tr>
    <tr class="gt_row_group_first"><td class="gt_row gt_right gt_striped"><img src="https://www.mlbstatic.com/team-logos/147.svg" style="height:12px;"></td>
<td class="gt_row gt_left gt_striped">NYY</td>
<td class="gt_row gt_right gt_striped">99</td>
<td class="gt_row gt_right gt_striped">62</td>
<td class="gt_row gt_right gt_striped">.615</td>
<td class="gt_row gt_right gt_striped">1</td>
<td class="gt_row gt_right gt_striped">0.0</td>
<td class="gt_row gt_right gt_striped">✓</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='1.89' x2='15.46' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right"><img src="https://www.mlbstatic.com/team-logos/141.svg" style="height:12px;"></td>
<td class="gt_row gt_left">TOR</td>
<td class="gt_row gt_right">91</td>
<td class="gt_row gt_right">69</td>
<td class="gt_row gt_right">.569</td>
<td class="gt_row gt_right">2</td>
<td class="gt_row gt_right">7.5</td>
<td class="gt_row gt_right">—</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='1.89' x2='7.73' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='1.89' x2='15.46' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='8.91' x2='23.19' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right gt_striped"><img src="https://www.mlbstatic.com/team-logos/139.svg" style="height:12px;"></td>
<td class="gt_row gt_left gt_striped">TB </td>
<td class="gt_row gt_right gt_striped">86</td>
<td class="gt_row gt_right gt_striped">75</td>
<td class="gt_row gt_right gt_striped">.534</td>
<td class="gt_row gt_right gt_striped">1</td>
<td class="gt_row gt_right gt_striped">13.0</td>
<td class="gt_row gt_right gt_striped">—</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right"><img src="https://www.mlbstatic.com/team-logos/110.svg" style="height:12px;"></td>
<td class="gt_row gt_left">BAL</td>
<td class="gt_row gt_right">82</td>
<td class="gt_row gt_right">78</td>
<td class="gt_row gt_right">.512</td>
<td class="gt_row gt_right">2</td>
<td class="gt_row gt_right">16.5</td>
<td class="gt_row gt_right">—</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='8.91' x2='23.19' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right gt_striped"><img src="https://www.mlbstatic.com/team-logos/111.svg" style="height:12px;"></td>
<td class="gt_row gt_left gt_striped">BOS</td>
<td class="gt_row gt_right gt_striped">77</td>
<td class="gt_row gt_right gt_striped">84</td>
<td class="gt_row gt_right gt_striped">.478</td>
<td class="gt_row gt_right gt_striped">1</td>
<td class="gt_row gt_right gt_striped">22.0</td>
<td class="gt_row gt_right gt_striped">—</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='1.89' x2='15.46' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='8.91' x2='23.19' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr class="gt_group_heading_row">
      <td colspan="9" class="gt_group_heading">AL West</td>
    </tr>
    <tr class="gt_row_group_first"><td class="gt_row gt_right"><img src="https://www.mlbstatic.com/team-logos/117.svg" style="height:12px;"></td>
<td class="gt_row gt_left">HOU</td>
<td class="gt_row gt_right">105</td>
<td class="gt_row gt_right">56</td>
<td class="gt_row gt_right">.652</td>
<td class="gt_row gt_right">1</td>
<td class="gt_row gt_right">0.0</td>
<td class="gt_row gt_right">✓</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='1.89' x2='7.73' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='1.89' x2='15.46' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='8.91' x2='23.19' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right gt_striped"><img src="https://www.mlbstatic.com/team-logos/136.svg" style="height:12px;"></td>
<td class="gt_row gt_left gt_striped">SEA</td>
<td class="gt_row gt_right gt_striped">89</td>
<td class="gt_row gt_right gt_striped">72</td>
<td class="gt_row gt_right gt_striped">.553</td>
<td class="gt_row gt_right gt_striped">1</td>
<td class="gt_row gt_right gt_striped">16.0</td>
<td class="gt_row gt_right gt_striped">—</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='1.89' x2='15.46' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right"><img src="https://www.mlbstatic.com/team-logos/108.svg" style="height:12px;"></td>
<td class="gt_row gt_left">LAA</td>
<td class="gt_row gt_right">73</td>
<td class="gt_row gt_right">88</td>
<td class="gt_row gt_right">.453</td>
<td class="gt_row gt_right">1</td>
<td class="gt_row gt_right">32.0</td>
<td class="gt_row gt_right">—</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='1.89' x2='7.73' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='1.89' x2='15.46' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right gt_striped"><img src="https://www.mlbstatic.com/team-logos/140.svg" style="height:12px;"></td>
<td class="gt_row gt_left gt_striped">TEX</td>
<td class="gt_row gt_right gt_striped">67</td>
<td class="gt_row gt_right gt_striped">94</td>
<td class="gt_row gt_right gt_striped">.416</td>
<td class="gt_row gt_right gt_striped">1</td>
<td class="gt_row gt_right gt_striped">38.0</td>
<td class="gt_row gt_right gt_striped">—</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='1.89' x2='7.73' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.60' y1='8.91' x2='11.60' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='8.91' x2='23.19' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right"><img src="https://www.mlbstatic.com/team-logos/133.svg" style="height:12px;"></td>
<td class="gt_row gt_left">OAK</td>
<td class="gt_row gt_right">59</td>
<td class="gt_row gt_right">102</td>
<td class="gt_row gt_right">.366</td>
<td class="gt_row gt_right">1</td>
<td class="gt_row gt_right">46.0</td>
<td class="gt_row gt_right">—</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='8.91' x2='11.60' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='8.91' x2='23.19' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr class="gt_group_heading_row">
      <td colspan="9" class="gt_group_heading">NL Central</td>
    </tr>
    <tr class="gt_row_group_first"><td class="gt_row gt_right gt_striped"><img src="https://www.mlbstatic.com/team-logos/138.svg" style="height:12px;"></td>
<td class="gt_row gt_left gt_striped">STL</td>
<td class="gt_row gt_right gt_striped">93</td>
<td class="gt_row gt_right gt_striped">68</td>
<td class="gt_row gt_right gt_striped">.578</td>
<td class="gt_row gt_right gt_striped">1</td>
<td class="gt_row gt_right gt_striped">0.0</td>
<td class="gt_row gt_right gt_striped">✓</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='8.91' x2='11.60' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='15.46' y1='1.89' x2='15.46' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right"><img src="https://www.mlbstatic.com/team-logos/158.svg" style="height:12px;"></td>
<td class="gt_row gt_left">MIL</td>
<td class="gt_row gt_right">86</td>
<td class="gt_row gt_right">75</td>
<td class="gt_row gt_right">.534</td>
<td class="gt_row gt_right">1</td>
<td class="gt_row gt_right">7.0</td>
<td class="gt_row gt_right">—</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='8.91' x2='11.60' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='15.46' y1='1.89' x2='15.46' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right gt_striped"><img src="https://www.mlbstatic.com/team-logos/112.svg" style="height:12px;"></td>
<td class="gt_row gt_left gt_striped">CHC</td>
<td class="gt_row gt_right gt_striped">73</td>
<td class="gt_row gt_right gt_striped">88</td>
<td class="gt_row gt_right gt_striped">.453</td>
<td class="gt_row gt_right gt_striped">1</td>
<td class="gt_row gt_right gt_striped">20.0</td>
<td class="gt_row gt_right gt_striped">—</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='1.89' x2='7.73' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='1.89' x2='15.46' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right"><img src="https://www.mlbstatic.com/team-logos/113.svg" style="height:12px;"></td>
<td class="gt_row gt_left">CIN</td>
<td class="gt_row gt_right">62</td>
<td class="gt_row gt_right">99</td>
<td class="gt_row gt_right">.385</td>
<td class="gt_row gt_right">1</td>
<td class="gt_row gt_right">31.0</td>
<td class="gt_row gt_right">—</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='1.89' x2='7.73' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.60' y1='8.91' x2='11.60' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='8.91' x2='23.19' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right gt_striped"><img src="https://www.mlbstatic.com/team-logos/134.svg" style="height:12px;"></td>
<td class="gt_row gt_left gt_striped">PIT</td>
<td class="gt_row gt_right gt_striped">61</td>
<td class="gt_row gt_right gt_striped">100</td>
<td class="gt_row gt_right gt_striped">.379</td>
<td class="gt_row gt_right gt_striped">1</td>
<td class="gt_row gt_right gt_striped">32.0</td>
<td class="gt_row gt_right gt_striped">—</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='1.89' x2='15.46' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='8.91' x2='23.19' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr class="gt_group_heading_row">
      <td colspan="9" class="gt_group_heading">NL East</td>
    </tr>
    <tr class="gt_row_group_first"><td class="gt_row gt_right"><img src="https://www.mlbstatic.com/team-logos/144.svg" style="height:12px;"></td>
<td class="gt_row gt_left">ATL</td>
<td class="gt_row gt_right">101</td>
<td class="gt_row gt_right">60</td>
<td class="gt_row gt_right">.627</td>
<td class="gt_row gt_right">1</td>
<td class="gt_row gt_right">0.0</td>
<td class="gt_row gt_right">1</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='1.89' x2='7.73' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='1.89' x2='15.46' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right gt_striped"><img src="https://www.mlbstatic.com/team-logos/121.svg" style="height:12px;"></td>
<td class="gt_row gt_left gt_striped">NYM</td>
<td class="gt_row gt_right gt_striped">100</td>
<td class="gt_row gt_right gt_striped">61</td>
<td class="gt_row gt_right gt_striped">.621</td>
<td class="gt_row gt_right gt_striped">1</td>
<td class="gt_row gt_right gt_striped">1.0</td>
<td class="gt_row gt_right gt_striped">1</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='8.91' x2='23.19' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right"><img src="https://www.mlbstatic.com/team-logos/143.svg" style="height:12px;"></td>
<td class="gt_row gt_left">PHI</td>
<td class="gt_row gt_right">87</td>
<td class="gt_row gt_right">74</td>
<td class="gt_row gt_right">.540</td>
<td class="gt_row gt_right">1</td>
<td class="gt_row gt_right">14.0</td>
<td class="gt_row gt_right">—</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='8.91' x2='11.60' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right gt_striped"><img src="https://www.mlbstatic.com/team-logos/146.svg" style="height:12px;"></td>
<td class="gt_row gt_left gt_striped">MIA</td>
<td class="gt_row gt_right gt_striped">68</td>
<td class="gt_row gt_right gt_striped">93</td>
<td class="gt_row gt_right gt_striped">.422</td>
<td class="gt_row gt_right gt_striped">1</td>
<td class="gt_row gt_right gt_striped">33.0</td>
<td class="gt_row gt_right gt_striped">—</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='8.91' x2='23.19' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right"><img src="https://www.mlbstatic.com/team-logos/120.svg" style="height:12px;"></td>
<td class="gt_row gt_left">WSH</td>
<td class="gt_row gt_right">55</td>
<td class="gt_row gt_right">106</td>
<td class="gt_row gt_right">.342</td>
<td class="gt_row gt_right">1</td>
<td class="gt_row gt_right">46.0</td>
<td class="gt_row gt_right">—</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='8.91' x2='11.60' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='15.46' y1='1.89' x2='15.46' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='8.91' x2='23.19' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr class="gt_group_heading_row">
      <td colspan="9" class="gt_group_heading">NL West</td>
    </tr>
    <tr class="gt_row_group_first"><td class="gt_row gt_right gt_striped"><img src="https://www.mlbstatic.com/team-logos/119.svg" style="height:12px;"></td>
<td class="gt_row gt_left gt_striped">LAD</td>
<td class="gt_row gt_right gt_striped">110</td>
<td class="gt_row gt_right gt_striped">51</td>
<td class="gt_row gt_right gt_striped">.683</td>
<td class="gt_row gt_right gt_striped">1</td>
<td class="gt_row gt_right gt_striped">0.0</td>
<td class="gt_row gt_right gt_striped">✓</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='1.89' x2='7.73' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.60' y1='8.91' x2='11.60' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='15.46' y1='1.89' x2='15.46' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right"><img src="https://www.mlbstatic.com/team-logos/135.svg" style="height:12px;"></td>
<td class="gt_row gt_left">SD </td>
<td class="gt_row gt_right">89</td>
<td class="gt_row gt_right">72</td>
<td class="gt_row gt_right">.553</td>
<td class="gt_row gt_right">1</td>
<td class="gt_row gt_right">21.0</td>
<td class="gt_row gt_right">—</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='1.89' x2='7.73' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='8.91' x2='23.19' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right gt_striped"><img src="https://www.mlbstatic.com/team-logos/137.svg" style="height:12px;"></td>
<td class="gt_row gt_left gt_striped">SF </td>
<td class="gt_row gt_right gt_striped">80</td>
<td class="gt_row gt_right gt_striped">81</td>
<td class="gt_row gt_right gt_striped">.497</td>
<td class="gt_row gt_right gt_striped">1</td>
<td class="gt_row gt_right gt_striped">30.0</td>
<td class="gt_row gt_right gt_striped">—</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='1.89' x2='7.73' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='1.89' x2='15.46' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right"><img src="https://www.mlbstatic.com/team-logos/109.svg" style="height:12px;"></td>
<td class="gt_row gt_left">ARI</td>
<td class="gt_row gt_right">73</td>
<td class="gt_row gt_right">88</td>
<td class="gt_row gt_right">.453</td>
<td class="gt_row gt_right">1</td>
<td class="gt_row gt_right">37.0</td>
<td class="gt_row gt_right">—</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='1.89' x2='7.73' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.60' y1='8.91' x2='11.60' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='8.91' x2='23.19' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right gt_striped"><img src="https://www.mlbstatic.com/team-logos/115.svg" style="height:12px;"></td>
<td class="gt_row gt_left gt_striped">COL</td>
<td class="gt_row gt_right gt_striped">68</td>
<td class="gt_row gt_right gt_striped">93</td>
<td class="gt_row gt_right gt_striped">.422</td>
<td class="gt_row gt_right gt_striped">1</td>
<td class="gt_row gt_right gt_striped">42.0</td>
<td class="gt_row gt_right gt_striped">—</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='8.91' x2='11.60' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='8.91' x2='23.19' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
  </tbody>
  
  
</table>
</div>

## Wild Card

<picture>
  <source srcset="{{ site.baseurl }}/plots/mlb_team_rank.png"
          media="(min-width: 750px)">
  <img src="{{ site.baseurl }}/plots/mlb_team_rank_mobile.png" alt="" />
</picture>

<div id="wild_card_standings_table" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
  <style>@import url("https://fonts.googleapis.com/css2?family=Lato:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap");
html {
  font-family: Lato, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#wild_card_standings_table .gt_table {
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

#wild_card_standings_table .gt_heading {
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

#wild_card_standings_table .gt_title {
  color: #333333;
  font-size: 24px;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#wild_card_standings_table .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 6px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

#wild_card_standings_table .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#wild_card_standings_table .gt_col_headings {
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

#wild_card_standings_table .gt_col_heading {
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

#wild_card_standings_table .gt_column_spanner_outer {
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

#wild_card_standings_table .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#wild_card_standings_table .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#wild_card_standings_table .gt_column_spanner {
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

#wild_card_standings_table .gt_group_heading {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
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

#wild_card_standings_table .gt_empty_group_heading {
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

#wild_card_standings_table .gt_from_md > :first-child {
  margin-top: 0;
}

#wild_card_standings_table .gt_from_md > :last-child {
  margin-bottom: 0;
}

#wild_card_standings_table .gt_row {
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

#wild_card_standings_table .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 80%;
  font-weight: bolder;
  text-transform: uppercase;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
}

#wild_card_standings_table .gt_stub_row_group {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 100%;
  font-weight: initial;
  text-transform: inherit;
  border-right-style: solid;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 5px;
  padding-right: 5px;
  vertical-align: top;
}

#wild_card_standings_table .gt_row_group_first td {
  border-top-width: 2px;
}

#wild_card_standings_table .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#wild_card_standings_table .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}

#wild_card_standings_table .gt_first_summary_row.thick {
  border-top-width: 2px;
}

#wild_card_standings_table .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#wild_card_standings_table .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#wild_card_standings_table .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#wild_card_standings_table .gt_striped {
  background-color: #FAFAFA;
}

#wild_card_standings_table .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#wild_card_standings_table .gt_footnotes {
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

#wild_card_standings_table .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-left: 4px;
  padding-right: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#wild_card_standings_table .gt_sourcenotes {
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

#wild_card_standings_table .gt_sourcenote {
  font-size: 12px;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#wild_card_standings_table .gt_left {
  text-align: left;
}

#wild_card_standings_table .gt_center {
  text-align: center;
}

#wild_card_standings_table .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#wild_card_standings_table .gt_font_normal {
  font-weight: normal;
}

#wild_card_standings_table .gt_font_bold {
  font-weight: bold;
}

#wild_card_standings_table .gt_font_italic {
  font-style: italic;
}

#wild_card_standings_table .gt_super {
  font-size: 65%;
}

#wild_card_standings_table .gt_footnote_marks {
  font-style: italic;
  font-weight: normal;
  font-size: 75%;
  vertical-align: 0.4em;
}

#wild_card_standings_table .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}

#wild_card_standings_table .gt_indent_1 {
  text-indent: 5px;
}

#wild_card_standings_table .gt_indent_2 {
  text-indent: 10px;
}

#wild_card_standings_table .gt_indent_3 {
  text-indent: 15px;
}

#wild_card_standings_table .gt_indent_4 {
  text-indent: 20px;
}

#wild_card_standings_table .gt_indent_5 {
  text-indent: 25px;
}
</style>
  <table class="gt_table">
  
  <thead class="gt_col_headings">
    <tr>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col">Team</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col">W</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col">L</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col">Pct</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col">GR</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col">GB</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col">E#</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col">Last 10 Games</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr class="gt_group_heading_row">
      <td colspan="9" class="gt_group_heading">AL</td>
    </tr>
    <tr class="gt_row_group_first"><td class="gt_row gt_right"><img src="https://www.mlbstatic.com/team-logos/117.svg" style="height:12px;"></td>
<td class="gt_row gt_left">HOU</td>
<td class="gt_row gt_right">105</td>
<td class="gt_row gt_right">56</td>
<td class="gt_row gt_right">.652</td>
<td class="gt_row gt_right">1</td>
<td class="gt_row gt_right">W✓</td>
<td class="gt_row gt_right">W✓</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='1.89' x2='7.73' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='1.89' x2='15.46' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='8.91' x2='23.19' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right gt_striped"><img src="https://www.mlbstatic.com/team-logos/147.svg" style="height:12px;"></td>
<td class="gt_row gt_left gt_striped">NYY</td>
<td class="gt_row gt_right gt_striped">99</td>
<td class="gt_row gt_right gt_striped">62</td>
<td class="gt_row gt_right gt_striped">.615</td>
<td class="gt_row gt_right gt_striped">1</td>
<td class="gt_row gt_right gt_striped">E✓</td>
<td class="gt_row gt_right gt_striped">E✓</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='1.89' x2='15.46' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right"><img src="https://www.mlbstatic.com/team-logos/141.svg" style="height:12px;"></td>
<td class="gt_row gt_left">TOR</td>
<td class="gt_row gt_right">91</td>
<td class="gt_row gt_right">69</td>
<td class="gt_row gt_right">.569</td>
<td class="gt_row gt_right">2</td>
<td class="gt_row gt_right">-5.5</td>
<td class="gt_row gt_right">WC</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='1.89' x2='7.73' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='1.89' x2='15.46' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='8.91' x2='23.19' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right gt_striped"><img src="https://www.mlbstatic.com/team-logos/114.svg" style="height:12px;"></td>
<td class="gt_row gt_left gt_striped">CLE</td>
<td class="gt_row gt_right gt_striped">91</td>
<td class="gt_row gt_right gt_striped">70</td>
<td class="gt_row gt_right gt_striped">.565</td>
<td class="gt_row gt_right gt_striped">1</td>
<td class="gt_row gt_right gt_striped">C✓</td>
<td class="gt_row gt_right gt_striped">C✓</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='1.89' x2='7.73' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.60' y1='8.91' x2='11.60' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='15.46' y1='1.89' x2='15.46' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right"><img src="https://www.mlbstatic.com/team-logos/136.svg" style="height:12px;"></td>
<td class="gt_row gt_left">SEA</td>
<td class="gt_row gt_right">89</td>
<td class="gt_row gt_right">72</td>
<td class="gt_row gt_right">.553</td>
<td class="gt_row gt_right">1</td>
<td class="gt_row gt_right">-3</td>
<td class="gt_row gt_right">WC</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='1.89' x2='15.46' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right gt_striped"><img src="https://www.mlbstatic.com/team-logos/139.svg" style="height:12px;"></td>
<td class="gt_row gt_left gt_striped">TB </td>
<td class="gt_row gt_right gt_striped">86</td>
<td class="gt_row gt_right gt_striped">75</td>
<td class="gt_row gt_right gt_striped">.534</td>
<td class="gt_row gt_right gt_striped">1</td>
<td class="gt_row gt_right gt_striped">0</td>
<td class="gt_row gt_right gt_striped">WC</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right"><img src="https://www.mlbstatic.com/team-logos/110.svg" style="height:12px;"></td>
<td class="gt_row gt_left">BAL</td>
<td class="gt_row gt_right">82</td>
<td class="gt_row gt_right">78</td>
<td class="gt_row gt_right">.512</td>
<td class="gt_row gt_right">2</td>
<td class="gt_row gt_right">3.5</td>
<td class="gt_row gt_right">—</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='8.91' x2='23.19' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right gt_striped"><img src="https://www.mlbstatic.com/team-logos/145.svg" style="height:12px;"></td>
<td class="gt_row gt_left gt_striped">CWS</td>
<td class="gt_row gt_right gt_striped">81</td>
<td class="gt_row gt_right gt_striped">80</td>
<td class="gt_row gt_right gt_striped">.503</td>
<td class="gt_row gt_right gt_striped">1</td>
<td class="gt_row gt_right gt_striped">5</td>
<td class="gt_row gt_right gt_striped">—</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='8.91' x2='11.60' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right"><img src="https://www.mlbstatic.com/team-logos/142.svg" style="height:12px;"></td>
<td class="gt_row gt_left">MIN</td>
<td class="gt_row gt_right">77</td>
<td class="gt_row gt_right">84</td>
<td class="gt_row gt_right">.478</td>
<td class="gt_row gt_right">1</td>
<td class="gt_row gt_right">9</td>
<td class="gt_row gt_right">—</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='1.89' x2='15.46' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right gt_striped"><img src="https://www.mlbstatic.com/team-logos/111.svg" style="height:12px;"></td>
<td class="gt_row gt_left gt_striped">BOS</td>
<td class="gt_row gt_right gt_striped">77</td>
<td class="gt_row gt_right gt_striped">84</td>
<td class="gt_row gt_right gt_striped">.478</td>
<td class="gt_row gt_right gt_striped">1</td>
<td class="gt_row gt_right gt_striped">9</td>
<td class="gt_row gt_right gt_striped">—</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='1.89' x2='15.46' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='8.91' x2='23.19' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right"><img src="https://www.mlbstatic.com/team-logos/108.svg" style="height:12px;"></td>
<td class="gt_row gt_left">LAA</td>
<td class="gt_row gt_right">73</td>
<td class="gt_row gt_right">88</td>
<td class="gt_row gt_right">.453</td>
<td class="gt_row gt_right">1</td>
<td class="gt_row gt_right">13</td>
<td class="gt_row gt_right">—</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='1.89' x2='7.73' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='1.89' x2='15.46' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right gt_striped"><img src="https://www.mlbstatic.com/team-logos/140.svg" style="height:12px;"></td>
<td class="gt_row gt_left gt_striped">TEX</td>
<td class="gt_row gt_right gt_striped">67</td>
<td class="gt_row gt_right gt_striped">94</td>
<td class="gt_row gt_right gt_striped">.416</td>
<td class="gt_row gt_right gt_striped">1</td>
<td class="gt_row gt_right gt_striped">19</td>
<td class="gt_row gt_right gt_striped">—</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='1.89' x2='7.73' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.60' y1='8.91' x2='11.60' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='8.91' x2='23.19' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right"><img src="https://www.mlbstatic.com/team-logos/116.svg" style="height:12px;"></td>
<td class="gt_row gt_left">DET</td>
<td class="gt_row gt_right">66</td>
<td class="gt_row gt_right">95</td>
<td class="gt_row gt_right">.410</td>
<td class="gt_row gt_right">1</td>
<td class="gt_row gt_right">20</td>
<td class="gt_row gt_right">—</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='1.89' x2='7.73' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='1.89' x2='15.46' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right gt_striped"><img src="https://www.mlbstatic.com/team-logos/118.svg" style="height:12px;"></td>
<td class="gt_row gt_left gt_striped">KC </td>
<td class="gt_row gt_right gt_striped">65</td>
<td class="gt_row gt_right gt_striped">96</td>
<td class="gt_row gt_right gt_striped">.404</td>
<td class="gt_row gt_right gt_striped">1</td>
<td class="gt_row gt_right gt_striped">21</td>
<td class="gt_row gt_right gt_striped">—</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='1.89' x2='7.73' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.60' y1='8.91' x2='11.60' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='8.91' x2='23.19' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right"><img src="https://www.mlbstatic.com/team-logos/133.svg" style="height:12px;"></td>
<td class="gt_row gt_left">OAK</td>
<td class="gt_row gt_right">59</td>
<td class="gt_row gt_right">102</td>
<td class="gt_row gt_right">.366</td>
<td class="gt_row gt_right">1</td>
<td class="gt_row gt_right">27</td>
<td class="gt_row gt_right">—</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='8.91' x2='11.60' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='8.91' x2='23.19' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr class="gt_group_heading_row">
      <td colspan="9" class="gt_group_heading">NL</td>
    </tr>
    <tr class="gt_row_group_first"><td class="gt_row gt_right gt_striped"><img src="https://www.mlbstatic.com/team-logos/119.svg" style="height:12px;"></td>
<td class="gt_row gt_left gt_striped">LAD</td>
<td class="gt_row gt_right gt_striped">110</td>
<td class="gt_row gt_right gt_striped">51</td>
<td class="gt_row gt_right gt_striped">.683</td>
<td class="gt_row gt_right gt_striped">1</td>
<td class="gt_row gt_right gt_striped">W✓</td>
<td class="gt_row gt_right gt_striped">W✓</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='1.89' x2='7.73' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.60' y1='8.91' x2='11.60' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='15.46' y1='1.89' x2='15.46' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right"><img src="https://www.mlbstatic.com/team-logos/144.svg" style="height:12px;"></td>
<td class="gt_row gt_left">ATL</td>
<td class="gt_row gt_right">101</td>
<td class="gt_row gt_right">60</td>
<td class="gt_row gt_right">.627</td>
<td class="gt_row gt_right">1</td>
<td class="gt_row gt_right">E</td>
<td class="gt_row gt_right">E</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='1.89' x2='7.73' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='1.89' x2='15.46' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right gt_striped"><img src="https://www.mlbstatic.com/team-logos/121.svg" style="height:12px;"></td>
<td class="gt_row gt_left gt_striped">NYM</td>
<td class="gt_row gt_right gt_striped">100</td>
<td class="gt_row gt_right gt_striped">61</td>
<td class="gt_row gt_right gt_striped">.621</td>
<td class="gt_row gt_right gt_striped">1</td>
<td class="gt_row gt_right gt_striped">-13</td>
<td class="gt_row gt_right gt_striped">WC</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='8.91' x2='23.19' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right"><img src="https://www.mlbstatic.com/team-logos/138.svg" style="height:12px;"></td>
<td class="gt_row gt_left">STL</td>
<td class="gt_row gt_right">93</td>
<td class="gt_row gt_right">68</td>
<td class="gt_row gt_right">.578</td>
<td class="gt_row gt_right">1</td>
<td class="gt_row gt_right">C✓</td>
<td class="gt_row gt_right">C✓</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='8.91' x2='11.60' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='15.46' y1='1.89' x2='15.46' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right gt_striped"><img src="https://www.mlbstatic.com/team-logos/135.svg" style="height:12px;"></td>
<td class="gt_row gt_left gt_striped">SD </td>
<td class="gt_row gt_right gt_striped">89</td>
<td class="gt_row gt_right gt_striped">72</td>
<td class="gt_row gt_right gt_striped">.553</td>
<td class="gt_row gt_right gt_striped">1</td>
<td class="gt_row gt_right gt_striped">-2</td>
<td class="gt_row gt_right gt_striped">WC</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='1.89' x2='7.73' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='8.91' x2='23.19' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right"><img src="https://www.mlbstatic.com/team-logos/143.svg" style="height:12px;"></td>
<td class="gt_row gt_left">PHI</td>
<td class="gt_row gt_right">87</td>
<td class="gt_row gt_right">74</td>
<td class="gt_row gt_right">.540</td>
<td class="gt_row gt_right">1</td>
<td class="gt_row gt_right">0</td>
<td class="gt_row gt_right">WC</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='8.91' x2='11.60' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right gt_striped"><img src="https://www.mlbstatic.com/team-logos/158.svg" style="height:12px;"></td>
<td class="gt_row gt_left gt_striped">MIL</td>
<td class="gt_row gt_right gt_striped">86</td>
<td class="gt_row gt_right gt_striped">75</td>
<td class="gt_row gt_right gt_striped">.534</td>
<td class="gt_row gt_right gt_striped">1</td>
<td class="gt_row gt_right gt_striped">1</td>
<td class="gt_row gt_right gt_striped">1</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='8.91' x2='11.60' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='15.46' y1='1.89' x2='15.46' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right"><img src="https://www.mlbstatic.com/team-logos/137.svg" style="height:12px;"></td>
<td class="gt_row gt_left">SF </td>
<td class="gt_row gt_right">80</td>
<td class="gt_row gt_right">81</td>
<td class="gt_row gt_right">.497</td>
<td class="gt_row gt_right">1</td>
<td class="gt_row gt_right">7</td>
<td class="gt_row gt_right">—</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='1.89' x2='7.73' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='1.89' x2='15.46' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right gt_striped"><img src="https://www.mlbstatic.com/team-logos/112.svg" style="height:12px;"></td>
<td class="gt_row gt_left gt_striped">CHC</td>
<td class="gt_row gt_right gt_striped">73</td>
<td class="gt_row gt_right gt_striped">88</td>
<td class="gt_row gt_right gt_striped">.453</td>
<td class="gt_row gt_right gt_striped">1</td>
<td class="gt_row gt_right gt_striped">14</td>
<td class="gt_row gt_right gt_striped">—</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='1.89' x2='7.73' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='1.89' x2='15.46' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right"><img src="https://www.mlbstatic.com/team-logos/109.svg" style="height:12px;"></td>
<td class="gt_row gt_left">ARI</td>
<td class="gt_row gt_right">73</td>
<td class="gt_row gt_right">88</td>
<td class="gt_row gt_right">.453</td>
<td class="gt_row gt_right">1</td>
<td class="gt_row gt_right">14</td>
<td class="gt_row gt_right">—</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='1.89' x2='7.73' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.60' y1='8.91' x2='11.60' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='8.91' x2='23.19' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right gt_striped"><img src="https://www.mlbstatic.com/team-logos/146.svg" style="height:12px;"></td>
<td class="gt_row gt_left gt_striped">MIA</td>
<td class="gt_row gt_right gt_striped">68</td>
<td class="gt_row gt_right gt_striped">93</td>
<td class="gt_row gt_right gt_striped">.422</td>
<td class="gt_row gt_right gt_striped">1</td>
<td class="gt_row gt_right gt_striped">19</td>
<td class="gt_row gt_right gt_striped">—</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='8.91' x2='23.19' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right"><img src="https://www.mlbstatic.com/team-logos/115.svg" style="height:12px;"></td>
<td class="gt_row gt_left">COL</td>
<td class="gt_row gt_right">68</td>
<td class="gt_row gt_right">93</td>
<td class="gt_row gt_right">.422</td>
<td class="gt_row gt_right">1</td>
<td class="gt_row gt_right">19</td>
<td class="gt_row gt_right">—</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='8.91' x2='11.60' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='8.91' x2='23.19' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right gt_striped"><img src="https://www.mlbstatic.com/team-logos/113.svg" style="height:12px;"></td>
<td class="gt_row gt_left gt_striped">CIN</td>
<td class="gt_row gt_right gt_striped">62</td>
<td class="gt_row gt_right gt_striped">99</td>
<td class="gt_row gt_right gt_striped">.385</td>
<td class="gt_row gt_right gt_striped">1</td>
<td class="gt_row gt_right gt_striped">25</td>
<td class="gt_row gt_right gt_striped">—</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='1.89' x2='7.73' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.60' y1='8.91' x2='11.60' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='8.91' x2='23.19' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right"><img src="https://www.mlbstatic.com/team-logos/134.svg" style="height:12px;"></td>
<td class="gt_row gt_left">PIT</td>
<td class="gt_row gt_right">61</td>
<td class="gt_row gt_right">100</td>
<td class="gt_row gt_right">.379</td>
<td class="gt_row gt_right">1</td>
<td class="gt_row gt_right">26</td>
<td class="gt_row gt_right">—</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='1.89' x2='15.46' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='8.91' x2='23.19' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right gt_striped"><img src="https://www.mlbstatic.com/team-logos/120.svg" style="height:12px;"></td>
<td class="gt_row gt_left gt_striped">WSH</td>
<td class="gt_row gt_right gt_striped">55</td>
<td class="gt_row gt_right gt_striped">106</td>
<td class="gt_row gt_right gt_striped">.342</td>
<td class="gt_row gt_right gt_striped">1</td>
<td class="gt_row gt_right gt_striped">32</td>
<td class="gt_row gt_right gt_striped">—</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='8.91' x2='11.60' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='15.46' y1='1.89' x2='15.46' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='8.91' x2='23.19' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
  </tbody>
  
  
</table>
</div>

<div class = "standings">
<iframe src="/interactive/al_standings.html" width="100%" height="400"> 
</iframe>

<iframe src="/interactive/nl_standings.html" width="100%" height="400"> 
</iframe>
</div>

<p class="updated_time">Source: <a href="https://github.com/fivethirtyeight/data/tree/master/mlb-elo">FiveThirtyEight</a>. <a href="https://github.com/fivethirtyeight/data/blob/master/LICENSE">CC-BY-4.0 License</a>.</p> 


