---
layout: page
title: Basketball Standings
permalink: /projects/basketball
imageurl: https://bzigterman.com/plots/nba_standings.png
---

<p class="updated_time"> Latest data: 03:23 PM CT, October 27</p> 

<div class = "standings">
<iframe src="/interactive/western_standings.html" width="100%" height="400"> 
</iframe>

<iframe src="/interactive/eastern_standings.html" width="100%" height="400"> 
</iframe>
</div>

<div id="nba_standings_table" style="padding-left:0px;padding-right:0px;padding-top:10px;padding-bottom:10px;overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
  <style>@import url("https://fonts.googleapis.com/css2?family=Lato:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap");
#nba_standings_table table {
  font-family: Lato, system-ui, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji';
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
}

#nba_standings_table thead, #nba_standings_table tbody, #nba_standings_table tfoot, #nba_standings_table tr, #nba_standings_table td, #nba_standings_table th {
  border-style: none;
}

#nba_standings_table p {
  margin: 0;
  padding: 0;
}

#nba_standings_table .gt_table {
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
  padding-top: 3px;
  padding-bottom: 5px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
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

#nba_standings_table .gt_spanner_row {
  border-bottom-style: hidden;
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

#nba_standings_table .gt_row_group_first th {
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

#nba_standings_table .gt_last_grand_summary_row_top {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-bottom-style: double;
  border-bottom-width: 6px;
  border-bottom-color: #D3D3D3;
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
  padding-top: 4px;
  padding-bottom: 4px;
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
  font-size: 75%;
  vertical-align: 0.4em;
  position: initial;
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
  <table class="gt_table" data-quarto-disable-processing="false" data-quarto-bootstrap="false">
  <thead>
    
    <tr class="gt_col_headings">
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id=""></th>
      <th class="gt_col_heading gt_columns_bottom_border gt_left" rowspan="1" colspan="1" scope="col" id="Team">Team</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="W">W</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="L">L</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Pct">Pct</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="GB">GB</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Odds">Odds</th>
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1" scope="col" id="Last 10 Games">Last 10 Games</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr class="gt_group_heading_row">
      <th colspan="8" class="gt_group_heading" scope="colgroup" id="Western">Western</th>
    </tr>
    <tr class="gt_row_group_first"><td headers="Western  logo_url" class="gt_row gt_right"><img src="https://cdn.nba.com/logos/nba/1610612742/primary/L/logo.svg" style="height:12px;"></td>
<td headers="Western  team_label" class="gt_row gt_left">DAL</td>
<td headers="Western  wins" class="gt_row gt_right">1</td>
<td headers="Western  losses" class="gt_row gt_right">0</td>
<td headers="Western  win_pct_text" class="gt_row gt_right">1.000</td>
<td headers="Western  conference_games_behind" class="gt_row gt_right">0.0</td>
<td headers="Western  post" class="gt_row gt_right" style="nba_standings_table-color: #F34C35; color: #FFFFFF;">58.6%</td>
<td headers="Western  outcomes" class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td headers="Western  logo_url" class="gt_row gt_right gt_striped"><img src="https://cdn.nba.com/logos/nba/1610612758/primary/L/logo.svg" style="height:12px;"></td>
<td headers="Western  team_label" class="gt_row gt_left gt_striped">SAC</td>
<td headers="Western  wins" class="gt_row gt_right gt_striped">1</td>
<td headers="Western  losses" class="gt_row gt_right gt_striped">0</td>
<td headers="Western  win_pct_text" class="gt_row gt_right gt_striped">1.000</td>
<td headers="Western  conference_games_behind" class="gt_row gt_right gt_striped">0.0</td>
<td headers="Western  post" class="gt_row gt_right gt_striped" style="nba_standings_table-color: #F34C35; color: #FFFFFF;">58.6%</td>
<td headers="Western  outcomes" class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td headers="Western  logo_url" class="gt_row gt_right"><img src="https://cdn.nba.com/logos/nba/1610612743/primary/L/logo.svg" style="height:12px;"></td>
<td headers="Western  team_label" class="gt_row gt_left">DEN</td>
<td headers="Western  wins" class="gt_row gt_right">1</td>
<td headers="Western  losses" class="gt_row gt_right">0</td>
<td headers="Western  win_pct_text" class="gt_row gt_right">1.000</td>
<td headers="Western  conference_games_behind" class="gt_row gt_right">0.0</td>
<td headers="Western  post" class="gt_row gt_right" style="nba_standings_table-color: #C5161C; color: #FFFFFF;">77.1%</td>
<td headers="Western  outcomes" class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td headers="Western  logo_url" class="gt_row gt_right gt_striped"><img src="https://cdn.nba.com/logos/nba/1610612746/primary/L/logo.svg" style="height:12px;"></td>
<td headers="Western  team_label" class="gt_row gt_left gt_striped">LAC</td>
<td headers="Western  wins" class="gt_row gt_right gt_striped">1</td>
<td headers="Western  losses" class="gt_row gt_right gt_striped">0</td>
<td headers="Western  win_pct_text" class="gt_row gt_right gt_striped">1.000</td>
<td headers="Western  conference_games_behind" class="gt_row gt_right gt_striped">0.0</td>
<td headers="Western  post" class="gt_row gt_right gt_striped" style="nba_standings_table-color: #F45038; color: #FFFFFF;">57.5%</td>
<td headers="Western  outcomes" class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td headers="Western  logo_url" class="gt_row gt_right"><img src="https://cdn.nba.com/logos/nba/1610612740/primary/L/logo.svg" style="height:12px;"></td>
<td headers="Western  team_label" class="gt_row gt_left">NOP</td>
<td headers="Western  wins" class="gt_row gt_right">1</td>
<td headers="Western  losses" class="gt_row gt_right">0</td>
<td headers="Western  win_pct_text" class="gt_row gt_right">1.000</td>
<td headers="Western  conference_games_behind" class="gt_row gt_right">0.0</td>
<td headers="Western  post" class="gt_row gt_right" style="nba_standings_table-color: #F24934; color: #FFFFFF;">59.3%</td>
<td headers="Western  outcomes" class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td headers="Western  logo_url" class="gt_row gt_right gt_striped"><img src="https://cdn.nba.com/logos/nba/1610612760/primary/L/logo.svg" style="height:12px;"></td>
<td headers="Western  team_label" class="gt_row gt_left gt_striped">OKC</td>
<td headers="Western  wins" class="gt_row gt_right gt_striped">1</td>
<td headers="Western  losses" class="gt_row gt_right gt_striped">0</td>
<td headers="Western  win_pct_text" class="gt_row gt_right gt_striped">1.000</td>
<td headers="Western  conference_games_behind" class="gt_row gt_right gt_striped">0.0</td>
<td headers="Western  post" class="gt_row gt_right gt_striped" style="nba_standings_table-color: #F45139; color: #FFFFFF;">57.2%</td>
<td headers="Western  outcomes" class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td headers="Western  logo_url" class="gt_row gt_right"><img src="https://cdn.nba.com/logos/nba/1610612747/primary/L/logo.svg" style="height:12px;"></td>
<td headers="Western  team_label" class="gt_row gt_left">LAL</td>
<td headers="Western  wins" class="gt_row gt_right">1</td>
<td headers="Western  losses" class="gt_row gt_right">1</td>
<td headers="Western  win_pct_text" class="gt_row gt_right">.500</td>
<td headers="Western  conference_games_behind" class="gt_row gt_right">0.5</td>
<td headers="Western  post" class="gt_row gt_right" style="nba_standings_table-color: #E73529; color: #FFFFFF;">65.1%</td>
<td headers="Western  outcomes" class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.73' y1='1.89' x2='7.73' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td headers="Western  logo_url" class="gt_row gt_right gt_striped"><img src="https://cdn.nba.com/logos/nba/1610612756/primary/L/logo.svg" style="height:12px;"></td>
<td headers="Western  team_label" class="gt_row gt_left gt_striped">PHX</td>
<td headers="Western  wins" class="gt_row gt_right gt_striped">1</td>
<td headers="Western  losses" class="gt_row gt_right gt_striped">1</td>
<td headers="Western  win_pct_text" class="gt_row gt_right gt_striped">.500</td>
<td headers="Western  conference_games_behind" class="gt_row gt_right gt_striped">0.5</td>
<td headers="Western  post" class="gt_row gt_right gt_striped" style="nba_standings_table-color: #FD9C7D; color: #000000;">34.4%</td>
<td headers="Western  outcomes" class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.73' y1='8.91' x2='7.73' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td headers="Western  logo_url" class="gt_row gt_right"><img src="https://cdn.nba.com/logos/nba/1610612744/primary/L/logo.svg" style="height:12px;"></td>
<td headers="Western  team_label" class="gt_row gt_left">GSW</td>
<td headers="Western  wins" class="gt_row gt_right">0</td>
<td headers="Western  losses" class="gt_row gt_right">1</td>
<td headers="Western  win_pct_text" class="gt_row gt_right">.0</td>
<td headers="Western  conference_games_behind" class="gt_row gt_right">1.0</td>
<td headers="Western  post" class="gt_row gt_right" style="nba_standings_table-color: #FC9677; color: #000000;">36.2%</td>
<td headers="Western  outcomes" class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td headers="Western  logo_url" class="gt_row gt_right gt_striped"><img src="https://cdn.nba.com/logos/nba/1610612762/primary/L/logo.svg" style="height:12px;"></td>
<td headers="Western  team_label" class="gt_row gt_left gt_striped">UTA</td>
<td headers="Western  wins" class="gt_row gt_right gt_striped">0</td>
<td headers="Western  losses" class="gt_row gt_right gt_striped">1</td>
<td headers="Western  win_pct_text" class="gt_row gt_right gt_striped">.0</td>
<td headers="Western  conference_games_behind" class="gt_row gt_right gt_striped">1.0</td>
<td headers="Western  post" class="gt_row gt_right gt_striped" style="nba_standings_table-color: #FB6E4D; color: #FFFFFF;">48.9%</td>
<td headers="Western  outcomes" class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td headers="Western  logo_url" class="gt_row gt_right"><img src="https://cdn.nba.com/logos/nba/1610612750/primary/L/logo.svg" style="height:12px;"></td>
<td headers="Western  team_label" class="gt_row gt_left">MIN</td>
<td headers="Western  wins" class="gt_row gt_right">0</td>
<td headers="Western  losses" class="gt_row gt_right">1</td>
<td headers="Western  win_pct_text" class="gt_row gt_right">.0</td>
<td headers="Western  conference_games_behind" class="gt_row gt_right">1.0</td>
<td headers="Western  post" class="gt_row gt_right" style="nba_standings_table-color: #FB6C4C; color: #FFFFFF;">49.5%</td>
<td headers="Western  outcomes" class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td headers="Western  logo_url" class="gt_row gt_right gt_striped"><img src="https://cdn.nba.com/logos/nba/1610612757/primary/L/logo.svg" style="height:12px;"></td>
<td headers="Western  team_label" class="gt_row gt_left gt_striped">POR</td>
<td headers="Western  wins" class="gt_row gt_right gt_striped">0</td>
<td headers="Western  losses" class="gt_row gt_right gt_striped">1</td>
<td headers="Western  win_pct_text" class="gt_row gt_right gt_striped">.0</td>
<td headers="Western  conference_games_behind" class="gt_row gt_right gt_striped">1.0</td>
<td headers="Western  post" class="gt_row gt_right gt_striped" style="nba_standings_table-color: #FB6A4A; color: #FFFFFF;">49.9%</td>
<td headers="Western  outcomes" class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td headers="Western  logo_url" class="gt_row gt_right"><img src="https://cdn.nba.com/logos/nba/1610612763/primary/L/logo.svg" style="height:12px;"></td>
<td headers="Western  team_label" class="gt_row gt_left">MEM</td>
<td headers="Western  wins" class="gt_row gt_right">0</td>
<td headers="Western  losses" class="gt_row gt_right">1</td>
<td headers="Western  win_pct_text" class="gt_row gt_right">.0</td>
<td headers="Western  conference_games_behind" class="gt_row gt_right">1.0</td>
<td headers="Western  post" class="gt_row gt_right" style="nba_standings_table-color: #FB7151; color: #FFFFFF;">47.9%</td>
<td headers="Western  outcomes" class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td headers="Western  logo_url" class="gt_row gt_right gt_striped"><img src="https://cdn.nba.com/logos/nba/1610612745/primary/L/logo.svg" style="height:12px;"></td>
<td headers="Western  team_label" class="gt_row gt_left gt_striped">HOU</td>
<td headers="Western  wins" class="gt_row gt_right gt_striped">0</td>
<td headers="Western  losses" class="gt_row gt_right gt_striped">1</td>
<td headers="Western  win_pct_text" class="gt_row gt_right gt_striped">.0</td>
<td headers="Western  conference_games_behind" class="gt_row gt_right gt_striped">1.0</td>
<td headers="Western  post" class="gt_row gt_right gt_striped" style="nba_standings_table-color: #FA6647; color: #FFFFFF;">51.3%</td>
<td headers="Western  outcomes" class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td headers="Western  logo_url" class="gt_row gt_right"><img src="https://cdn.nba.com/logos/nba/1610612759/primary/L/logo.svg" style="height:12px;"></td>
<td headers="Western  team_label" class="gt_row gt_left">SAS</td>
<td headers="Western  wins" class="gt_row gt_right">0</td>
<td headers="Western  losses" class="gt_row gt_right">1</td>
<td headers="Western  win_pct_text" class="gt_row gt_right">.0</td>
<td headers="Western  conference_games_behind" class="gt_row gt_right">1.0</td>
<td headers="Western  post" class="gt_row gt_right" style="nba_standings_table-color: #FB6E4E; color: #FFFFFF;">48.7%</td>
<td headers="Western  outcomes" class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr class="gt_group_heading_row">
      <th colspan="8" class="gt_group_heading" scope="colgroup" id="Eastern">Eastern</th>
    </tr>
    <tr class="gt_row_group_first"><td headers="Eastern  logo_url" class="gt_row gt_right gt_striped"><img src="https://cdn.nba.com/logos/nba/1610612766/primary/L/logo.svg" style="height:12px;"></td>
<td headers="Eastern  team_label" class="gt_row gt_left gt_striped">CHA</td>
<td headers="Eastern  wins" class="gt_row gt_right gt_striped">1</td>
<td headers="Eastern  losses" class="gt_row gt_right gt_striped">0</td>
<td headers="Eastern  win_pct_text" class="gt_row gt_right gt_striped">1.000</td>
<td headers="Eastern  conference_games_behind" class="gt_row gt_right gt_striped">0.0</td>
<td headers="Eastern  post" class="gt_row gt_right gt_striped" style="nba_standings_table-color: #F45138; color: #FFFFFF;">57.3%</td>
<td headers="Eastern  outcomes" class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td headers="Eastern  logo_url" class="gt_row gt_right"><img src="https://cdn.nba.com/logos/nba/1610612748/primary/L/logo.svg" style="height:12px;"></td>
<td headers="Eastern  team_label" class="gt_row gt_left">MIA</td>
<td headers="Eastern  wins" class="gt_row gt_right">1</td>
<td headers="Eastern  losses" class="gt_row gt_right">0</td>
<td headers="Eastern  win_pct_text" class="gt_row gt_right">1.000</td>
<td headers="Eastern  conference_games_behind" class="gt_row gt_right">0.0</td>
<td headers="Eastern  post" class="gt_row gt_right" style="nba_standings_table-color: #F45139; color: #FFFFFF;">57.1%</td>
<td headers="Eastern  outcomes" class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td headers="Eastern  logo_url" class="gt_row gt_right gt_striped"><img src="https://cdn.nba.com/logos/nba/1610612749/primary/L/logo.svg" style="height:12px;"></td>
<td headers="Eastern  team_label" class="gt_row gt_left gt_striped">MIL</td>
<td headers="Eastern  wins" class="gt_row gt_right gt_striped">1</td>
<td headers="Eastern  losses" class="gt_row gt_right gt_striped">0</td>
<td headers="Eastern  win_pct_text" class="gt_row gt_right gt_striped">1.000</td>
<td headers="Eastern  conference_games_behind" class="gt_row gt_right gt_striped">0.0</td>
<td headers="Eastern  post" class="gt_row gt_right gt_striped" style="nba_standings_table-color: #F44F38; color: #FFFFFF;">57.6%</td>
<td headers="Eastern  outcomes" class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td headers="Eastern  logo_url" class="gt_row gt_right"><img src="https://cdn.nba.com/logos/nba/1610612739/primary/L/logo.svg" style="height:12px;"></td>
<td headers="Eastern  team_label" class="gt_row gt_left">CLE</td>
<td headers="Eastern  wins" class="gt_row gt_right">1</td>
<td headers="Eastern  losses" class="gt_row gt_right">0</td>
<td headers="Eastern  win_pct_text" class="gt_row gt_right">1.000</td>
<td headers="Eastern  conference_games_behind" class="gt_row gt_right">0.0</td>
<td headers="Eastern  post" class="gt_row gt_right" style="nba_standings_table-color: #F34C36; color: #FFFFFF;">58.5%</td>
<td headers="Eastern  outcomes" class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td headers="Eastern  logo_url" class="gt_row gt_right gt_striped"><img src="https://cdn.nba.com/logos/nba/1610612761/primary/L/logo.svg" style="height:12px;"></td>
<td headers="Eastern  team_label" class="gt_row gt_left gt_striped">TOR</td>
<td headers="Eastern  wins" class="gt_row gt_right gt_striped">1</td>
<td headers="Eastern  losses" class="gt_row gt_right gt_striped">0</td>
<td headers="Eastern  win_pct_text" class="gt_row gt_right gt_striped">1.000</td>
<td headers="Eastern  conference_games_behind" class="gt_row gt_right gt_striped">0.0</td>
<td headers="Eastern  post" class="gt_row gt_right gt_striped" style="nba_standings_table-color: #F5553B; color: #FFFFFF;">56.2%</td>
<td headers="Eastern  outcomes" class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td headers="Eastern  logo_url" class="gt_row gt_right"><img src="https://cdn.nba.com/logos/nba/1610612738/primary/L/logo.svg" style="height:12px;"></td>
<td headers="Eastern  team_label" class="gt_row gt_left">BOS</td>
<td headers="Eastern  wins" class="gt_row gt_right">1</td>
<td headers="Eastern  losses" class="gt_row gt_right">0</td>
<td headers="Eastern  win_pct_text" class="gt_row gt_right">1.000</td>
<td headers="Eastern  conference_games_behind" class="gt_row gt_right">0.0</td>
<td headers="Eastern  post" class="gt_row gt_right" style="nba_standings_table-color: #F34D36; color: #FFFFFF;">58.3%</td>
<td headers="Eastern  outcomes" class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td headers="Eastern  logo_url" class="gt_row gt_right gt_striped"><img src="https://cdn.nba.com/logos/nba/1610612753/primary/L/logo.svg" style="height:12px;"></td>
<td headers="Eastern  team_label" class="gt_row gt_left gt_striped">ORL</td>
<td headers="Eastern  wins" class="gt_row gt_right gt_striped">1</td>
<td headers="Eastern  losses" class="gt_row gt_right gt_striped">0</td>
<td headers="Eastern  win_pct_text" class="gt_row gt_right gt_striped">1.000</td>
<td headers="Eastern  conference_games_behind" class="gt_row gt_right gt_striped">0.0</td>
<td headers="Eastern  post" class="gt_row gt_right gt_striped" style="nba_standings_table-color: #F44F37; color: #FFFFFF;">57.8%</td>
<td headers="Eastern  outcomes" class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td headers="Eastern  logo_url" class="gt_row gt_right"><img src="https://cdn.nba.com/logos/nba/1610612754/primary/L/logo.svg" style="height:12px;"></td>
<td headers="Eastern  team_label" class="gt_row gt_left">IND</td>
<td headers="Eastern  wins" class="gt_row gt_right">1</td>
<td headers="Eastern  losses" class="gt_row gt_right">0</td>
<td headers="Eastern  win_pct_text" class="gt_row gt_right">1.000</td>
<td headers="Eastern  conference_games_behind" class="gt_row gt_right">0.0</td>
<td headers="Eastern  post" class="gt_row gt_right" style="nba_standings_table-color: #F55239; color: #FFFFFF;">56.9%</td>
<td headers="Eastern  outcomes" class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='1.89' x2='3.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td headers="Eastern  logo_url" class="gt_row gt_right gt_striped"><img src="https://cdn.nba.com/logos/nba/1610612741/primary/L/logo.svg" style="height:12px;"></td>
<td headers="Eastern  team_label" class="gt_row gt_left gt_striped">CHI</td>
<td headers="Eastern  wins" class="gt_row gt_right gt_striped">0</td>
<td headers="Eastern  losses" class="gt_row gt_right gt_striped">1</td>
<td headers="Eastern  win_pct_text" class="gt_row gt_right gt_striped">.0</td>
<td headers="Eastern  conference_games_behind" class="gt_row gt_right gt_striped">1.0</td>
<td headers="Eastern  post" class="gt_row gt_right gt_striped" style="nba_standings_table-color: #FC7252; color: #FFFFFF;">47.5%</td>
<td headers="Eastern  outcomes" class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td headers="Eastern  logo_url" class="gt_row gt_right"><img src="https://cdn.nba.com/logos/nba/1610612752/primary/L/logo.svg" style="height:12px;"></td>
<td headers="Eastern  team_label" class="gt_row gt_left">NYK</td>
<td headers="Eastern  wins" class="gt_row gt_right">0</td>
<td headers="Eastern  losses" class="gt_row gt_right">1</td>
<td headers="Eastern  win_pct_text" class="gt_row gt_right">.0</td>
<td headers="Eastern  conference_games_behind" class="gt_row gt_right">1.0</td>
<td headers="Eastern  post" class="gt_row gt_right" style="nba_standings_table-color: #FB7151; color: #FFFFFF;">47.8%</td>
<td headers="Eastern  outcomes" class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td headers="Eastern  logo_url" class="gt_row gt_right gt_striped"><img src="https://cdn.nba.com/logos/nba/1610612764/primary/L/logo.svg" style="height:12px;"></td>
<td headers="Eastern  team_label" class="gt_row gt_left gt_striped">WSH</td>
<td headers="Eastern  wins" class="gt_row gt_right gt_striped">0</td>
<td headers="Eastern  losses" class="gt_row gt_right gt_striped">1</td>
<td headers="Eastern  win_pct_text" class="gt_row gt_right gt_striped">.0</td>
<td headers="Eastern  conference_games_behind" class="gt_row gt_right gt_striped">1.0</td>
<td headers="Eastern  post" class="gt_row gt_right gt_striped" style="nba_standings_table-color: #FB6D4D; color: #FFFFFF;">49.2%</td>
<td headers="Eastern  outcomes" class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td headers="Eastern  logo_url" class="gt_row gt_right"><img src="https://cdn.nba.com/logos/nba/1610612737/primary/L/logo.svg" style="height:12px;"></td>
<td headers="Eastern  team_label" class="gt_row gt_left">ATL</td>
<td headers="Eastern  wins" class="gt_row gt_right">0</td>
<td headers="Eastern  losses" class="gt_row gt_right">1</td>
<td headers="Eastern  win_pct_text" class="gt_row gt_right">.0</td>
<td headers="Eastern  conference_games_behind" class="gt_row gt_right">1.0</td>
<td headers="Eastern  post" class="gt_row gt_right" style="nba_standings_table-color: #FB6B4B; color: #FFFFFF;">49.6%</td>
<td headers="Eastern  outcomes" class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td headers="Eastern  logo_url" class="gt_row gt_right gt_striped"><img src="https://cdn.nba.com/logos/nba/1610612755/primary/L/logo.svg" style="height:12px;"></td>
<td headers="Eastern  team_label" class="gt_row gt_left gt_striped">PHI</td>
<td headers="Eastern  wins" class="gt_row gt_right gt_striped">0</td>
<td headers="Eastern  losses" class="gt_row gt_right gt_striped">1</td>
<td headers="Eastern  win_pct_text" class="gt_row gt_right gt_striped">.0</td>
<td headers="Eastern  conference_games_behind" class="gt_row gt_right gt_striped">1.0</td>
<td headers="Eastern  post" class="gt_row gt_right gt_striped" style="nba_standings_table-color: #FB6B4B; color: #FFFFFF;">49.7%</td>
<td headers="Eastern  outcomes" class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td headers="Eastern  logo_url" class="gt_row gt_right"><img src="https://cdn.nba.com/logos/nba/1610612751/primary/L/logo.svg" style="height:12px;"></td>
<td headers="Eastern  team_label" class="gt_row gt_left">BKN</td>
<td headers="Eastern  wins" class="gt_row gt_right">0</td>
<td headers="Eastern  losses" class="gt_row gt_right">1</td>
<td headers="Eastern  win_pct_text" class="gt_row gt_right">.0</td>
<td headers="Eastern  conference_games_behind" class="gt_row gt_right">1.0</td>
<td headers="Eastern  post" class="gt_row gt_right" style="nba_standings_table-color: #FB7151; color: #FFFFFF;">47.9%</td>
<td headers="Eastern  outcomes" class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td headers="Eastern  logo_url" class="gt_row gt_right gt_striped"><img src="https://cdn.nba.com/logos/nba/1610612765/primary/L/logo.svg" style="height:12px;"></td>
<td headers="Eastern  team_label" class="gt_row gt_left gt_striped">DET</td>
<td headers="Eastern  wins" class="gt_row gt_right gt_striped">0</td>
<td headers="Eastern  losses" class="gt_row gt_right gt_striped">1</td>
<td headers="Eastern  win_pct_text" class="gt_row gt_right gt_striped">.0</td>
<td headers="Eastern  conference_games_behind" class="gt_row gt_right gt_striped">1.0</td>
<td headers="Eastern  post" class="gt_row gt_right gt_striped" style="nba_standings_table-color: #FB6F4E; color: #FFFFFF;">48.6%</td>
<td headers="Eastern  outcomes" class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='42.52pt' height='10.80pt' viewBox='0 0 42.52 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }    .svglite text {      white-space: pre;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='42.52' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw0Mi41MnwwLjAwfDEwLjgw)'><line x1='3.87' y1='8.91' x2='3.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
  </tbody>
  
  
</table>
</div> 

<picture>
  <source srcset="{{ site.baseurl }}/plots/nba_team_rank.png"
          media="(min-width: 750px)">
  <img src="{{ site.baseurl }}/plots/nba_team_rank_mobile.png" alt="" />
</picture>

Chart inspired by those in the [Pennant app](http://www.pennantapp.com).

Updated standings are posted daily on Mastodon <a rel="me" href="https://mastodon.social/@basketballstandings">@basketballstandings</a>

<p class="updated_time">Source: <a href="https://www.basketball-reference.com">Basketball Reference</a>.</p> 


