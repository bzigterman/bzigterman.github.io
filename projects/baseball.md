---
layout: page
title: Baseball Standings
permalink: /projects/baseball
imageurl: https://bzigterman.com/plots/mlb_wild_card.png
---

<p class="updated_time"> Latest data: 12:04 AM CT, May 06</p> 

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

<div id="division_standings_table" style="padding-left:0px;padding-right:0px;padding-top:10px;padding-bottom:10px;overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
  <style>@import url("https://fonts.googleapis.com/css2?family=Lato:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap");
#division_standings_table table {
  font-family: Lato, system-ui, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji';
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}

#division_standings_table thead, #division_standings_table tbody, #division_standings_table tfoot, #division_standings_table tr, #division_standings_table td, #division_standings_table th {
  border-style: none;
}

#division_standings_table p {
  margin: 0;
  padding: 0;
}

#division_standings_table .gt_table {
  display: table;
  border-collapse: collapse;
  line-height: normal;
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

#division_standings_table .gt_caption {
  padding-top: 4px;
  padding-bottom: 4px;
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
  padding-top: 3px;
  padding-bottom: 5px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
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

#division_standings_table .gt_spanner_row {
  border-bottom-style: hidden;
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
  text-align: left;
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

#division_standings_table .gt_row_group_first th {
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

#division_standings_table .gt_last_grand_summary_row_top {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: double;
  border-bottom-width: 6px;
  border-bottom-color: #D3D3D3;
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
  padding-top: 4px;
  padding-bottom: 4px;
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
  font-size: 75%;
  vertical-align: 0.4em;
  position: initial;
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
  <table class="gt_table" data-quarto-disable-processing="false" data-quarto-bootstrap="false">
  <thead>
    
    <tr class="gt_col_headings">
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id=""></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="Team">Team</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="W">W</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="L">L</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Pct">Pct</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="GR">GR</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="GB">GB</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="M#&lt;br&gt;/E#">M#<br>/E#</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Last 10 Games">Last 10 Games</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr class="gt_group_heading_row">
      <th colspan="9" class="gt_group_heading" scope="colgroup" id="AL Central">AL Central</th>
    </tr>
    <tr class="gt_row_group_first"><td headers="AL Central  logo_url" class="gt_row gt_right"><img src="https://www.mlbstatic.com/team-logos/142.svg" style="height:12px;"></td>
<td headers="AL Central  team_label" class="gt_row gt_left">MIN</td>
<td headers="AL Central  wins" class="gt_row gt_right">19</td>
<td headers="AL Central  losses" class="gt_row gt_right">14</td>
<td headers="AL Central  win_pct_text" class="gt_row gt_right">.576</td>
<td headers="AL Central  games_remaining" class="gt_row gt_right">129</td>
<td headers="AL Central  division_games_behind" class="gt_row gt_right">0.0</td>
<td headers="AL Central  division_magic_or_eliminated" class="gt_row gt_right">127</td>
<td headers="AL Central  outcomes" class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='1.89' x2='15.46' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td headers="AL Central  logo_url" class="gt_row gt_right gt_striped"><img src="https://www.mlbstatic.com/team-logos/116.svg" style="height:12px;"></td>
<td headers="AL Central  team_label" class="gt_row gt_left gt_striped">DET</td>
<td headers="AL Central  wins" class="gt_row gt_right gt_striped">14</td>
<td headers="AL Central  losses" class="gt_row gt_right gt_striped">17</td>
<td headers="AL Central  win_pct_text" class="gt_row gt_right gt_striped">.452</td>
<td headers="AL Central  games_remaining" class="gt_row gt_right gt_striped">131</td>
<td headers="AL Central  division_games_behind" class="gt_row gt_right gt_striped">4.0</td>
<td headers="AL Central  division_magic_or_eliminated" class="gt_row gt_right gt_striped">127</td>
<td headers="AL Central  outcomes" class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='8.91' x2='11.60' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='8.91' x2='23.19' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td headers="AL Central  logo_url" class="gt_row gt_right"><img src="https://www.mlbstatic.com/team-logos/114.svg" style="height:12px;"></td>
<td headers="AL Central  team_label" class="gt_row gt_left">CLE</td>
<td headers="AL Central  wins" class="gt_row gt_right">14</td>
<td headers="AL Central  losses" class="gt_row gt_right">18</td>
<td headers="AL Central  win_pct_text" class="gt_row gt_right">.438</td>
<td headers="AL Central  games_remaining" class="gt_row gt_right">130</td>
<td headers="AL Central  division_games_behind" class="gt_row gt_right">4.5</td>
<td headers="AL Central  division_magic_or_eliminated" class="gt_row gt_right">126</td>
<td headers="AL Central  outcomes" class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='1.89' x2='15.46' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='8.91' x2='23.19' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td headers="AL Central  logo_url" class="gt_row gt_right gt_striped"><img src="https://www.mlbstatic.com/team-logos/145.svg" style="height:12px;"></td>
<td headers="AL Central  team_label" class="gt_row gt_left gt_striped">CWS</td>
<td headers="AL Central  wins" class="gt_row gt_right gt_striped">11</td>
<td headers="AL Central  losses" class="gt_row gt_right gt_striped">22</td>
<td headers="AL Central  win_pct_text" class="gt_row gt_right gt_striped">.333</td>
<td headers="AL Central  games_remaining" class="gt_row gt_right gt_striped">129</td>
<td headers="AL Central  division_games_behind" class="gt_row gt_right gt_striped">8.0</td>
<td headers="AL Central  division_magic_or_eliminated" class="gt_row gt_right gt_striped">122</td>
<td headers="AL Central  outcomes" class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='8.91' x2='11.60' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td headers="AL Central  logo_url" class="gt_row gt_right"><img src="https://www.mlbstatic.com/team-logos/118.svg" style="height:12px;"></td>
<td headers="AL Central  team_label" class="gt_row gt_left">KC </td>
<td headers="AL Central  wins" class="gt_row gt_right">8</td>
<td headers="AL Central  losses" class="gt_row gt_right">25</td>
<td headers="AL Central  win_pct_text" class="gt_row gt_right">.242</td>
<td headers="AL Central  games_remaining" class="gt_row gt_right">129</td>
<td headers="AL Central  division_games_behind" class="gt_row gt_right">11.0</td>
<td headers="AL Central  division_magic_or_eliminated" class="gt_row gt_right">119</td>
<td headers="AL Central  outcomes" class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='8.91' x2='11.60' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='8.91' x2='23.19' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr class="gt_group_heading_row">
      <th colspan="9" class="gt_group_heading" scope="colgroup" id="AL East">AL East</th>
    </tr>
    <tr class="gt_row_group_first"><td headers="AL East  logo_url" class="gt_row gt_right gt_striped"><img src="https://www.mlbstatic.com/team-logos/139.svg" style="height:12px;"></td>
<td headers="AL East  team_label" class="gt_row gt_left gt_striped">TB </td>
<td headers="AL East  wins" class="gt_row gt_right gt_striped">27</td>
<td headers="AL East  losses" class="gt_row gt_right gt_striped">6</td>
<td headers="AL East  win_pct_text" class="gt_row gt_right gt_striped">.818</td>
<td headers="AL East  games_remaining" class="gt_row gt_right gt_striped">129</td>
<td headers="AL East  division_games_behind" class="gt_row gt_right gt_striped">0.0</td>
<td headers="AL East  division_magic_or_eliminated" class="gt_row gt_right gt_striped">126</td>
<td headers="AL East  outcomes" class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='1.89' x2='15.46' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='8.91' x2='23.19' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td headers="AL East  logo_url" class="gt_row gt_right"><img src="https://www.mlbstatic.com/team-logos/110.svg" style="height:12px;"></td>
<td headers="AL East  team_label" class="gt_row gt_left">BAL</td>
<td headers="AL East  wins" class="gt_row gt_right">22</td>
<td headers="AL East  losses" class="gt_row gt_right">10</td>
<td headers="AL East  win_pct_text" class="gt_row gt_right">.688</td>
<td headers="AL East  games_remaining" class="gt_row gt_right">130</td>
<td headers="AL East  division_games_behind" class="gt_row gt_right">4.5</td>
<td headers="AL East  division_magic_or_eliminated" class="gt_row gt_right">126</td>
<td headers="AL East  outcomes" class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='1.89' x2='7.73' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='1.89' x2='15.46' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td headers="AL East  logo_url" class="gt_row gt_right gt_striped"><img src="https://www.mlbstatic.com/team-logos/111.svg" style="height:12px;"></td>
<td headers="AL East  team_label" class="gt_row gt_left gt_striped">BOS</td>
<td headers="AL East  wins" class="gt_row gt_right gt_striped">20</td>
<td headers="AL East  losses" class="gt_row gt_right gt_striped">14</td>
<td headers="AL East  win_pct_text" class="gt_row gt_right gt_striped">.588</td>
<td headers="AL East  games_remaining" class="gt_row gt_right gt_striped">128</td>
<td headers="AL East  division_games_behind" class="gt_row gt_right gt_striped">7.5</td>
<td headers="AL East  division_magic_or_eliminated" class="gt_row gt_right gt_striped">122</td>
<td headers="AL East  outcomes" class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='8.91' x2='11.60' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='15.46' y1='1.89' x2='15.46' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td headers="AL East  logo_url" class="gt_row gt_right"><img src="https://www.mlbstatic.com/team-logos/141.svg" style="height:12px;"></td>
<td headers="AL East  team_label" class="gt_row gt_left">TOR</td>
<td headers="AL East  wins" class="gt_row gt_right">19</td>
<td headers="AL East  losses" class="gt_row gt_right">14</td>
<td headers="AL East  win_pct_text" class="gt_row gt_right">.576</td>
<td headers="AL East  games_remaining" class="gt_row gt_right">129</td>
<td headers="AL East  division_games_behind" class="gt_row gt_right">8.0</td>
<td headers="AL East  division_magic_or_eliminated" class="gt_row gt_right">122</td>
<td headers="AL East  outcomes" class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='1.89' x2='7.73' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='1.89' x2='15.46' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='8.91' x2='23.19' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td headers="AL East  logo_url" class="gt_row gt_right gt_striped"><img src="https://www.mlbstatic.com/team-logos/147.svg" style="height:12px;"></td>
<td headers="AL East  team_label" class="gt_row gt_left gt_striped">NYY</td>
<td headers="AL East  wins" class="gt_row gt_right gt_striped">17</td>
<td headers="AL East  losses" class="gt_row gt_right gt_striped">16</td>
<td headers="AL East  win_pct_text" class="gt_row gt_right gt_striped">.515</td>
<td headers="AL East  games_remaining" class="gt_row gt_right gt_striped">129</td>
<td headers="AL East  division_games_behind" class="gt_row gt_right gt_striped">10.0</td>
<td headers="AL East  division_magic_or_eliminated" class="gt_row gt_right gt_striped">120</td>
<td headers="AL East  outcomes" class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='1.89' x2='7.73' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='8.91' x2='23.19' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr class="gt_group_heading_row">
      <th colspan="9" class="gt_group_heading" scope="colgroup" id="AL West">AL West</th>
    </tr>
    <tr class="gt_row_group_first"><td headers="AL West  logo_url" class="gt_row gt_right"><img src="https://www.mlbstatic.com/team-logos/140.svg" style="height:12px;"></td>
<td headers="AL West  team_label" class="gt_row gt_left">TEX</td>
<td headers="AL West  wins" class="gt_row gt_right">18</td>
<td headers="AL West  losses" class="gt_row gt_right">13</td>
<td headers="AL West  win_pct_text" class="gt_row gt_right">.581</td>
<td headers="AL West  games_remaining" class="gt_row gt_right">131</td>
<td headers="AL West  division_games_behind" class="gt_row gt_right">0.0</td>
<td headers="AL West  division_magic_or_eliminated" class="gt_row gt_right">131</td>
<td headers="AL West  outcomes" class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='8.91' x2='11.60' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td headers="AL West  logo_url" class="gt_row gt_right gt_striped"><img src="https://www.mlbstatic.com/team-logos/108.svg" style="height:12px;"></td>
<td headers="AL West  team_label" class="gt_row gt_left gt_striped">LAA</td>
<td headers="AL West  wins" class="gt_row gt_right gt_striped">19</td>
<td headers="AL West  losses" class="gt_row gt_right gt_striped">14</td>
<td headers="AL West  win_pct_text" class="gt_row gt_right gt_striped">.576</td>
<td headers="AL West  games_remaining" class="gt_row gt_right gt_striped">129</td>
<td headers="AL West  division_games_behind" class="gt_row gt_right gt_striped">0.0</td>
<td headers="AL West  division_magic_or_eliminated" class="gt_row gt_right gt_striped">131</td>
<td headers="AL West  outcomes" class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='1.89' x2='7.73' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td headers="AL West  logo_url" class="gt_row gt_right"><img src="https://www.mlbstatic.com/team-logos/117.svg" style="height:12px;"></td>
<td headers="AL West  team_label" class="gt_row gt_left">HOU</td>
<td headers="AL West  wins" class="gt_row gt_right">17</td>
<td headers="AL West  losses" class="gt_row gt_right">15</td>
<td headers="AL West  win_pct_text" class="gt_row gt_right">.531</td>
<td headers="AL West  games_remaining" class="gt_row gt_right">130</td>
<td headers="AL West  division_games_behind" class="gt_row gt_right">1.5</td>
<td headers="AL West  division_magic_or_eliminated" class="gt_row gt_right">130</td>
<td headers="AL West  outcomes" class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='1.89' x2='7.73' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td headers="AL West  logo_url" class="gt_row gt_right gt_striped"><img src="https://www.mlbstatic.com/team-logos/136.svg" style="height:12px;"></td>
<td headers="AL West  team_label" class="gt_row gt_left gt_striped">SEA</td>
<td headers="AL West  wins" class="gt_row gt_right gt_striped">15</td>
<td headers="AL West  losses" class="gt_row gt_right gt_striped">17</td>
<td headers="AL West  win_pct_text" class="gt_row gt_right gt_striped">.469</td>
<td headers="AL West  games_remaining" class="gt_row gt_right gt_striped">130</td>
<td headers="AL West  division_games_behind" class="gt_row gt_right gt_striped">3.5</td>
<td headers="AL West  division_magic_or_eliminated" class="gt_row gt_right gt_striped">128</td>
<td headers="AL West  outcomes" class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='8.91' x2='11.60' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td headers="AL West  logo_url" class="gt_row gt_right"><img src="https://www.mlbstatic.com/team-logos/133.svg" style="height:12px;"></td>
<td headers="AL West  team_label" class="gt_row gt_left">OAK</td>
<td headers="AL West  wins" class="gt_row gt_right">7</td>
<td headers="AL West  losses" class="gt_row gt_right">26</td>
<td headers="AL West  win_pct_text" class="gt_row gt_right">.212</td>
<td headers="AL West  games_remaining" class="gt_row gt_right">129</td>
<td headers="AL West  division_games_behind" class="gt_row gt_right">12.0</td>
<td headers="AL West  division_magic_or_eliminated" class="gt_row gt_right">119</td>
<td headers="AL West  outcomes" class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='8.91' x2='11.60' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr class="gt_group_heading_row">
      <th colspan="9" class="gt_group_heading" scope="colgroup" id="NL Central">NL Central</th>
    </tr>
    <tr class="gt_row_group_first"><td headers="NL Central  logo_url" class="gt_row gt_right gt_striped"><img src="https://www.mlbstatic.com/team-logos/134.svg" style="height:12px;"></td>
<td headers="NL Central  team_label" class="gt_row gt_left gt_striped">PIT</td>
<td headers="NL Central  wins" class="gt_row gt_right gt_striped">20</td>
<td headers="NL Central  losses" class="gt_row gt_right gt_striped">13</td>
<td headers="NL Central  win_pct_text" class="gt_row gt_right gt_striped">.606</td>
<td headers="NL Central  games_remaining" class="gt_row gt_right gt_striped">129</td>
<td headers="NL Central  division_games_behind" class="gt_row gt_right gt_striped">0.0</td>
<td headers="NL Central  division_magic_or_eliminated" class="gt_row gt_right gt_striped">129</td>
<td headers="NL Central  outcomes" class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='1.89' x2='7.73' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='1.89' x2='15.46' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='8.91' x2='23.19' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td headers="NL Central  logo_url" class="gt_row gt_right"><img src="https://www.mlbstatic.com/team-logos/158.svg" style="height:12px;"></td>
<td headers="NL Central  team_label" class="gt_row gt_left">MIL</td>
<td headers="NL Central  wins" class="gt_row gt_right">18</td>
<td headers="NL Central  losses" class="gt_row gt_right">14</td>
<td headers="NL Central  win_pct_text" class="gt_row gt_right">.562</td>
<td headers="NL Central  games_remaining" class="gt_row gt_right">130</td>
<td headers="NL Central  division_games_behind" class="gt_row gt_right">1.5</td>
<td headers="NL Central  division_magic_or_eliminated" class="gt_row gt_right">129</td>
<td headers="NL Central  outcomes" class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='1.89' x2='15.46' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='8.91' x2='23.19' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td headers="NL Central  logo_url" class="gt_row gt_right gt_striped"><img src="https://www.mlbstatic.com/team-logos/112.svg" style="height:12px;"></td>
<td headers="NL Central  team_label" class="gt_row gt_left gt_striped">CHC</td>
<td headers="NL Central  wins" class="gt_row gt_right gt_striped">16</td>
<td headers="NL Central  losses" class="gt_row gt_right gt_striped">16</td>
<td headers="NL Central  win_pct_text" class="gt_row gt_right gt_striped">.500</td>
<td headers="NL Central  games_remaining" class="gt_row gt_right gt_striped">130</td>
<td headers="NL Central  division_games_behind" class="gt_row gt_right gt_striped">3.5</td>
<td headers="NL Central  division_magic_or_eliminated" class="gt_row gt_right gt_striped">127</td>
<td headers="NL Central  outcomes" class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='1.89' x2='7.73' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.60' y1='8.91' x2='11.60' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td headers="NL Central  logo_url" class="gt_row gt_right"><img src="https://www.mlbstatic.com/team-logos/113.svg" style="height:12px;"></td>
<td headers="NL Central  team_label" class="gt_row gt_left">CIN</td>
<td headers="NL Central  wins" class="gt_row gt_right">13</td>
<td headers="NL Central  losses" class="gt_row gt_right">19</td>
<td headers="NL Central  win_pct_text" class="gt_row gt_right">.406</td>
<td headers="NL Central  games_remaining" class="gt_row gt_right">130</td>
<td headers="NL Central  division_games_behind" class="gt_row gt_right">6.5</td>
<td headers="NL Central  division_magic_or_eliminated" class="gt_row gt_right">124</td>
<td headers="NL Central  outcomes" class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='1.89' x2='7.73' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='1.89' x2='15.46' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='8.91' x2='23.19' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td headers="NL Central  logo_url" class="gt_row gt_right gt_striped"><img src="https://www.mlbstatic.com/team-logos/138.svg" style="height:12px;"></td>
<td headers="NL Central  team_label" class="gt_row gt_left gt_striped">STL</td>
<td headers="NL Central  wins" class="gt_row gt_right gt_striped">10</td>
<td headers="NL Central  losses" class="gt_row gt_right gt_striped">23</td>
<td headers="NL Central  win_pct_text" class="gt_row gt_right gt_striped">.303</td>
<td headers="NL Central  games_remaining" class="gt_row gt_right gt_striped">129</td>
<td headers="NL Central  division_games_behind" class="gt_row gt_right gt_striped">10.0</td>
<td headers="NL Central  division_magic_or_eliminated" class="gt_row gt_right gt_striped">120</td>
<td headers="NL Central  outcomes" class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='8.91' x2='23.19' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr class="gt_group_heading_row">
      <th colspan="9" class="gt_group_heading" scope="colgroup" id="NL East">NL East</th>
    </tr>
    <tr class="gt_row_group_first"><td headers="NL East  logo_url" class="gt_row gt_right"><img src="https://www.mlbstatic.com/team-logos/144.svg" style="height:12px;"></td>
<td headers="NL East  team_label" class="gt_row gt_left">ATL</td>
<td headers="NL East  wins" class="gt_row gt_right">22</td>
<td headers="NL East  losses" class="gt_row gt_right">11</td>
<td headers="NL East  win_pct_text" class="gt_row gt_right">.667</td>
<td headers="NL East  games_remaining" class="gt_row gt_right">129</td>
<td headers="NL East  division_games_behind" class="gt_row gt_right">0.0</td>
<td headers="NL East  division_magic_or_eliminated" class="gt_row gt_right">125</td>
<td headers="NL East  outcomes" class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='1.89' x2='7.73' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.60' y1='8.91' x2='11.60' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='15.46' y1='1.89' x2='15.46' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td headers="NL East  logo_url" class="gt_row gt_right gt_striped"><img src="https://www.mlbstatic.com/team-logos/121.svg" style="height:12px;"></td>
<td headers="NL East  team_label" class="gt_row gt_left gt_striped">NYM</td>
<td headers="NL East  wins" class="gt_row gt_right gt_striped">17</td>
<td headers="NL East  losses" class="gt_row gt_right gt_striped">16</td>
<td headers="NL East  win_pct_text" class="gt_row gt_right gt_striped">.515</td>
<td headers="NL East  games_remaining" class="gt_row gt_right gt_striped">129</td>
<td headers="NL East  division_games_behind" class="gt_row gt_right gt_striped">5.0</td>
<td headers="NL East  division_magic_or_eliminated" class="gt_row gt_right gt_striped">125</td>
<td headers="NL East  outcomes" class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='8.91' x2='23.19' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td headers="NL East  logo_url" class="gt_row gt_right"><img src="https://www.mlbstatic.com/team-logos/146.svg" style="height:12px;"></td>
<td headers="NL East  team_label" class="gt_row gt_left">MIA</td>
<td headers="NL East  wins" class="gt_row gt_right">16</td>
<td headers="NL East  losses" class="gt_row gt_right">17</td>
<td headers="NL East  win_pct_text" class="gt_row gt_right">.485</td>
<td headers="NL East  games_remaining" class="gt_row gt_right">129</td>
<td headers="NL East  division_games_behind" class="gt_row gt_right">6.0</td>
<td headers="NL East  division_magic_or_eliminated" class="gt_row gt_right">124</td>
<td headers="NL East  outcomes" class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='1.89' x2='15.46' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td headers="NL East  logo_url" class="gt_row gt_right gt_striped"><img src="https://www.mlbstatic.com/team-logos/143.svg" style="height:12px;"></td>
<td headers="NL East  team_label" class="gt_row gt_left gt_striped">PHI</td>
<td headers="NL East  wins" class="gt_row gt_right gt_striped">15</td>
<td headers="NL East  losses" class="gt_row gt_right gt_striped">18</td>
<td headers="NL East  win_pct_text" class="gt_row gt_right gt_striped">.455</td>
<td headers="NL East  games_remaining" class="gt_row gt_right gt_striped">129</td>
<td headers="NL East  division_games_behind" class="gt_row gt_right gt_striped">7.0</td>
<td headers="NL East  division_magic_or_eliminated" class="gt_row gt_right gt_striped">123</td>
<td headers="NL East  outcomes" class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='1.89' x2='7.73' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='1.89' x2='15.46' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='8.91' x2='23.19' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td headers="NL East  logo_url" class="gt_row gt_right"><img src="https://www.mlbstatic.com/team-logos/120.svg" style="height:12px;"></td>
<td headers="NL East  team_label" class="gt_row gt_left">WSH</td>
<td headers="NL East  wins" class="gt_row gt_right">13</td>
<td headers="NL East  losses" class="gt_row gt_right">19</td>
<td headers="NL East  win_pct_text" class="gt_row gt_right">.406</td>
<td headers="NL East  games_remaining" class="gt_row gt_right">130</td>
<td headers="NL East  division_games_behind" class="gt_row gt_right">8.5</td>
<td headers="NL East  division_magic_or_eliminated" class="gt_row gt_right">122</td>
<td headers="NL East  outcomes" class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='8.91' x2='11.60' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='8.91' x2='23.19' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr class="gt_group_heading_row">
      <th colspan="9" class="gt_group_heading" scope="colgroup" id="NL West">NL West</th>
    </tr>
    <tr class="gt_row_group_first"><td headers="NL West  logo_url" class="gt_row gt_right gt_striped"><img src="https://www.mlbstatic.com/team-logos/119.svg" style="height:12px;"></td>
<td headers="NL West  team_label" class="gt_row gt_left gt_striped">LAD</td>
<td headers="NL West  wins" class="gt_row gt_right gt_striped">19</td>
<td headers="NL West  losses" class="gt_row gt_right gt_striped">14</td>
<td headers="NL West  win_pct_text" class="gt_row gt_right gt_striped">.576</td>
<td headers="NL West  games_remaining" class="gt_row gt_right gt_striped">129</td>
<td headers="NL West  division_games_behind" class="gt_row gt_right gt_striped">0.0</td>
<td headers="NL West  division_magic_or_eliminated" class="gt_row gt_right gt_striped">130</td>
<td headers="NL West  outcomes" class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='8.91' x2='11.60' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='15.46' y1='1.89' x2='15.46' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td headers="NL West  logo_url" class="gt_row gt_right"><img src="https://www.mlbstatic.com/team-logos/109.svg" style="height:12px;"></td>
<td headers="NL West  team_label" class="gt_row gt_left">ARI</td>
<td headers="NL West  wins" class="gt_row gt_right">18</td>
<td headers="NL West  losses" class="gt_row gt_right">14</td>
<td headers="NL West  win_pct_text" class="gt_row gt_right">.562</td>
<td headers="NL West  games_remaining" class="gt_row gt_right">130</td>
<td headers="NL West  division_games_behind" class="gt_row gt_right">0.5</td>
<td headers="NL West  division_magic_or_eliminated" class="gt_row gt_right">130</td>
<td headers="NL West  outcomes" class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='1.89' x2='7.73' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.60' y1='8.91' x2='11.60' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='15.46' y1='1.89' x2='15.46' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td headers="NL West  logo_url" class="gt_row gt_right gt_striped"><img src="https://www.mlbstatic.com/team-logos/135.svg" style="height:12px;"></td>
<td headers="NL West  team_label" class="gt_row gt_left gt_striped">SD </td>
<td headers="NL West  wins" class="gt_row gt_right gt_striped">18</td>
<td headers="NL West  losses" class="gt_row gt_right gt_striped">15</td>
<td headers="NL West  win_pct_text" class="gt_row gt_right gt_striped">.545</td>
<td headers="NL West  games_remaining" class="gt_row gt_right gt_striped">129</td>
<td headers="NL West  division_games_behind" class="gt_row gt_right gt_striped">1.0</td>
<td headers="NL West  division_magic_or_eliminated" class="gt_row gt_right gt_striped">129</td>
<td headers="NL West  outcomes" class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td headers="NL West  logo_url" class="gt_row gt_right"><img src="https://www.mlbstatic.com/team-logos/137.svg" style="height:12px;"></td>
<td headers="NL West  team_label" class="gt_row gt_left">SF </td>
<td headers="NL West  wins" class="gt_row gt_right">14</td>
<td headers="NL West  losses" class="gt_row gt_right">17</td>
<td headers="NL West  win_pct_text" class="gt_row gt_right">.452</td>
<td headers="NL West  games_remaining" class="gt_row gt_right">131</td>
<td headers="NL West  division_games_behind" class="gt_row gt_right">4.0</td>
<td headers="NL West  division_magic_or_eliminated" class="gt_row gt_right">127</td>
<td headers="NL West  outcomes" class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='1.89' x2='7.73' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='8.91' x2='23.19' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td headers="NL West  logo_url" class="gt_row gt_right gt_striped"><img src="https://www.mlbstatic.com/team-logos/115.svg" style="height:12px;"></td>
<td headers="NL West  team_label" class="gt_row gt_left gt_striped">COL</td>
<td headers="NL West  wins" class="gt_row gt_right gt_striped">12</td>
<td headers="NL West  losses" class="gt_row gt_right gt_striped">21</td>
<td headers="NL West  win_pct_text" class="gt_row gt_right gt_striped">.364</td>
<td headers="NL West  games_remaining" class="gt_row gt_right gt_striped">129</td>
<td headers="NL West  division_games_behind" class="gt_row gt_right gt_striped">7.0</td>
<td headers="NL West  division_magic_or_eliminated" class="gt_row gt_right gt_striped">123</td>
<td headers="NL West  outcomes" class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='1.89' x2='7.73' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.60' y1='8.91' x2='11.60' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
  </tbody>
  
  
</table>
</div>

## Wild Card

<picture>
  <source srcset="{{ site.baseurl }}/plots/mlb_team_rank.png"
          media="(min-width: 750px)">
  <img src="{{ site.baseurl }}/plots/mlb_team_rank_mobile.png" alt="" />
</picture>

Chart inspired by those in the [Pennant app](http://www.pennantapp.com).

<div id="wild_card_standings_table" style="padding-left:0px;padding-right:0px;padding-top:10px;padding-bottom:10px;overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
  <style>@import url("https://fonts.googleapis.com/css2?family=Lato:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap");
#wild_card_standings_table table {
  font-family: Lato, system-ui, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji';
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}

#wild_card_standings_table thead, #wild_card_standings_table tbody, #wild_card_standings_table tfoot, #wild_card_standings_table tr, #wild_card_standings_table td, #wild_card_standings_table th {
  border-style: none;
}

#wild_card_standings_table p {
  margin: 0;
  padding: 0;
}

#wild_card_standings_table .gt_table {
  display: table;
  border-collapse: collapse;
  line-height: normal;
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

#wild_card_standings_table .gt_caption {
  padding-top: 4px;
  padding-bottom: 4px;
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
  padding-top: 3px;
  padding-bottom: 5px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
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

#wild_card_standings_table .gt_spanner_row {
  border-bottom-style: hidden;
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
  text-align: left;
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

#wild_card_standings_table .gt_row_group_first th {
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

#wild_card_standings_table .gt_last_grand_summary_row_top {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: double;
  border-bottom-width: 6px;
  border-bottom-color: #D3D3D3;
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
  padding-top: 4px;
  padding-bottom: 4px;
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
  font-size: 75%;
  vertical-align: 0.4em;
  position: initial;
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
  <table class="gt_table" data-quarto-disable-processing="false" data-quarto-bootstrap="false">
  <thead>
    
    <tr class="gt_col_headings">
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id=""></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="Team">Team</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="W">W</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="L">L</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Pct">Pct</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="GR">GR</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="GB">GB</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="E#">E#</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Last 10 Games">Last 10 Games</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr class="gt_group_heading_row">
      <th colspan="9" class="gt_group_heading" scope="colgroup" id="AL">AL</th>
    </tr>
    <tr class="gt_row_group_first"><td headers="AL  logo_url" class="gt_row gt_right"><img src="https://www.mlbstatic.com/team-logos/139.svg" style="height:12px;"></td>
<td headers="AL  team_label" class="gt_row gt_left">TB </td>
<td headers="AL  wins" class="gt_row gt_right">27</td>
<td headers="AL  losses" class="gt_row gt_right">6</td>
<td headers="AL  win_pct_text" class="gt_row gt_right">.818</td>
<td headers="AL  games_remaining" class="gt_row gt_right">129</td>
<td headers="AL  wc_games_behind" class="gt_row gt_right">E</td>
<td headers="AL  division_or_elim" class="gt_row gt_right">E</td>
<td headers="AL  outcomes" class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='1.89' x2='15.46' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='8.91' x2='23.19' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td headers="AL  logo_url" class="gt_row gt_right gt_striped"><img src="https://www.mlbstatic.com/team-logos/110.svg" style="height:12px;"></td>
<td headers="AL  team_label" class="gt_row gt_left gt_striped">BAL</td>
<td headers="AL  wins" class="gt_row gt_right gt_striped">22</td>
<td headers="AL  losses" class="gt_row gt_right gt_striped">10</td>
<td headers="AL  win_pct_text" class="gt_row gt_right gt_striped">.688</td>
<td headers="AL  games_remaining" class="gt_row gt_right gt_striped">130</td>
<td headers="AL  wc_games_behind" class="gt_row gt_right gt_striped">-3.5</td>
<td headers="AL  division_or_elim" class="gt_row gt_right gt_striped">WC</td>
<td headers="AL  outcomes" class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='1.89' x2='7.73' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='1.89' x2='15.46' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td headers="AL  logo_url" class="gt_row gt_right"><img src="https://www.mlbstatic.com/team-logos/111.svg" style="height:12px;"></td>
<td headers="AL  team_label" class="gt_row gt_left">BOS</td>
<td headers="AL  wins" class="gt_row gt_right">20</td>
<td headers="AL  losses" class="gt_row gt_right">14</td>
<td headers="AL  win_pct_text" class="gt_row gt_right">.588</td>
<td headers="AL  games_remaining" class="gt_row gt_right">128</td>
<td headers="AL  wc_games_behind" class="gt_row gt_right">-0.5</td>
<td headers="AL  division_or_elim" class="gt_row gt_right">WC</td>
<td headers="AL  outcomes" class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='8.91' x2='11.60' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='15.46' y1='1.89' x2='15.46' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td headers="AL  logo_url" class="gt_row gt_right gt_striped"><img src="https://www.mlbstatic.com/team-logos/140.svg" style="height:12px;"></td>
<td headers="AL  team_label" class="gt_row gt_left gt_striped">TEX</td>
<td headers="AL  wins" class="gt_row gt_right gt_striped">18</td>
<td headers="AL  losses" class="gt_row gt_right gt_striped">13</td>
<td headers="AL  win_pct_text" class="gt_row gt_right gt_striped">.581</td>
<td headers="AL  games_remaining" class="gt_row gt_right gt_striped">131</td>
<td headers="AL  wc_games_behind" class="gt_row gt_right gt_striped">W</td>
<td headers="AL  division_or_elim" class="gt_row gt_right gt_striped">W</td>
<td headers="AL  outcomes" class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='8.91' x2='11.60' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td headers="AL  logo_url" class="gt_row gt_right"><img src="https://www.mlbstatic.com/team-logos/142.svg" style="height:12px;"></td>
<td headers="AL  team_label" class="gt_row gt_left">MIN</td>
<td headers="AL  wins" class="gt_row gt_right">19</td>
<td headers="AL  losses" class="gt_row gt_right">14</td>
<td headers="AL  win_pct_text" class="gt_row gt_right">.576</td>
<td headers="AL  games_remaining" class="gt_row gt_right">129</td>
<td headers="AL  wc_games_behind" class="gt_row gt_right">C</td>
<td headers="AL  division_or_elim" class="gt_row gt_right">C</td>
<td headers="AL  outcomes" class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='1.89' x2='15.46' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td headers="AL  logo_url" class="gt_row gt_right gt_striped"><img src="https://www.mlbstatic.com/team-logos/141.svg" style="height:12px;"></td>
<td headers="AL  team_label" class="gt_row gt_left gt_striped">TOR</td>
<td headers="AL  wins" class="gt_row gt_right gt_striped">19</td>
<td headers="AL  losses" class="gt_row gt_right gt_striped">14</td>
<td headers="AL  win_pct_text" class="gt_row gt_right gt_striped">.576</td>
<td headers="AL  games_remaining" class="gt_row gt_right gt_striped">129</td>
<td headers="AL  wc_games_behind" class="gt_row gt_right gt_striped">0</td>
<td headers="AL  division_or_elim" class="gt_row gt_right gt_striped">WC</td>
<td headers="AL  outcomes" class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='1.89' x2='7.73' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='1.89' x2='15.46' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='8.91' x2='23.19' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td headers="AL  logo_url" class="gt_row gt_right"><img src="https://www.mlbstatic.com/team-logos/108.svg" style="height:12px;"></td>
<td headers="AL  team_label" class="gt_row gt_left">LAA</td>
<td headers="AL  wins" class="gt_row gt_right">19</td>
<td headers="AL  losses" class="gt_row gt_right">14</td>
<td headers="AL  win_pct_text" class="gt_row gt_right">.576</td>
<td headers="AL  games_remaining" class="gt_row gt_right">129</td>
<td headers="AL  wc_games_behind" class="gt_row gt_right">0</td>
<td headers="AL  division_or_elim" class="gt_row gt_right">130</td>
<td headers="AL  outcomes" class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='1.89' x2='7.73' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td headers="AL  logo_url" class="gt_row gt_right gt_striped"><img src="https://www.mlbstatic.com/team-logos/117.svg" style="height:12px;"></td>
<td headers="AL  team_label" class="gt_row gt_left gt_striped">HOU</td>
<td headers="AL  wins" class="gt_row gt_right gt_striped">17</td>
<td headers="AL  losses" class="gt_row gt_right gt_striped">15</td>
<td headers="AL  win_pct_text" class="gt_row gt_right gt_striped">.531</td>
<td headers="AL  games_remaining" class="gt_row gt_right gt_striped">130</td>
<td headers="AL  wc_games_behind" class="gt_row gt_right gt_striped">1.5</td>
<td headers="AL  division_or_elim" class="gt_row gt_right gt_striped">129</td>
<td headers="AL  outcomes" class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='1.89' x2='7.73' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td headers="AL  logo_url" class="gt_row gt_right"><img src="https://www.mlbstatic.com/team-logos/147.svg" style="height:12px;"></td>
<td headers="AL  team_label" class="gt_row gt_left">NYY</td>
<td headers="AL  wins" class="gt_row gt_right">17</td>
<td headers="AL  losses" class="gt_row gt_right">16</td>
<td headers="AL  win_pct_text" class="gt_row gt_right">.515</td>
<td headers="AL  games_remaining" class="gt_row gt_right">129</td>
<td headers="AL  wc_games_behind" class="gt_row gt_right">2</td>
<td headers="AL  division_or_elim" class="gt_row gt_right">128</td>
<td headers="AL  outcomes" class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='1.89' x2='7.73' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='8.91' x2='23.19' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td headers="AL  logo_url" class="gt_row gt_right gt_striped"><img src="https://www.mlbstatic.com/team-logos/136.svg" style="height:12px;"></td>
<td headers="AL  team_label" class="gt_row gt_left gt_striped">SEA</td>
<td headers="AL  wins" class="gt_row gt_right gt_striped">15</td>
<td headers="AL  losses" class="gt_row gt_right gt_striped">17</td>
<td headers="AL  win_pct_text" class="gt_row gt_right gt_striped">.469</td>
<td headers="AL  games_remaining" class="gt_row gt_right gt_striped">130</td>
<td headers="AL  wc_games_behind" class="gt_row gt_right gt_striped">3.5</td>
<td headers="AL  division_or_elim" class="gt_row gt_right gt_striped">127</td>
<td headers="AL  outcomes" class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='8.91' x2='11.60' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td headers="AL  logo_url" class="gt_row gt_right"><img src="https://www.mlbstatic.com/team-logos/116.svg" style="height:12px;"></td>
<td headers="AL  team_label" class="gt_row gt_left">DET</td>
<td headers="AL  wins" class="gt_row gt_right">14</td>
<td headers="AL  losses" class="gt_row gt_right">17</td>
<td headers="AL  win_pct_text" class="gt_row gt_right">.452</td>
<td headers="AL  games_remaining" class="gt_row gt_right">131</td>
<td headers="AL  wc_games_behind" class="gt_row gt_right">4</td>
<td headers="AL  division_or_elim" class="gt_row gt_right">127</td>
<td headers="AL  outcomes" class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='8.91' x2='11.60' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='8.91' x2='23.19' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td headers="AL  logo_url" class="gt_row gt_right gt_striped"><img src="https://www.mlbstatic.com/team-logos/114.svg" style="height:12px;"></td>
<td headers="AL  team_label" class="gt_row gt_left gt_striped">CLE</td>
<td headers="AL  wins" class="gt_row gt_right gt_striped">14</td>
<td headers="AL  losses" class="gt_row gt_right gt_striped">18</td>
<td headers="AL  win_pct_text" class="gt_row gt_right gt_striped">.438</td>
<td headers="AL  games_remaining" class="gt_row gt_right gt_striped">130</td>
<td headers="AL  wc_games_behind" class="gt_row gt_right gt_striped">4.5</td>
<td headers="AL  division_or_elim" class="gt_row gt_right gt_striped">126</td>
<td headers="AL  outcomes" class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='1.89' x2='15.46' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='8.91' x2='23.19' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td headers="AL  logo_url" class="gt_row gt_right"><img src="https://www.mlbstatic.com/team-logos/145.svg" style="height:12px;"></td>
<td headers="AL  team_label" class="gt_row gt_left">CWS</td>
<td headers="AL  wins" class="gt_row gt_right">11</td>
<td headers="AL  losses" class="gt_row gt_right">22</td>
<td headers="AL  win_pct_text" class="gt_row gt_right">.333</td>
<td headers="AL  games_remaining" class="gt_row gt_right">129</td>
<td headers="AL  wc_games_behind" class="gt_row gt_right">8</td>
<td headers="AL  division_or_elim" class="gt_row gt_right">122</td>
<td headers="AL  outcomes" class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='8.91' x2='11.60' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td headers="AL  logo_url" class="gt_row gt_right gt_striped"><img src="https://www.mlbstatic.com/team-logos/118.svg" style="height:12px;"></td>
<td headers="AL  team_label" class="gt_row gt_left gt_striped">KC </td>
<td headers="AL  wins" class="gt_row gt_right gt_striped">8</td>
<td headers="AL  losses" class="gt_row gt_right gt_striped">25</td>
<td headers="AL  win_pct_text" class="gt_row gt_right gt_striped">.242</td>
<td headers="AL  games_remaining" class="gt_row gt_right gt_striped">129</td>
<td headers="AL  wc_games_behind" class="gt_row gt_right gt_striped">11</td>
<td headers="AL  division_or_elim" class="gt_row gt_right gt_striped">119</td>
<td headers="AL  outcomes" class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='8.91' x2='11.60' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='8.91' x2='23.19' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td headers="AL  logo_url" class="gt_row gt_right"><img src="https://www.mlbstatic.com/team-logos/133.svg" style="height:12px;"></td>
<td headers="AL  team_label" class="gt_row gt_left">OAK</td>
<td headers="AL  wins" class="gt_row gt_right">7</td>
<td headers="AL  losses" class="gt_row gt_right">26</td>
<td headers="AL  win_pct_text" class="gt_row gt_right">.212</td>
<td headers="AL  games_remaining" class="gt_row gt_right">129</td>
<td headers="AL  wc_games_behind" class="gt_row gt_right">12</td>
<td headers="AL  division_or_elim" class="gt_row gt_right">118</td>
<td headers="AL  outcomes" class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='8.91' x2='11.60' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr class="gt_group_heading_row">
      <th colspan="9" class="gt_group_heading" scope="colgroup" id="NL">NL</th>
    </tr>
    <tr class="gt_row_group_first"><td headers="NL  logo_url" class="gt_row gt_right gt_striped"><img src="https://www.mlbstatic.com/team-logos/144.svg" style="height:12px;"></td>
<td headers="NL  team_label" class="gt_row gt_left gt_striped">ATL</td>
<td headers="NL  wins" class="gt_row gt_right gt_striped">22</td>
<td headers="NL  losses" class="gt_row gt_right gt_striped">11</td>
<td headers="NL  win_pct_text" class="gt_row gt_right gt_striped">.667</td>
<td headers="NL  games_remaining" class="gt_row gt_right gt_striped">129</td>
<td headers="NL  wc_games_behind" class="gt_row gt_right gt_striped">E</td>
<td headers="NL  division_or_elim" class="gt_row gt_right gt_striped">E</td>
<td headers="NL  outcomes" class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='1.89' x2='7.73' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.60' y1='8.91' x2='11.60' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='15.46' y1='1.89' x2='15.46' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td headers="NL  logo_url" class="gt_row gt_right"><img src="https://www.mlbstatic.com/team-logos/134.svg" style="height:12px;"></td>
<td headers="NL  team_label" class="gt_row gt_left">PIT</td>
<td headers="NL  wins" class="gt_row gt_right">20</td>
<td headers="NL  losses" class="gt_row gt_right">13</td>
<td headers="NL  win_pct_text" class="gt_row gt_right">.606</td>
<td headers="NL  games_remaining" class="gt_row gt_right">129</td>
<td headers="NL  wc_games_behind" class="gt_row gt_right">C</td>
<td headers="NL  division_or_elim" class="gt_row gt_right">C</td>
<td headers="NL  outcomes" class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='1.89' x2='7.73' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='1.89' x2='15.46' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='8.91' x2='23.19' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td headers="NL  logo_url" class="gt_row gt_right gt_striped"><img src="https://www.mlbstatic.com/team-logos/119.svg" style="height:12px;"></td>
<td headers="NL  team_label" class="gt_row gt_left gt_striped">LAD</td>
<td headers="NL  wins" class="gt_row gt_right gt_striped">19</td>
<td headers="NL  losses" class="gt_row gt_right gt_striped">14</td>
<td headers="NL  win_pct_text" class="gt_row gt_right gt_striped">.576</td>
<td headers="NL  games_remaining" class="gt_row gt_right gt_striped">129</td>
<td headers="NL  wc_games_behind" class="gt_row gt_right gt_striped">W</td>
<td headers="NL  division_or_elim" class="gt_row gt_right gt_striped">W</td>
<td headers="NL  outcomes" class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='8.91' x2='11.60' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='15.46' y1='1.89' x2='15.46' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td headers="NL  logo_url" class="gt_row gt_right"><img src="https://www.mlbstatic.com/team-logos/158.svg" style="height:12px;"></td>
<td headers="NL  team_label" class="gt_row gt_left">MIL</td>
<td headers="NL  wins" class="gt_row gt_right">18</td>
<td headers="NL  losses" class="gt_row gt_right">14</td>
<td headers="NL  win_pct_text" class="gt_row gt_right">.562</td>
<td headers="NL  games_remaining" class="gt_row gt_right">130</td>
<td headers="NL  wc_games_behind" class="gt_row gt_right">-0.5</td>
<td headers="NL  division_or_elim" class="gt_row gt_right">WC</td>
<td headers="NL  outcomes" class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='1.89' x2='15.46' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='8.91' x2='23.19' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td headers="NL  logo_url" class="gt_row gt_right gt_striped"><img src="https://www.mlbstatic.com/team-logos/109.svg" style="height:12px;"></td>
<td headers="NL  team_label" class="gt_row gt_left gt_striped">ARI</td>
<td headers="NL  wins" class="gt_row gt_right gt_striped">18</td>
<td headers="NL  losses" class="gt_row gt_right gt_striped">14</td>
<td headers="NL  win_pct_text" class="gt_row gt_right gt_striped">.562</td>
<td headers="NL  games_remaining" class="gt_row gt_right gt_striped">130</td>
<td headers="NL  wc_games_behind" class="gt_row gt_right gt_striped">-0.5</td>
<td headers="NL  division_or_elim" class="gt_row gt_right gt_striped">WC</td>
<td headers="NL  outcomes" class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='1.89' x2='7.73' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.60' y1='8.91' x2='11.60' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='15.46' y1='1.89' x2='15.46' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td headers="NL  logo_url" class="gt_row gt_right"><img src="https://www.mlbstatic.com/team-logos/135.svg" style="height:12px;"></td>
<td headers="NL  team_label" class="gt_row gt_left">SD </td>
<td headers="NL  wins" class="gt_row gt_right">18</td>
<td headers="NL  losses" class="gt_row gt_right">15</td>
<td headers="NL  win_pct_text" class="gt_row gt_right">.545</td>
<td headers="NL  games_remaining" class="gt_row gt_right">129</td>
<td headers="NL  wc_games_behind" class="gt_row gt_right">0</td>
<td headers="NL  division_or_elim" class="gt_row gt_right">WC</td>
<td headers="NL  outcomes" class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td headers="NL  logo_url" class="gt_row gt_right gt_striped"><img src="https://www.mlbstatic.com/team-logos/121.svg" style="height:12px;"></td>
<td headers="NL  team_label" class="gt_row gt_left gt_striped">NYM</td>
<td headers="NL  wins" class="gt_row gt_right gt_striped">17</td>
<td headers="NL  losses" class="gt_row gt_right gt_striped">16</td>
<td headers="NL  win_pct_text" class="gt_row gt_right gt_striped">.515</td>
<td headers="NL  games_remaining" class="gt_row gt_right gt_striped">129</td>
<td headers="NL  wc_games_behind" class="gt_row gt_right gt_striped">1</td>
<td headers="NL  division_or_elim" class="gt_row gt_right gt_striped">129</td>
<td headers="NL  outcomes" class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='8.91' x2='23.19' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td headers="NL  logo_url" class="gt_row gt_right"><img src="https://www.mlbstatic.com/team-logos/112.svg" style="height:12px;"></td>
<td headers="NL  team_label" class="gt_row gt_left">CHC</td>
<td headers="NL  wins" class="gt_row gt_right">16</td>
<td headers="NL  losses" class="gt_row gt_right">16</td>
<td headers="NL  win_pct_text" class="gt_row gt_right">.500</td>
<td headers="NL  games_remaining" class="gt_row gt_right">130</td>
<td headers="NL  wc_games_behind" class="gt_row gt_right">1.5</td>
<td headers="NL  division_or_elim" class="gt_row gt_right">129</td>
<td headers="NL  outcomes" class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='1.89' x2='7.73' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.60' y1='8.91' x2='11.60' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td headers="NL  logo_url" class="gt_row gt_right gt_striped"><img src="https://www.mlbstatic.com/team-logos/146.svg" style="height:12px;"></td>
<td headers="NL  team_label" class="gt_row gt_left gt_striped">MIA</td>
<td headers="NL  wins" class="gt_row gt_right gt_striped">16</td>
<td headers="NL  losses" class="gt_row gt_right gt_striped">17</td>
<td headers="NL  win_pct_text" class="gt_row gt_right gt_striped">.485</td>
<td headers="NL  games_remaining" class="gt_row gt_right gt_striped">129</td>
<td headers="NL  wc_games_behind" class="gt_row gt_right gt_striped">2</td>
<td headers="NL  division_or_elim" class="gt_row gt_right gt_striped">128</td>
<td headers="NL  outcomes" class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='1.89' x2='15.46' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td headers="NL  logo_url" class="gt_row gt_right"><img src="https://www.mlbstatic.com/team-logos/143.svg" style="height:12px;"></td>
<td headers="NL  team_label" class="gt_row gt_left">PHI</td>
<td headers="NL  wins" class="gt_row gt_right">15</td>
<td headers="NL  losses" class="gt_row gt_right">18</td>
<td headers="NL  win_pct_text" class="gt_row gt_right">.455</td>
<td headers="NL  games_remaining" class="gt_row gt_right">129</td>
<td headers="NL  wc_games_behind" class="gt_row gt_right">3</td>
<td headers="NL  division_or_elim" class="gt_row gt_right">127</td>
<td headers="NL  outcomes" class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='1.89' x2='7.73' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='1.89' x2='15.46' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='8.91' x2='23.19' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td headers="NL  logo_url" class="gt_row gt_right gt_striped"><img src="https://www.mlbstatic.com/team-logos/137.svg" style="height:12px;"></td>
<td headers="NL  team_label" class="gt_row gt_left gt_striped">SF </td>
<td headers="NL  wins" class="gt_row gt_right gt_striped">14</td>
<td headers="NL  losses" class="gt_row gt_right gt_striped">17</td>
<td headers="NL  win_pct_text" class="gt_row gt_right gt_striped">.452</td>
<td headers="NL  games_remaining" class="gt_row gt_right gt_striped">131</td>
<td headers="NL  wc_games_behind" class="gt_row gt_right gt_striped">3</td>
<td headers="NL  division_or_elim" class="gt_row gt_right gt_striped">128</td>
<td headers="NL  outcomes" class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='1.89' x2='7.73' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='8.91' x2='23.19' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td headers="NL  logo_url" class="gt_row gt_right"><img src="https://www.mlbstatic.com/team-logos/113.svg" style="height:12px;"></td>
<td headers="NL  team_label" class="gt_row gt_left">CIN</td>
<td headers="NL  wins" class="gt_row gt_right">13</td>
<td headers="NL  losses" class="gt_row gt_right">19</td>
<td headers="NL  win_pct_text" class="gt_row gt_right">.406</td>
<td headers="NL  games_remaining" class="gt_row gt_right">130</td>
<td headers="NL  wc_games_behind" class="gt_row gt_right">4.5</td>
<td headers="NL  division_or_elim" class="gt_row gt_right">126</td>
<td headers="NL  outcomes" class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='1.89' x2='7.73' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='1.89' x2='15.46' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='8.91' x2='23.19' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td headers="NL  logo_url" class="gt_row gt_right gt_striped"><img src="https://www.mlbstatic.com/team-logos/120.svg" style="height:12px;"></td>
<td headers="NL  team_label" class="gt_row gt_left gt_striped">WSH</td>
<td headers="NL  wins" class="gt_row gt_right gt_striped">13</td>
<td headers="NL  losses" class="gt_row gt_right gt_striped">19</td>
<td headers="NL  win_pct_text" class="gt_row gt_right gt_striped">.406</td>
<td headers="NL  games_remaining" class="gt_row gt_right gt_striped">130</td>
<td headers="NL  wc_games_behind" class="gt_row gt_right gt_striped">4.5</td>
<td headers="NL  division_or_elim" class="gt_row gt_right gt_striped">126</td>
<td headers="NL  outcomes" class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='8.91' x2='11.60' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='8.91' x2='23.19' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td headers="NL  logo_url" class="gt_row gt_right"><img src="https://www.mlbstatic.com/team-logos/115.svg" style="height:12px;"></td>
<td headers="NL  team_label" class="gt_row gt_left">COL</td>
<td headers="NL  wins" class="gt_row gt_right">12</td>
<td headers="NL  losses" class="gt_row gt_right">21</td>
<td headers="NL  win_pct_text" class="gt_row gt_right">.364</td>
<td headers="NL  games_remaining" class="gt_row gt_right">129</td>
<td headers="NL  wc_games_behind" class="gt_row gt_right">6</td>
<td headers="NL  division_or_elim" class="gt_row gt_right">124</td>
<td headers="NL  outcomes" class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='1.89' x2='7.73' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.60' y1='8.91' x2='11.60' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td headers="NL  logo_url" class="gt_row gt_right gt_striped"><img src="https://www.mlbstatic.com/team-logos/138.svg" style="height:12px;"></td>
<td headers="NL  team_label" class="gt_row gt_left gt_striped">STL</td>
<td headers="NL  wins" class="gt_row gt_right gt_striped">10</td>
<td headers="NL  losses" class="gt_row gt_right gt_striped">23</td>
<td headers="NL  win_pct_text" class="gt_row gt_right gt_striped">.303</td>
<td headers="NL  games_remaining" class="gt_row gt_right gt_striped">129</td>
<td headers="NL  wc_games_behind" class="gt_row gt_right gt_striped">8</td>
<td headers="NL  division_or_elim" class="gt_row gt_right gt_striped">122</td>
<td headers="NL  outcomes" class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='8.91' x2='23.19' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
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


