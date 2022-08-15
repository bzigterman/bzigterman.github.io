---
layout: page
title: Baseball Standings
permalink: /projects/baseball
imageurl: https://bzigterman.com/plots/mlb_wild_card.png
---

<p class="updated_time"> Latest data: 06:46 PM CT, August 15</p> 

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

#division_standings_table .gt_two_val_uncert {
  display: inline-block;
  line-height: 1em;
  text-align: right;
  font-size: 60%;
  vertical-align: -0.25em;
  margin-left: 0.1em;
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

#division_standings_table .gt_slash_mark {
  font-size: 0.7em;
  line-height: 0.7em;
  vertical-align: 0.15em;
}

#division_standings_table .gt_fraction_numerator {
  font-size: 0.6em;
  line-height: 0.6em;
  vertical-align: 0.45em;
}

#division_standings_table .gt_fraction_denominator {
  font-size: 0.6em;
  line-height: 0.6em;
  vertical-align: -0.05em;
}
</style>
  <table class="gt_table">
  
  <thead class="gt_col_headings">
    <tr>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">Team</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">W</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">L</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">Pct</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">GB</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">Last 10 Games</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr class="gt_group_heading_row">
      <td colspan="7" class="gt_group_heading">AL Central</td>
    </tr>
    <tr class="gt_row_group_first"><td class="gt_row gt_right"><img src="https://www.mlbstatic.com/team-logos/114.svg" style="height:12px;"></td>
<td class="gt_row gt_left">CLE</td>
<td class="gt_row gt_right">62</td>
<td class="gt_row gt_right">53</td>
<td class="gt_row gt_right">.539</td>
<td class="gt_row gt_right">0.0</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='1.89' x2='7.73' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='1.89' x2='15.46' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right gt_striped"><img src="https://www.mlbstatic.com/team-logos/142.svg" style="height:12px;"></td>
<td class="gt_row gt_left gt_striped">MIN</td>
<td class="gt_row gt_right gt_striped">58</td>
<td class="gt_row gt_right gt_striped">55</td>
<td class="gt_row gt_right gt_striped">.513</td>
<td class="gt_row gt_right gt_striped">3.0</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='1.89' x2='15.46' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='8.91' x2='23.19' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right"><img src="https://www.mlbstatic.com/team-logos/145.svg" style="height:12px;"></td>
<td class="gt_row gt_left">CWS</td>
<td class="gt_row gt_right">59</td>
<td class="gt_row gt_right">56</td>
<td class="gt_row gt_right">.513</td>
<td class="gt_row gt_right">3.0</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='1.89' x2='15.46' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='8.91' x2='23.19' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right gt_striped"><img src="https://www.mlbstatic.com/team-logos/118.svg" style="height:12px;"></td>
<td class="gt_row gt_left gt_striped">KC </td>
<td class="gt_row gt_right gt_striped">48</td>
<td class="gt_row gt_right gt_striped">68</td>
<td class="gt_row gt_right gt_striped">.414</td>
<td class="gt_row gt_right gt_striped">14.5</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='1.89' x2='7.73' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right"><img src="https://www.mlbstatic.com/team-logos/116.svg" style="height:12px;"></td>
<td class="gt_row gt_left">DET</td>
<td class="gt_row gt_right">43</td>
<td class="gt_row gt_right">74</td>
<td class="gt_row gt_right">.368</td>
<td class="gt_row gt_right">20.0</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='1.89' x2='7.73' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.60' y1='8.91' x2='11.60' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='8.91' x2='23.19' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr class="gt_group_heading_row">
      <td colspan="7" class="gt_group_heading">AL East</td>
    </tr>
    <tr class="gt_row_group_first"><td class="gt_row gt_right gt_striped"><img src="https://www.mlbstatic.com/team-logos/147.svg" style="height:12px;"></td>
<td class="gt_row gt_left gt_striped">NYY</td>
<td class="gt_row gt_right gt_striped">72</td>
<td class="gt_row gt_right gt_striped">43</td>
<td class="gt_row gt_right gt_striped">.626</td>
<td class="gt_row gt_right gt_striped">0.0</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='8.91' x2='11.60' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='8.91' x2='23.19' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right"><img src="https://www.mlbstatic.com/team-logos/141.svg" style="height:12px;"></td>
<td class="gt_row gt_left">TOR</td>
<td class="gt_row gt_right">61</td>
<td class="gt_row gt_right">52</td>
<td class="gt_row gt_right">.540</td>
<td class="gt_row gt_right">10.0</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='1.89' x2='7.73' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.60' y1='8.91' x2='11.60' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='8.91' x2='23.19' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right gt_striped"><img src="https://www.mlbstatic.com/team-logos/139.svg" style="height:12px;"></td>
<td class="gt_row gt_left gt_striped">TB </td>
<td class="gt_row gt_right gt_striped">60</td>
<td class="gt_row gt_right gt_striped">53</td>
<td class="gt_row gt_right gt_striped">.531</td>
<td class="gt_row gt_right gt_striped">11.0</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='1.89' x2='7.73' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='8.91' x2='23.19' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right"><img src="https://www.mlbstatic.com/team-logos/110.svg" style="height:12px;"></td>
<td class="gt_row gt_left">BAL</td>
<td class="gt_row gt_right">59</td>
<td class="gt_row gt_right">55</td>
<td class="gt_row gt_right">.518</td>
<td class="gt_row gt_right">12.5</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='1.89' x2='7.73' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right gt_striped"><img src="https://www.mlbstatic.com/team-logos/111.svg" style="height:12px;"></td>
<td class="gt_row gt_left gt_striped">BOS</td>
<td class="gt_row gt_right gt_striped">57</td>
<td class="gt_row gt_right gt_striped">59</td>
<td class="gt_row gt_right gt_striped">.491</td>
<td class="gt_row gt_right gt_striped">15.5</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='1.89' x2='7.73' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.60' y1='8.91' x2='11.60' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='8.91' x2='23.19' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr class="gt_group_heading_row">
      <td colspan="7" class="gt_group_heading">AL West</td>
    </tr>
    <tr class="gt_row_group_first"><td class="gt_row gt_right"><img src="https://www.mlbstatic.com/team-logos/117.svg" style="height:12px;"></td>
<td class="gt_row gt_left">HOU</td>
<td class="gt_row gt_right">75</td>
<td class="gt_row gt_right">41</td>
<td class="gt_row gt_right">.647</td>
<td class="gt_row gt_right">0.0</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='1.89' x2='7.73' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.60' y1='8.91' x2='11.60' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='8.91' x2='23.19' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right gt_striped"><img src="https://www.mlbstatic.com/team-logos/136.svg" style="height:12px;"></td>
<td class="gt_row gt_left gt_striped">SEA</td>
<td class="gt_row gt_right gt_striped">62</td>
<td class="gt_row gt_right gt_striped">54</td>
<td class="gt_row gt_right gt_striped">.534</td>
<td class="gt_row gt_right gt_striped">13.0</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='1.89' x2='15.46' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right"><img src="https://www.mlbstatic.com/team-logos/140.svg" style="height:12px;"></td>
<td class="gt_row gt_left">TEX</td>
<td class="gt_row gt_right">51</td>
<td class="gt_row gt_right">63</td>
<td class="gt_row gt_right">.447</td>
<td class="gt_row gt_right">23.0</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right gt_striped"><img src="https://www.mlbstatic.com/team-logos/108.svg" style="height:12px;"></td>
<td class="gt_row gt_left gt_striped">LAA</td>
<td class="gt_row gt_right gt_striped">51</td>
<td class="gt_row gt_right gt_striped">64</td>
<td class="gt_row gt_right gt_striped">.443</td>
<td class="gt_row gt_right gt_striped">23.5</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='1.89' x2='7.73' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.60' y1='8.91' x2='11.60' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right"><img src="https://www.mlbstatic.com/team-logos/133.svg" style="height:12px;"></td>
<td class="gt_row gt_left">OAK</td>
<td class="gt_row gt_right">41</td>
<td class="gt_row gt_right">74</td>
<td class="gt_row gt_right">.357</td>
<td class="gt_row gt_right">33.5</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='1.89' x2='7.73' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.60' y1='8.91' x2='11.60' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='8.91' x2='23.19' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr class="gt_group_heading_row">
      <td colspan="7" class="gt_group_heading">NL Central</td>
    </tr>
    <tr class="gt_row_group_first"><td class="gt_row gt_right gt_striped"><img src="https://www.mlbstatic.com/team-logos/138.svg" style="height:12px;"></td>
<td class="gt_row gt_left gt_striped">STL</td>
<td class="gt_row gt_right gt_striped">63</td>
<td class="gt_row gt_right gt_striped">51</td>
<td class="gt_row gt_right gt_striped">.553</td>
<td class="gt_row gt_right gt_striped">0.0</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='1.89' x2='7.73' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='1.89' x2='15.46' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right"><img src="https://www.mlbstatic.com/team-logos/158.svg" style="height:12px;"></td>
<td class="gt_row gt_left">MIL</td>
<td class="gt_row gt_right">61</td>
<td class="gt_row gt_right">52</td>
<td class="gt_row gt_right">.540</td>
<td class="gt_row gt_right">1.5</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right gt_striped"><img src="https://www.mlbstatic.com/team-logos/112.svg" style="height:12px;"></td>
<td class="gt_row gt_left gt_striped">CHC</td>
<td class="gt_row gt_right gt_striped">47</td>
<td class="gt_row gt_right gt_striped">66</td>
<td class="gt_row gt_right gt_striped">.416</td>
<td class="gt_row gt_right gt_striped">15.5</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='1.89' x2='7.73' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='8.91' x2='23.19' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right"><img src="https://www.mlbstatic.com/team-logos/113.svg" style="height:12px;"></td>
<td class="gt_row gt_left">CIN</td>
<td class="gt_row gt_right">45</td>
<td class="gt_row gt_right">68</td>
<td class="gt_row gt_right">.398</td>
<td class="gt_row gt_right">17.5</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='1.89' x2='15.46' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='8.91' x2='23.19' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right gt_striped"><img src="https://www.mlbstatic.com/team-logos/134.svg" style="height:12px;"></td>
<td class="gt_row gt_left gt_striped">PIT</td>
<td class="gt_row gt_right gt_striped">45</td>
<td class="gt_row gt_right gt_striped">70</td>
<td class="gt_row gt_right gt_striped">.391</td>
<td class="gt_row gt_right gt_striped">18.5</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr class="gt_group_heading_row">
      <td colspan="7" class="gt_group_heading">NL East</td>
    </tr>
    <tr class="gt_row_group_first"><td class="gt_row gt_right"><img src="https://www.mlbstatic.com/team-logos/121.svg" style="height:12px;"></td>
<td class="gt_row gt_left">NYM</td>
<td class="gt_row gt_right">75</td>
<td class="gt_row gt_right">40</td>
<td class="gt_row gt_right">.652</td>
<td class="gt_row gt_right">0.0</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='1.89' x2='7.73' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='1.89' x2='15.46' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right gt_striped"><img src="https://www.mlbstatic.com/team-logos/144.svg" style="height:12px;"></td>
<td class="gt_row gt_left gt_striped">ATL</td>
<td class="gt_row gt_right gt_striped">70</td>
<td class="gt_row gt_right gt_striped">46</td>
<td class="gt_row gt_right gt_striped">.603</td>
<td class="gt_row gt_right gt_striped">5.5</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='8.91' x2='11.60' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right"><img src="https://www.mlbstatic.com/team-logos/143.svg" style="height:12px;"></td>
<td class="gt_row gt_left">PHI</td>
<td class="gt_row gt_right">63</td>
<td class="gt_row gt_right">51</td>
<td class="gt_row gt_right">.553</td>
<td class="gt_row gt_right">11.5</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='1.89' x2='7.73' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='1.89' x2='15.46' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right gt_striped"><img src="https://www.mlbstatic.com/team-logos/146.svg" style="height:12px;"></td>
<td class="gt_row gt_left gt_striped">MIA</td>
<td class="gt_row gt_right gt_striped">50</td>
<td class="gt_row gt_right gt_striped">65</td>
<td class="gt_row gt_right gt_striped">.435</td>
<td class="gt_row gt_right gt_striped">25.0</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right"><img src="https://www.mlbstatic.com/team-logos/120.svg" style="height:12px;"></td>
<td class="gt_row gt_left">WSH</td>
<td class="gt_row gt_right">38</td>
<td class="gt_row gt_right">78</td>
<td class="gt_row gt_right">.328</td>
<td class="gt_row gt_right">37.5</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='8.91' x2='11.60' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr class="gt_group_heading_row">
      <td colspan="7" class="gt_group_heading">NL West</td>
    </tr>
    <tr class="gt_row_group_first"><td class="gt_row gt_right gt_striped"><img src="https://www.mlbstatic.com/team-logos/119.svg" style="height:12px;"></td>
<td class="gt_row gt_left gt_striped">LAD</td>
<td class="gt_row gt_right gt_striped">79</td>
<td class="gt_row gt_right gt_striped">34</td>
<td class="gt_row gt_right gt_striped">.699</td>
<td class="gt_row gt_right gt_striped">0.0</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='1.89' x2='7.73' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='1.89' x2='15.46' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right"><img src="https://www.mlbstatic.com/team-logos/135.svg" style="height:12px;"></td>
<td class="gt_row gt_left">SD </td>
<td class="gt_row gt_right">65</td>
<td class="gt_row gt_right">52</td>
<td class="gt_row gt_right">.556</td>
<td class="gt_row gt_right">16.0</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='8.91' x2='11.60' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right gt_striped"><img src="https://www.mlbstatic.com/team-logos/137.svg" style="height:12px;"></td>
<td class="gt_row gt_left gt_striped">SF </td>
<td class="gt_row gt_right gt_striped">57</td>
<td class="gt_row gt_right gt_striped">57</td>
<td class="gt_row gt_right gt_striped">.500</td>
<td class="gt_row gt_right gt_striped">22.5</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='1.89' x2='15.46' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='8.91' x2='23.19' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right"><img src="https://www.mlbstatic.com/team-logos/109.svg" style="height:12px;"></td>
<td class="gt_row gt_left">ARI</td>
<td class="gt_row gt_right">53</td>
<td class="gt_row gt_right">61</td>
<td class="gt_row gt_right">.465</td>
<td class="gt_row gt_right">26.5</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='1.89' x2='15.46' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='8.91' x2='23.19' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right gt_striped"><img src="https://www.mlbstatic.com/team-logos/115.svg" style="height:12px;"></td>
<td class="gt_row gt_left gt_striped">COL</td>
<td class="gt_row gt_right gt_striped">51</td>
<td class="gt_row gt_right gt_striped">66</td>
<td class="gt_row gt_right gt_striped">.436</td>
<td class="gt_row gt_right gt_striped">30.0</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='8.91' x2='23.19' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
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

#wild_card_standings_table .gt_two_val_uncert {
  display: inline-block;
  line-height: 1em;
  text-align: right;
  font-size: 60%;
  vertical-align: -0.25em;
  margin-left: 0.1em;
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

#wild_card_standings_table .gt_slash_mark {
  font-size: 0.7em;
  line-height: 0.7em;
  vertical-align: 0.15em;
}

#wild_card_standings_table .gt_fraction_numerator {
  font-size: 0.6em;
  line-height: 0.6em;
  vertical-align: 0.45em;
}

#wild_card_standings_table .gt_fraction_denominator {
  font-size: 0.6em;
  line-height: 0.6em;
  vertical-align: -0.05em;
}
</style>
  <table class="gt_table">
  
  <thead class="gt_col_headings">
    <tr>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1"></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1">Team</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">W</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">L</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">Pct</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">GB</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">Last 10 Games</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr class="gt_group_heading_row">
      <td colspan="7" class="gt_group_heading">AL</td>
    </tr>
    <tr class="gt_row_group_first"><td class="gt_row gt_right"><img src="https://www.mlbstatic.com/team-logos/117.svg" style="height:12px;"></td>
<td class="gt_row gt_left">HOU</td>
<td class="gt_row gt_right">75</td>
<td class="gt_row gt_right">41</td>
<td class="gt_row gt_right">.647</td>
<td class="gt_row gt_right">W</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='1.89' x2='7.73' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.60' y1='8.91' x2='11.60' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='8.91' x2='23.19' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right gt_striped"><img src="https://www.mlbstatic.com/team-logos/147.svg" style="height:12px;"></td>
<td class="gt_row gt_left gt_striped">NYY</td>
<td class="gt_row gt_right gt_striped">72</td>
<td class="gt_row gt_right gt_striped">43</td>
<td class="gt_row gt_right gt_striped">.626</td>
<td class="gt_row gt_right gt_striped">E</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='8.91' x2='11.60' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='8.91' x2='23.19' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right"><img src="https://www.mlbstatic.com/team-logos/141.svg" style="height:12px;"></td>
<td class="gt_row gt_left">TOR</td>
<td class="gt_row gt_right">61</td>
<td class="gt_row gt_right">52</td>
<td class="gt_row gt_right">.540</td>
<td class="gt_row gt_right">-0.5</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='1.89' x2='7.73' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.60' y1='8.91' x2='11.60' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='8.91' x2='23.19' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right gt_striped"><img src="https://www.mlbstatic.com/team-logos/114.svg" style="height:12px;"></td>
<td class="gt_row gt_left gt_striped">CLE</td>
<td class="gt_row gt_right gt_striped">62</td>
<td class="gt_row gt_right gt_striped">53</td>
<td class="gt_row gt_right gt_striped">.539</td>
<td class="gt_row gt_right gt_striped">C</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='1.89' x2='7.73' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='1.89' x2='15.46' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right"><img src="https://www.mlbstatic.com/team-logos/136.svg" style="height:12px;"></td>
<td class="gt_row gt_left">SEA</td>
<td class="gt_row gt_right">62</td>
<td class="gt_row gt_right">54</td>
<td class="gt_row gt_right">.534</td>
<td class="gt_row gt_right">0</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='1.89' x2='15.46' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right gt_striped"><img src="https://www.mlbstatic.com/team-logos/139.svg" style="height:12px;"></td>
<td class="gt_row gt_left gt_striped">TB </td>
<td class="gt_row gt_right gt_striped">60</td>
<td class="gt_row gt_right gt_striped">53</td>
<td class="gt_row gt_right gt_striped">.531</td>
<td class="gt_row gt_right gt_striped">0.5</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='1.89' x2='7.73' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='8.91' x2='23.19' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right"><img src="https://www.mlbstatic.com/team-logos/110.svg" style="height:12px;"></td>
<td class="gt_row gt_left">BAL</td>
<td class="gt_row gt_right">59</td>
<td class="gt_row gt_right">55</td>
<td class="gt_row gt_right">.518</td>
<td class="gt_row gt_right">2</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='1.89' x2='7.73' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right gt_striped"><img src="https://www.mlbstatic.com/team-logos/142.svg" style="height:12px;"></td>
<td class="gt_row gt_left gt_striped">MIN</td>
<td class="gt_row gt_right gt_striped">58</td>
<td class="gt_row gt_right gt_striped">55</td>
<td class="gt_row gt_right gt_striped">.513</td>
<td class="gt_row gt_right gt_striped">2.5</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='1.89' x2='15.46' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='8.91' x2='23.19' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right"><img src="https://www.mlbstatic.com/team-logos/145.svg" style="height:12px;"></td>
<td class="gt_row gt_left">CWS</td>
<td class="gt_row gt_right">59</td>
<td class="gt_row gt_right">56</td>
<td class="gt_row gt_right">.513</td>
<td class="gt_row gt_right">2.5</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='1.89' x2='15.46' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='8.91' x2='23.19' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right gt_striped"><img src="https://www.mlbstatic.com/team-logos/111.svg" style="height:12px;"></td>
<td class="gt_row gt_left gt_striped">BOS</td>
<td class="gt_row gt_right gt_striped">57</td>
<td class="gt_row gt_right gt_striped">59</td>
<td class="gt_row gt_right gt_striped">.491</td>
<td class="gt_row gt_right gt_striped">5</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='1.89' x2='7.73' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.60' y1='8.91' x2='11.60' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='8.91' x2='23.19' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right"><img src="https://www.mlbstatic.com/team-logos/140.svg" style="height:12px;"></td>
<td class="gt_row gt_left">TEX</td>
<td class="gt_row gt_right">51</td>
<td class="gt_row gt_right">63</td>
<td class="gt_row gt_right">.447</td>
<td class="gt_row gt_right">10</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right gt_striped"><img src="https://www.mlbstatic.com/team-logos/108.svg" style="height:12px;"></td>
<td class="gt_row gt_left gt_striped">LAA</td>
<td class="gt_row gt_right gt_striped">51</td>
<td class="gt_row gt_right gt_striped">64</td>
<td class="gt_row gt_right gt_striped">.443</td>
<td class="gt_row gt_right gt_striped">10.5</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='1.89' x2='7.73' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.60' y1='8.91' x2='11.60' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right"><img src="https://www.mlbstatic.com/team-logos/118.svg" style="height:12px;"></td>
<td class="gt_row gt_left">KC </td>
<td class="gt_row gt_right">48</td>
<td class="gt_row gt_right">68</td>
<td class="gt_row gt_right">.414</td>
<td class="gt_row gt_right">14</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='1.89' x2='7.73' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right gt_striped"><img src="https://www.mlbstatic.com/team-logos/116.svg" style="height:12px;"></td>
<td class="gt_row gt_left gt_striped">DET</td>
<td class="gt_row gt_right gt_striped">43</td>
<td class="gt_row gt_right gt_striped">74</td>
<td class="gt_row gt_right gt_striped">.368</td>
<td class="gt_row gt_right gt_striped">19.5</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='1.89' x2='7.73' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.60' y1='8.91' x2='11.60' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='8.91' x2='23.19' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right"><img src="https://www.mlbstatic.com/team-logos/133.svg" style="height:12px;"></td>
<td class="gt_row gt_left">OAK</td>
<td class="gt_row gt_right">41</td>
<td class="gt_row gt_right">74</td>
<td class="gt_row gt_right">.357</td>
<td class="gt_row gt_right">20.5</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='1.89' x2='7.73' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.60' y1='8.91' x2='11.60' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='8.91' x2='23.19' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr class="gt_group_heading_row">
      <td colspan="7" class="gt_group_heading">NL</td>
    </tr>
    <tr class="gt_row_group_first"><td class="gt_row gt_right gt_striped"><img src="https://www.mlbstatic.com/team-logos/119.svg" style="height:12px;"></td>
<td class="gt_row gt_left gt_striped">LAD</td>
<td class="gt_row gt_right gt_striped">79</td>
<td class="gt_row gt_right gt_striped">34</td>
<td class="gt_row gt_right gt_striped">.699</td>
<td class="gt_row gt_right gt_striped">W</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='1.89' x2='7.73' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='1.89' x2='15.46' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right"><img src="https://www.mlbstatic.com/team-logos/121.svg" style="height:12px;"></td>
<td class="gt_row gt_left">NYM</td>
<td class="gt_row gt_right">75</td>
<td class="gt_row gt_right">40</td>
<td class="gt_row gt_right">.652</td>
<td class="gt_row gt_right">E</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='1.89' x2='7.73' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='1.89' x2='15.46' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right gt_striped"><img src="https://www.mlbstatic.com/team-logos/144.svg" style="height:12px;"></td>
<td class="gt_row gt_left gt_striped">ATL</td>
<td class="gt_row gt_right gt_striped">70</td>
<td class="gt_row gt_right gt_striped">46</td>
<td class="gt_row gt_right gt_striped">.603</td>
<td class="gt_row gt_right gt_striped">-5.5</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='8.91' x2='11.60' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right"><img src="https://www.mlbstatic.com/team-logos/135.svg" style="height:12px;"></td>
<td class="gt_row gt_left">SD </td>
<td class="gt_row gt_right">65</td>
<td class="gt_row gt_right">52</td>
<td class="gt_row gt_right">.556</td>
<td class="gt_row gt_right">0</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='8.91' x2='11.60' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right gt_striped"><img src="https://www.mlbstatic.com/team-logos/138.svg" style="height:12px;"></td>
<td class="gt_row gt_left gt_striped">STL</td>
<td class="gt_row gt_right gt_striped">63</td>
<td class="gt_row gt_right gt_striped">51</td>
<td class="gt_row gt_right gt_striped">.553</td>
<td class="gt_row gt_right gt_striped">C</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='1.89' x2='7.73' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='1.89' x2='15.46' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right"><img src="https://www.mlbstatic.com/team-logos/143.svg" style="height:12px;"></td>
<td class="gt_row gt_left">PHI</td>
<td class="gt_row gt_right">63</td>
<td class="gt_row gt_right">51</td>
<td class="gt_row gt_right">.553</td>
<td class="gt_row gt_right">0.5</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='1.89' x2='7.73' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='1.89' x2='15.46' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right gt_striped"><img src="https://www.mlbstatic.com/team-logos/158.svg" style="height:12px;"></td>
<td class="gt_row gt_left gt_striped">MIL</td>
<td class="gt_row gt_right gt_striped">61</td>
<td class="gt_row gt_right gt_striped">52</td>
<td class="gt_row gt_right gt_striped">.540</td>
<td class="gt_row gt_right gt_striped">2</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right"><img src="https://www.mlbstatic.com/team-logos/137.svg" style="height:12px;"></td>
<td class="gt_row gt_left">SF </td>
<td class="gt_row gt_right">57</td>
<td class="gt_row gt_right">57</td>
<td class="gt_row gt_right">.500</td>
<td class="gt_row gt_right">6.5</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='1.89' x2='15.46' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='8.91' x2='23.19' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right gt_striped"><img src="https://www.mlbstatic.com/team-logos/109.svg" style="height:12px;"></td>
<td class="gt_row gt_left gt_striped">ARI</td>
<td class="gt_row gt_right gt_striped">53</td>
<td class="gt_row gt_right gt_striped">61</td>
<td class="gt_row gt_right gt_striped">.465</td>
<td class="gt_row gt_right gt_striped">10.5</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='1.89' x2='15.46' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='8.91' x2='23.19' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right"><img src="https://www.mlbstatic.com/team-logos/115.svg" style="height:12px;"></td>
<td class="gt_row gt_left">COL</td>
<td class="gt_row gt_right">51</td>
<td class="gt_row gt_right">66</td>
<td class="gt_row gt_right">.436</td>
<td class="gt_row gt_right">14</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='8.91' x2='23.19' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right gt_striped"><img src="https://www.mlbstatic.com/team-logos/146.svg" style="height:12px;"></td>
<td class="gt_row gt_left gt_striped">MIA</td>
<td class="gt_row gt_right gt_striped">50</td>
<td class="gt_row gt_right gt_striped">65</td>
<td class="gt_row gt_right gt_striped">.435</td>
<td class="gt_row gt_right gt_striped">14</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right"><img src="https://www.mlbstatic.com/team-logos/112.svg" style="height:12px;"></td>
<td class="gt_row gt_left">CHC</td>
<td class="gt_row gt_right">47</td>
<td class="gt_row gt_right">66</td>
<td class="gt_row gt_right">.416</td>
<td class="gt_row gt_right">16</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='1.89' x2='7.73' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='8.91' x2='23.19' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right gt_striped"><img src="https://www.mlbstatic.com/team-logos/113.svg" style="height:12px;"></td>
<td class="gt_row gt_left gt_striped">CIN</td>
<td class="gt_row gt_right gt_striped">45</td>
<td class="gt_row gt_right gt_striped">68</td>
<td class="gt_row gt_right gt_striped">.398</td>
<td class="gt_row gt_right gt_striped">18</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='1.89' x2='15.46' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='8.91' x2='23.19' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right"><img src="https://www.mlbstatic.com/team-logos/134.svg" style="height:12px;"></td>
<td class="gt_row gt_left">PIT</td>
<td class="gt_row gt_right">45</td>
<td class="gt_row gt_right">70</td>
<td class="gt_row gt_right">.391</td>
<td class="gt_row gt_right">19</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right gt_striped"><img src="https://www.mlbstatic.com/team-logos/120.svg" style="height:12px;"></td>
<td class="gt_row gt_left gt_striped">WSH</td>
<td class="gt_row gt_right gt_striped">38</td>
<td class="gt_row gt_right gt_striped">78</td>
<td class="gt_row gt_right gt_striped">.328</td>
<td class="gt_row gt_right gt_striped">26.5</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='8.91' x2='11.60' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
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


