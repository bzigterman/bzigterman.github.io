---
layout: page
title: Basketball Standings
permalink: /projects/basketball
imageurl: https://bzigterman.com/plots/nba_standings.png
---

<p class="updated_time"> Latest data: 11:39 PM CT, January 11</p> 

<div class = "standings">
<iframe src="/interactive/western_standings.html" width="100%" height="400"> 
</iframe>

<iframe src="/interactive/eastern_standings.html" width="100%" height="400"> 
</iframe>
</div>

<div id="nba_standings_table" style="padding-left:0px;padding-right:0px;padding-top:10px;padding-bottom:10px;overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
  <style>@import url("https://fonts.googleapis.com/css2?family=Lato:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap");
html {
  font-family: Lato, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial, sans-serif;
}

#nba_standings_table .gt_table {
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

#nba_standings_table .gt_heading {
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

#nba_standings_table .gt_caption {
  padding-top: 4px;
  padding-bottom: 4px;
}

#nba_standings_table .gt_title {
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

#nba_standings_table .gt_subtitle {
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

#nba_standings_table .gt_bottom_border {
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#nba_standings_table .gt_col_headings {
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

#nba_standings_table .gt_col_heading {
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

#nba_standings_table .gt_column_spanner_outer {
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

#nba_standings_table .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

#nba_standings_table .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

#nba_standings_table .gt_column_spanner {
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

#nba_standings_table .gt_group_heading {
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

#nba_standings_table .gt_empty_group_heading {
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

#nba_standings_table .gt_from_md > :first-child {
  margin-top: 0;
}

#nba_standings_table .gt_from_md > :last-child {
  margin-bottom: 0;
}

#nba_standings_table .gt_row {
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

#nba_standings_table .gt_stub {
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

#nba_standings_table .gt_stub_row_group {
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

#nba_standings_table .gt_row_group_first td {
  border-top-width: 2px;
}

#nba_standings_table .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#nba_standings_table .gt_first_summary_row {
  border-top-style: solid;
  border-top-color: #D3D3D3;
}

#nba_standings_table .gt_first_summary_row.thick {
  border-top-width: 2px;
}

#nba_standings_table .gt_last_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#nba_standings_table .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

#nba_standings_table .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: double;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

#nba_standings_table .gt_striped {
  background-color: #FAFAFA;
}

#nba_standings_table .gt_table_body {
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: solid;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

#nba_standings_table .gt_footnotes {
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

#nba_standings_table .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding-left: 4px;
  padding-right: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#nba_standings_table .gt_sourcenotes {
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

#nba_standings_table .gt_sourcenote {
  font-size: 12px;
  padding-top: 4px;
  padding-bottom: 4px;
  padding-left: 5px;
  padding-right: 5px;
}

#nba_standings_table .gt_left {
  text-align: left;
}

#nba_standings_table .gt_center {
  text-align: center;
}

#nba_standings_table .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

#nba_standings_table .gt_font_normal {
  font-weight: normal;
}

#nba_standings_table .gt_font_bold {
  font-weight: bold;
}

#nba_standings_table .gt_font_italic {
  font-style: italic;
}

#nba_standings_table .gt_super {
  font-size: 65%;
}

#nba_standings_table .gt_footnote_marks {
  font-style: italic;
  font-weight: normal;
  font-size: 75%;
  vertical-align: 0.4em;
}

#nba_standings_table .gt_asterisk {
  font-size: 100%;
  vertical-align: 0;
}

#nba_standings_table .gt_indent_1 {
  text-indent: 5px;
}

#nba_standings_table .gt_indent_2 {
  text-indent: 10px;
}

#nba_standings_table .gt_indent_3 {
  text-indent: 15px;
}

#nba_standings_table .gt_indent_4 {
  text-indent: 20px;
}

#nba_standings_table .gt_indent_5 {
  text-indent: 25px;
}
</style>
  <table class="gt_table">
  
  <thead class="gt_col_headings">
    <tr>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id=""></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="Team">Team</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="W">W</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="L">L</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Pct">Pct</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="GB">GB</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Last 10 Games">Last 10 Games</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr class="gt_group_heading_row">
      <th colspan="7" class="gt_group_heading" scope="colgroup" id="Western">Western</th>
    </tr>
    <tr class="gt_row_group_first"><td headers="Western  logo_url" class="gt_row gt_right"><img src="https://cdn.nba.com/logos/nba/1610612763/primary/L/logo.svg" style="height:12px;"></td>
<td headers="Western  team_label" class="gt_row gt_left">MEM</td>
<td headers="Western  wins" class="gt_row gt_right">28</td>
<td headers="Western  losses" class="gt_row gt_right">13</td>
<td headers="Western  win_pct_text" class="gt_row gt_right">.683</td>
<td headers="Western  conference_games_behind" class="gt_row gt_right">0.0</td>
<td headers="Western  outcomes" class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='1.89' x2='15.46' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td headers="Western  logo_url" class="gt_row gt_right gt_striped"><img src="https://cdn.nba.com/logos/nba/1610612743/primary/L/logo.svg" style="height:12px;"></td>
<td headers="Western  team_label" class="gt_row gt_left gt_striped">DEN</td>
<td headers="Western  wins" class="gt_row gt_right gt_striped">27</td>
<td headers="Western  losses" class="gt_row gt_right gt_striped">13</td>
<td headers="Western  win_pct_text" class="gt_row gt_right gt_striped">.675</td>
<td headers="Western  conference_games_behind" class="gt_row gt_right gt_striped">0.5</td>
<td headers="Western  outcomes" class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='1.89' x2='7.73' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td headers="Western  logo_url" class="gt_row gt_right"><img src="https://cdn.nba.com/logos/nba/1610612740/primary/L/logo.svg" style="height:12px;"></td>
<td headers="Western  team_label" class="gt_row gt_left">NOP</td>
<td headers="Western  wins" class="gt_row gt_right">25</td>
<td headers="Western  losses" class="gt_row gt_right">17</td>
<td headers="Western  win_pct_text" class="gt_row gt_right">.595</td>
<td headers="Western  conference_games_behind" class="gt_row gt_right">3.5</td>
<td headers="Western  outcomes" class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='1.89' x2='7.73' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td headers="Western  logo_url" class="gt_row gt_right gt_striped"><img src="https://cdn.nba.com/logos/nba/1610612742/primary/L/logo.svg" style="height:12px;"></td>
<td headers="Western  team_label" class="gt_row gt_left gt_striped">DAL</td>
<td headers="Western  wins" class="gt_row gt_right gt_striped">23</td>
<td headers="Western  losses" class="gt_row gt_right gt_striped">19</td>
<td headers="Western  win_pct_text" class="gt_row gt_right gt_striped">.548</td>
<td headers="Western  conference_games_behind" class="gt_row gt_right gt_striped">5.5</td>
<td headers="Western  outcomes" class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='1.89' x2='7.73' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='1.89' x2='15.46' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td headers="Western  logo_url" class="gt_row gt_right"><img src="https://cdn.nba.com/logos/nba/1610612758/primary/L/logo.svg" style="height:12px;"></td>
<td headers="Western  team_label" class="gt_row gt_left">SAC</td>
<td headers="Western  wins" class="gt_row gt_right">21</td>
<td headers="Western  losses" class="gt_row gt_right">18</td>
<td headers="Western  win_pct_text" class="gt_row gt_right">.538</td>
<td headers="Western  conference_games_behind" class="gt_row gt_right">6.0</td>
<td headers="Western  outcomes" class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='8.91' x2='11.60' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='15.46' y1='1.89' x2='15.46' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='8.91' x2='23.19' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td headers="Western  logo_url" class="gt_row gt_right gt_striped"><img src="https://cdn.nba.com/logos/nba/1610612746/primary/L/logo.svg" style="height:12px;"></td>
<td headers="Western  team_label" class="gt_row gt_left gt_striped">LAC</td>
<td headers="Western  wins" class="gt_row gt_right gt_striped">22</td>
<td headers="Western  losses" class="gt_row gt_right gt_striped">21</td>
<td headers="Western  win_pct_text" class="gt_row gt_right gt_striped">.512</td>
<td headers="Western  conference_games_behind" class="gt_row gt_right gt_striped">7.0</td>
<td headers="Western  outcomes" class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='1.89' x2='7.73' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='8.91' x2='23.19' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td headers="Western  logo_url" class="gt_row gt_right"><img src="https://cdn.nba.com/logos/nba/1610612756/primary/L/logo.svg" style="height:12px;"></td>
<td headers="Western  team_label" class="gt_row gt_left">PHX</td>
<td headers="Western  wins" class="gt_row gt_right">21</td>
<td headers="Western  losses" class="gt_row gt_right">21</td>
<td headers="Western  win_pct_text" class="gt_row gt_right">.500</td>
<td headers="Western  conference_games_behind" class="gt_row gt_right">7.5</td>
<td headers="Western  outcomes" class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='8.91' x2='23.19' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td headers="Western  logo_url" class="gt_row gt_right gt_striped"><img src="https://cdn.nba.com/logos/nba/1610612744/primary/L/logo.svg" style="height:12px;"></td>
<td headers="Western  team_label" class="gt_row gt_left gt_striped">GSW</td>
<td headers="Western  wins" class="gt_row gt_right gt_striped">20</td>
<td headers="Western  losses" class="gt_row gt_right gt_striped">21</td>
<td headers="Western  win_pct_text" class="gt_row gt_right gt_striped">.488</td>
<td headers="Western  conference_games_behind" class="gt_row gt_right gt_striped">8.0</td>
<td headers="Western  outcomes" class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='1.89' x2='15.46' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td headers="Western  logo_url" class="gt_row gt_right"><img src="https://cdn.nba.com/logos/nba/1610612762/primary/L/logo.svg" style="height:12px;"></td>
<td headers="Western  team_label" class="gt_row gt_left">UTA</td>
<td headers="Western  wins" class="gt_row gt_right">21</td>
<td headers="Western  losses" class="gt_row gt_right">23</td>
<td headers="Western  win_pct_text" class="gt_row gt_right">.477</td>
<td headers="Western  conference_games_behind" class="gt_row gt_right">8.5</td>
<td headers="Western  outcomes" class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='8.91' x2='11.60' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='8.91' x2='23.19' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td headers="Western  logo_url" class="gt_row gt_right gt_striped"><img src="https://cdn.nba.com/logos/nba/1610612750/primary/L/logo.svg" style="height:12px;"></td>
<td headers="Western  team_label" class="gt_row gt_left gt_striped">MIN</td>
<td headers="Western  wins" class="gt_row gt_right gt_striped">20</td>
<td headers="Western  losses" class="gt_row gt_right gt_striped">22</td>
<td headers="Western  win_pct_text" class="gt_row gt_right gt_striped">.476</td>
<td headers="Western  conference_games_behind" class="gt_row gt_right gt_striped">8.5</td>
<td headers="Western  outcomes" class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='8.91' x2='11.60' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td headers="Western  logo_url" class="gt_row gt_right"><img src="https://cdn.nba.com/logos/nba/1610612757/primary/L/logo.svg" style="height:12px;"></td>
<td headers="Western  team_label" class="gt_row gt_left">POR</td>
<td headers="Western  wins" class="gt_row gt_right">19</td>
<td headers="Western  losses" class="gt_row gt_right">21</td>
<td headers="Western  win_pct_text" class="gt_row gt_right">.475</td>
<td headers="Western  conference_games_behind" class="gt_row gt_right">8.5</td>
<td headers="Western  outcomes" class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='8.91' x2='11.60' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='15.46' y1='1.89' x2='15.46' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td headers="Western  logo_url" class="gt_row gt_right gt_striped"><img src="https://cdn.nba.com/logos/nba/1610612747/primary/L/logo.svg" style="height:12px;"></td>
<td headers="Western  team_label" class="gt_row gt_left gt_striped">LAL</td>
<td headers="Western  wins" class="gt_row gt_right gt_striped">19</td>
<td headers="Western  losses" class="gt_row gt_right gt_striped">22</td>
<td headers="Western  win_pct_text" class="gt_row gt_right gt_striped">.463</td>
<td headers="Western  conference_games_behind" class="gt_row gt_right gt_striped">9.0</td>
<td headers="Western  outcomes" class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td headers="Western  logo_url" class="gt_row gt_right"><img src="https://cdn.nba.com/logos/nba/1610612760/primary/L/logo.svg" style="height:12px;"></td>
<td headers="Western  team_label" class="gt_row gt_left">OKC</td>
<td headers="Western  wins" class="gt_row gt_right">18</td>
<td headers="Western  losses" class="gt_row gt_right">23</td>
<td headers="Western  win_pct_text" class="gt_row gt_right">.439</td>
<td headers="Western  conference_games_behind" class="gt_row gt_right">10.0</td>
<td headers="Western  outcomes" class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td headers="Western  logo_url" class="gt_row gt_right gt_striped"><img src="https://cdn.nba.com/logos/nba/1610612759/primary/L/logo.svg" style="height:12px;"></td>
<td headers="Western  team_label" class="gt_row gt_left gt_striped">SAS</td>
<td headers="Western  wins" class="gt_row gt_right gt_striped">13</td>
<td headers="Western  losses" class="gt_row gt_right gt_striped">29</td>
<td headers="Western  win_pct_text" class="gt_row gt_right gt_striped">.310</td>
<td headers="Western  conference_games_behind" class="gt_row gt_right gt_striped">15.5</td>
<td headers="Western  outcomes" class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='8.91' x2='23.19' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td headers="Western  logo_url" class="gt_row gt_right"><img src="https://cdn.nba.com/logos/nba/1610612745/primary/L/logo.svg" style="height:12px;"></td>
<td headers="Western  team_label" class="gt_row gt_left">HOU</td>
<td headers="Western  wins" class="gt_row gt_right">10</td>
<td headers="Western  losses" class="gt_row gt_right">30</td>
<td headers="Western  win_pct_text" class="gt_row gt_right">.250</td>
<td headers="Western  conference_games_behind" class="gt_row gt_right">17.5</td>
<td headers="Western  outcomes" class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='8.91' x2='23.19' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr class="gt_group_heading_row">
      <th colspan="7" class="gt_group_heading" scope="colgroup" id="Eastern">Eastern</th>
    </tr>
    <tr class="gt_row_group_first"><td headers="Eastern  logo_url" class="gt_row gt_right gt_striped"><img src="https://cdn.nba.com/logos/nba/1610612738/primary/L/logo.svg" style="height:12px;"></td>
<td headers="Eastern  team_label" class="gt_row gt_left gt_striped">BOS</td>
<td headers="Eastern  wins" class="gt_row gt_right gt_striped">30</td>
<td headers="Eastern  losses" class="gt_row gt_right gt_striped">12</td>
<td headers="Eastern  win_pct_text" class="gt_row gt_right gt_striped">.714</td>
<td headers="Eastern  conference_games_behind" class="gt_row gt_right gt_striped">0.0</td>
<td headers="Eastern  outcomes" class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='1.89' x2='7.73' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='1.89' x2='15.46' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='8.91' x2='23.19' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td headers="Eastern  logo_url" class="gt_row gt_right"><img src="https://cdn.nba.com/logos/nba/1610612751/primary/L/logo.svg" style="height:12px;"></td>
<td headers="Eastern  team_label" class="gt_row gt_left">BKN</td>
<td headers="Eastern  wins" class="gt_row gt_right">27</td>
<td headers="Eastern  losses" class="gt_row gt_right">13</td>
<td headers="Eastern  win_pct_text" class="gt_row gt_right">.675</td>
<td headers="Eastern  conference_games_behind" class="gt_row gt_right">2.0</td>
<td headers="Eastern  outcomes" class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='1.89' x2='7.73' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='1.89' x2='15.46' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td headers="Eastern  logo_url" class="gt_row gt_right gt_striped"><img src="https://cdn.nba.com/logos/nba/1610612749/primary/L/logo.svg" style="height:12px;"></td>
<td headers="Eastern  team_label" class="gt_row gt_left gt_striped">MIL</td>
<td headers="Eastern  wins" class="gt_row gt_right gt_striped">27</td>
<td headers="Eastern  losses" class="gt_row gt_right gt_striped">14</td>
<td headers="Eastern  win_pct_text" class="gt_row gt_right gt_striped">.659</td>
<td headers="Eastern  conference_games_behind" class="gt_row gt_right gt_striped">2.5</td>
<td headers="Eastern  outcomes" class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='8.91' x2='11.60' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='15.46' y1='1.89' x2='15.46' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td headers="Eastern  logo_url" class="gt_row gt_right"><img src="https://cdn.nba.com/logos/nba/1610612755/primary/L/logo.svg" style="height:12px;"></td>
<td headers="Eastern  team_label" class="gt_row gt_left">PHI</td>
<td headers="Eastern  wins" class="gt_row gt_right">25</td>
<td headers="Eastern  losses" class="gt_row gt_right">15</td>
<td headers="Eastern  win_pct_text" class="gt_row gt_right">.625</td>
<td headers="Eastern  conference_games_behind" class="gt_row gt_right">4.0</td>
<td headers="Eastern  outcomes" class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='1.89' x2='7.73' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.60' y1='8.91' x2='11.60' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td headers="Eastern  logo_url" class="gt_row gt_right gt_striped"><img src="https://cdn.nba.com/logos/nba/1610612739/primary/L/logo.svg" style="height:12px;"></td>
<td headers="Eastern  team_label" class="gt_row gt_left gt_striped">CLE</td>
<td headers="Eastern  wins" class="gt_row gt_right gt_striped">26</td>
<td headers="Eastern  losses" class="gt_row gt_right gt_striped">16</td>
<td headers="Eastern  win_pct_text" class="gt_row gt_right gt_striped">.619</td>
<td headers="Eastern  conference_games_behind" class="gt_row gt_right gt_striped">4.0</td>
<td headers="Eastern  outcomes" class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='8.91' x2='11.60' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td headers="Eastern  logo_url" class="gt_row gt_right"><img src="https://cdn.nba.com/logos/nba/1610612752/primary/L/logo.svg" style="height:12px;"></td>
<td headers="Eastern  team_label" class="gt_row gt_left">NYK</td>
<td headers="Eastern  wins" class="gt_row gt_right">23</td>
<td headers="Eastern  losses" class="gt_row gt_right">19</td>
<td headers="Eastern  win_pct_text" class="gt_row gt_right">.548</td>
<td headers="Eastern  conference_games_behind" class="gt_row gt_right">7.0</td>
<td headers="Eastern  outcomes" class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='8.91' x2='11.60' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td headers="Eastern  logo_url" class="gt_row gt_right gt_striped"><img src="https://cdn.nba.com/logos/nba/1610612754/primary/L/logo.svg" style="height:12px;"></td>
<td headers="Eastern  team_label" class="gt_row gt_left gt_striped">IND</td>
<td headers="Eastern  wins" class="gt_row gt_right gt_striped">23</td>
<td headers="Eastern  losses" class="gt_row gt_right gt_striped">19</td>
<td headers="Eastern  win_pct_text" class="gt_row gt_right gt_striped">.548</td>
<td headers="Eastern  conference_games_behind" class="gt_row gt_right gt_striped">7.0</td>
<td headers="Eastern  outcomes" class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='1.89' x2='15.46' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td headers="Eastern  logo_url" class="gt_row gt_right"><img src="https://cdn.nba.com/logos/nba/1610612748/primary/L/logo.svg" style="height:12px;"></td>
<td headers="Eastern  team_label" class="gt_row gt_left">MIA</td>
<td headers="Eastern  wins" class="gt_row gt_right">22</td>
<td headers="Eastern  losses" class="gt_row gt_right">20</td>
<td headers="Eastern  win_pct_text" class="gt_row gt_right">.524</td>
<td headers="Eastern  conference_games_behind" class="gt_row gt_right">8.0</td>
<td headers="Eastern  outcomes" class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='1.89' x2='7.73' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td headers="Eastern  logo_url" class="gt_row gt_right gt_striped"><img src="https://cdn.nba.com/logos/nba/1610612737/primary/L/logo.svg" style="height:12px;"></td>
<td headers="Eastern  team_label" class="gt_row gt_left gt_striped">ATL</td>
<td headers="Eastern  wins" class="gt_row gt_right gt_striped">19</td>
<td headers="Eastern  losses" class="gt_row gt_right gt_striped">22</td>
<td headers="Eastern  win_pct_text" class="gt_row gt_right gt_striped">.463</td>
<td headers="Eastern  conference_games_behind" class="gt_row gt_right gt_striped">10.5</td>
<td headers="Eastern  outcomes" class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='1.89' x2='7.73' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.60' y1='8.91' x2='11.60' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='8.91' x2='23.19' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td headers="Eastern  logo_url" class="gt_row gt_right"><img src="https://cdn.nba.com/logos/nba/1610612741/primary/L/logo.svg" style="height:12px;"></td>
<td headers="Eastern  team_label" class="gt_row gt_left">CHI</td>
<td headers="Eastern  wins" class="gt_row gt_right">19</td>
<td headers="Eastern  losses" class="gt_row gt_right">23</td>
<td headers="Eastern  win_pct_text" class="gt_row gt_right">.452</td>
<td headers="Eastern  conference_games_behind" class="gt_row gt_right">11.0</td>
<td headers="Eastern  outcomes" class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='1.89' x2='7.73' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='1.89' x2='27.06' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td headers="Eastern  logo_url" class="gt_row gt_right gt_striped"><img src="https://cdn.nba.com/logos/nba/1610612761/primary/L/logo.svg" style="height:12px;"></td>
<td headers="Eastern  team_label" class="gt_row gt_left gt_striped">TOR</td>
<td headers="Eastern  wins" class="gt_row gt_right gt_striped">18</td>
<td headers="Eastern  losses" class="gt_row gt_right gt_striped">23</td>
<td headers="Eastern  win_pct_text" class="gt_row gt_right gt_striped">.439</td>
<td headers="Eastern  conference_games_behind" class="gt_row gt_right gt_striped">11.5</td>
<td headers="Eastern  outcomes" class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='1.89' x2='7.73' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.60' y1='8.91' x2='11.60' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='8.91' x2='23.19' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='1.89' x2='34.79' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td headers="Eastern  logo_url" class="gt_row gt_right"><img src="https://cdn.nba.com/logos/nba/1610612764/primary/L/logo.svg" style="height:12px;"></td>
<td headers="Eastern  team_label" class="gt_row gt_left">WAS</td>
<td headers="Eastern  wins" class="gt_row gt_right">18</td>
<td headers="Eastern  losses" class="gt_row gt_right">24</td>
<td headers="Eastern  win_pct_text" class="gt_row gt_right">.429</td>
<td headers="Eastern  conference_games_behind" class="gt_row gt_right">12.0</td>
<td headers="Eastern  outcomes" class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='1.89' x2='7.73' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.60' y1='1.89' x2='11.60' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='15.46' y1='1.89' x2='15.46' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.33' y1='1.89' x2='19.33' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td headers="Eastern  logo_url" class="gt_row gt_right gt_striped"><img src="https://cdn.nba.com/logos/nba/1610612753/primary/L/logo.svg" style="height:12px;"></td>
<td headers="Eastern  team_label" class="gt_row gt_left gt_striped">ORL</td>
<td headers="Eastern  wins" class="gt_row gt_right gt_striped">16</td>
<td headers="Eastern  losses" class="gt_row gt_right gt_striped">26</td>
<td headers="Eastern  win_pct_text" class="gt_row gt_right gt_striped">.381</td>
<td headers="Eastern  conference_games_behind" class="gt_row gt_right gt_striped">14.0</td>
<td headers="Eastern  outcomes" class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='1.89' x2='7.73' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.60' y1='8.91' x2='11.60' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='15.46' y1='8.91' x2='15.46' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td headers="Eastern  logo_url" class="gt_row gt_right"><img src="https://cdn.nba.com/logos/nba/1610612765/primary/L/logo.svg" style="height:12px;"></td>
<td headers="Eastern  team_label" class="gt_row gt_left">DET</td>
<td headers="Eastern  wins" class="gt_row gt_right">12</td>
<td headers="Eastern  losses" class="gt_row gt_right">33</td>
<td headers="Eastern  win_pct_text" class="gt_row gt_right">.267</td>
<td headers="Eastern  conference_games_behind" class="gt_row gt_right">19.5</td>
<td headers="Eastern  outcomes" class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='1.89' x2='7.73' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.60' y1='8.91' x2='11.60' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='15.46' y1='1.89' x2='15.46' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='1.89' x2='23.19' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='8.91' x2='30.92' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='1.89' x2='38.65' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td headers="Eastern  logo_url" class="gt_row gt_right gt_striped"><img src="https://cdn.nba.com/logos/nba/1610612766/primary/L/logo.svg" style="height:12px;"></td>
<td headers="Eastern  team_label" class="gt_row gt_left gt_striped">CHA</td>
<td headers="Eastern  wins" class="gt_row gt_right gt_striped">11</td>
<td headers="Eastern  losses" class="gt_row gt_right gt_striped">31</td>
<td headers="Eastern  win_pct_text" class="gt_row gt_right gt_striped">.262</td>
<td headers="Eastern  conference_games_behind" class="gt_row gt_right gt_striped">19.0</td>
<td headers="Eastern  outcomes" class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.60' y1='8.91' x2='11.60' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='15.46' y1='1.89' x2='15.46' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.33' y1='8.91' x2='19.33' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.19' y1='8.91' x2='23.19' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.06' y1='8.91' x2='27.06' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.92' y1='1.89' x2='30.92' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='34.79' y1='8.91' x2='34.79' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='38.65' y1='8.91' x2='38.65' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
  </tbody>
  
  
</table>
</div> 

<picture>
  <source srcset="{{ site.baseurl }}/plots/nba_team_rank.png"
          media="(min-width: 750px)">
  <img src="{{ site.baseurl }}/plots/nba_team_rank_mobile.png" alt="" />
</picture>

Updated standings are posted daily on Mastodon <a rel="me" href="https://mastodon.social/@basketballstandings">@basketballstandings</a>

<p class="updated_time">Source: <a href="https://github.com/fivethirtyeight/data/tree/master/nba-forecasts">FiveThirtyEight</a>. <a href="https://github.com/fivethirtyeight/data/blob/master/LICENSE">CC-BY-4.0 License</a>.</p> 


