---
layout: page
title: Basketball Standings
permalink: /projects/basketball/
---

<p class="updated_time"> Latest data: 09:17 PM CT, November 12</p> 

![Standings]({{ site.baseurl }}/plots/nba_standings.png)

<div id="nba_standings_table" style="overflow-x:auto;overflow-y:auto;width:auto;height:auto;">
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

#nba_standings_table .gt_title {
  color: #333333;
  font-size: 24px;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

#nba_standings_table .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 6px;
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
  padding-left: 12px;
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
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: solid;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
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
  padding: 4px;
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
  padding: 4px;
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
  font-size: 65%;
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
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">Last 20<br>Games</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr class="gt_group_heading_row">
      <td colspan="6" class="gt_group_heading">Western</td>
    </tr>
    <tr><td class="gt_row gt_right"><img src="https://cdn.nba.com/logos/nba/1610612744/primary/L/logo.svg" style="height:12px;"></td>
<td class="gt_row gt_left">GSW</td>
<td class="gt_row gt_right">10</td>
<td class="gt_row gt_right">1</td>
<td class="gt_row gt_right">.909</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><line x1='4.42' y1='1.89' x2='4.42' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.36' y1='1.89' x2='7.36' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='10.31' y1='1.89' x2='10.31' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='13.25' y1='1.89' x2='13.25' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='16.20' y1='8.91' x2='16.20' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.15' y1='1.89' x2='19.15' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='22.09' y1='1.89' x2='22.09' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='25.04' y1='1.89' x2='25.04' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.98' y1='1.89' x2='27.98' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.93' y1='1.89' x2='30.93' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='33.87' y1='1.89' x2='33.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right gt_striped"><img src="https://cdn.nba.com/logos/nba/1610612756/primary/L/logo.svg" style="height:12px;"></td>
<td class="gt_row gt_left gt_striped">PHX</td>
<td class="gt_row gt_right gt_striped">7</td>
<td class="gt_row gt_right gt_striped">3</td>
<td class="gt_row gt_right gt_striped">.700</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><line x1='4.42' y1='8.91' x2='4.42' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.36' y1='1.89' x2='7.36' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='10.31' y1='8.91' x2='10.31' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='13.25' y1='8.91' x2='13.25' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='16.20' y1='1.89' x2='16.20' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.15' y1='1.89' x2='19.15' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='22.09' y1='1.89' x2='22.09' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='25.04' y1='1.89' x2='25.04' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.98' y1='1.89' x2='27.98' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.93' y1='1.89' x2='30.93' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right"><img src="https://cdn.nba.com/logos/nba/1610612762/primary/L/logo.svg" style="height:12px;"></td>
<td class="gt_row gt_left">UTA</td>
<td class="gt_row gt_right">8</td>
<td class="gt_row gt_right">4</td>
<td class="gt_row gt_right">.667</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><line x1='4.42' y1='1.89' x2='4.42' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.36' y1='1.89' x2='7.36' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='10.31' y1='1.89' x2='10.31' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='13.25' y1='1.89' x2='13.25' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='16.20' y1='8.91' x2='16.20' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.15' y1='1.89' x2='19.15' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='22.09' y1='1.89' x2='22.09' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='25.04' y1='1.89' x2='25.04' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.98' y1='8.91' x2='27.98' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.93' y1='8.91' x2='30.93' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='33.87' y1='1.89' x2='33.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='36.82' y1='8.91' x2='36.82' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right gt_striped"><img src="https://cdn.nba.com/logos/nba/1610612742/primary/L/logo.svg" style="height:12px;"></td>
<td class="gt_row gt_left gt_striped">DAL</td>
<td class="gt_row gt_right gt_striped">7</td>
<td class="gt_row gt_right gt_striped">4</td>
<td class="gt_row gt_right gt_striped">.636</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><line x1='4.42' y1='8.91' x2='4.42' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.36' y1='1.89' x2='7.36' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='10.31' y1='1.89' x2='10.31' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='13.25' y1='1.89' x2='13.25' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='16.20' y1='8.91' x2='16.20' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.15' y1='1.89' x2='19.15' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='22.09' y1='8.91' x2='22.09' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='25.04' y1='1.89' x2='25.04' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.98' y1='1.89' x2='27.98' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.93' y1='1.89' x2='30.93' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='33.87' y1='8.91' x2='33.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right"><img src="https://cdn.nba.com/logos/nba/1610612743/primary/L/logo.svg" style="height:12px;"></td>
<td class="gt_row gt_left">DEN</td>
<td class="gt_row gt_right">7</td>
<td class="gt_row gt_right">4</td>
<td class="gt_row gt_right">.636</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><line x1='4.42' y1='1.89' x2='4.42' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.36' y1='1.89' x2='7.36' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='10.31' y1='8.91' x2='10.31' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='13.25' y1='8.91' x2='13.25' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='16.20' y1='1.89' x2='16.20' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.15' y1='1.89' x2='19.15' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='22.09' y1='8.91' x2='22.09' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='25.04' y1='8.91' x2='25.04' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.98' y1='1.89' x2='27.98' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.93' y1='1.89' x2='30.93' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='33.87' y1='1.89' x2='33.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right gt_striped"><img src="https://cdn.nba.com/logos/nba/1610612746/primary/L/logo.svg" style="height:12px;"></td>
<td class="gt_row gt_left gt_striped">LAC</td>
<td class="gt_row gt_right gt_striped">7</td>
<td class="gt_row gt_right gt_striped">4</td>
<td class="gt_row gt_right gt_striped">.636</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><line x1='4.42' y1='8.91' x2='4.42' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.36' y1='8.91' x2='7.36' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='10.31' y1='1.89' x2='10.31' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='13.25' y1='8.91' x2='13.25' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='16.20' y1='8.91' x2='16.20' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.15' y1='1.89' x2='19.15' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='22.09' y1='1.89' x2='22.09' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='25.04' y1='1.89' x2='25.04' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.98' y1='1.89' x2='27.98' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.93' y1='1.89' x2='30.93' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='33.87' y1='1.89' x2='33.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right"><img src="https://cdn.nba.com/logos/nba/1610612747/primary/L/logo.svg" style="height:12px;"></td>
<td class="gt_row gt_left">LAL</td>
<td class="gt_row gt_right">7</td>
<td class="gt_row gt_right">5</td>
<td class="gt_row gt_right">.583</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><line x1='4.42' y1='8.91' x2='4.42' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.36' y1='8.91' x2='7.36' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='10.31' y1='1.89' x2='10.31' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='13.25' y1='1.89' x2='13.25' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='16.20' y1='8.91' x2='16.20' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.15' y1='1.89' x2='19.15' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='22.09' y1='1.89' x2='22.09' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='25.04' y1='1.89' x2='25.04' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.98' y1='8.91' x2='27.98' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.93' y1='8.91' x2='30.93' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='33.87' y1='1.89' x2='33.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='36.82' y1='1.89' x2='36.82' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right gt_striped"><img src="https://cdn.nba.com/logos/nba/1610612763/primary/L/logo.svg" style="height:12px;"></td>
<td class="gt_row gt_left gt_striped">MEM</td>
<td class="gt_row gt_right gt_striped">6</td>
<td class="gt_row gt_right gt_striped">5</td>
<td class="gt_row gt_right gt_striped">.545</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><line x1='4.42' y1='1.89' x2='4.42' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.36' y1='1.89' x2='7.36' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='10.31' y1='8.91' x2='10.31' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='13.25' y1='8.91' x2='13.25' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='16.20' y1='1.89' x2='16.20' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.15' y1='8.91' x2='19.15' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='22.09' y1='1.89' x2='22.09' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='25.04' y1='1.89' x2='25.04' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.98' y1='8.91' x2='27.98' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.93' y1='1.89' x2='30.93' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='33.87' y1='8.91' x2='33.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right"><img src="https://cdn.nba.com/logos/nba/1610612758/primary/L/logo.svg" style="height:12px;"></td>
<td class="gt_row gt_left">SAC</td>
<td class="gt_row gt_right">5</td>
<td class="gt_row gt_right">7</td>
<td class="gt_row gt_right">.417</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><line x1='4.42' y1='1.89' x2='4.42' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.36' y1='8.91' x2='7.36' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='10.31' y1='8.91' x2='10.31' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='13.25' y1='1.89' x2='13.25' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='16.20' y1='1.89' x2='16.20' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.15' y1='8.91' x2='19.15' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='22.09' y1='8.91' x2='22.09' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='25.04' y1='1.89' x2='25.04' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.98' y1='1.89' x2='27.98' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.93' y1='8.91' x2='30.93' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='33.87' y1='8.91' x2='33.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='36.82' y1='8.91' x2='36.82' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right gt_striped"><img src="https://cdn.nba.com/logos/nba/1610612757/primary/L/logo.svg" style="height:12px;"></td>
<td class="gt_row gt_left gt_striped">POR</td>
<td class="gt_row gt_right gt_striped">5</td>
<td class="gt_row gt_right gt_striped">7</td>
<td class="gt_row gt_right gt_striped">.417</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><line x1='4.42' y1='8.91' x2='4.42' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.36' y1='1.89' x2='7.36' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='10.31' y1='8.91' x2='10.31' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='13.25' y1='1.89' x2='13.25' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='16.20' y1='1.89' x2='16.20' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.15' y1='8.91' x2='19.15' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='22.09' y1='8.91' x2='22.09' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='25.04' y1='8.91' x2='25.04' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.98' y1='1.89' x2='27.98' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.93' y1='1.89' x2='30.93' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='33.87' y1='8.91' x2='33.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='36.82' y1='8.91' x2='36.82' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right"><img src="https://cdn.nba.com/logos/nba/1610612760/primary/L/logo.svg" style="height:12px;"></td>
<td class="gt_row gt_left">OKC</td>
<td class="gt_row gt_right">4</td>
<td class="gt_row gt_right">6</td>
<td class="gt_row gt_right">.400</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><line x1='4.42' y1='8.91' x2='4.42' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.36' y1='8.91' x2='7.36' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='10.31' y1='8.91' x2='10.31' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='13.25' y1='8.91' x2='13.25' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='16.20' y1='1.89' x2='16.20' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.15' y1='8.91' x2='19.15' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='22.09' y1='8.91' x2='22.09' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='25.04' y1='1.89' x2='25.04' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.98' y1='1.89' x2='27.98' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.93' y1='1.89' x2='30.93' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right gt_striped"><img src="https://cdn.nba.com/logos/nba/1610612759/primary/L/logo.svg" style="height:12px;"></td>
<td class="gt_row gt_left gt_striped">SAS</td>
<td class="gt_row gt_right gt_striped">4</td>
<td class="gt_row gt_right gt_striped">7</td>
<td class="gt_row gt_right gt_striped">.364</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><line x1='4.42' y1='1.89' x2='4.42' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.36' y1='8.91' x2='7.36' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='10.31' y1='8.91' x2='10.31' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='13.25' y1='8.91' x2='13.25' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='16.20' y1='8.91' x2='16.20' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.15' y1='1.89' x2='19.15' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='22.09' y1='8.91' x2='22.09' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='25.04' y1='8.91' x2='25.04' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.98' y1='1.89' x2='27.98' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.93' y1='8.91' x2='30.93' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='33.87' y1='1.89' x2='33.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right"><img src="https://cdn.nba.com/logos/nba/1610612750/primary/L/logo.svg" style="height:12px;"></td>
<td class="gt_row gt_left">MIN</td>
<td class="gt_row gt_right">3</td>
<td class="gt_row gt_right">7</td>
<td class="gt_row gt_right">.300</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><line x1='4.42' y1='1.89' x2='4.42' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.36' y1='1.89' x2='7.36' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='10.31' y1='8.91' x2='10.31' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='13.25' y1='1.89' x2='13.25' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='16.20' y1='8.91' x2='16.20' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.15' y1='8.91' x2='19.15' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='22.09' y1='8.91' x2='22.09' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='25.04' y1='8.91' x2='25.04' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.98' y1='8.91' x2='27.98' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.93' y1='8.91' x2='30.93' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right gt_striped"><img src="https://cdn.nba.com/logos/nba/1610612745/primary/L/logo.svg" style="height:12px;"></td>
<td class="gt_row gt_left gt_striped">HOU</td>
<td class="gt_row gt_right gt_striped">1</td>
<td class="gt_row gt_right gt_striped">10</td>
<td class="gt_row gt_right gt_striped">.91</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><line x1='4.42' y1='8.91' x2='4.42' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.36' y1='1.89' x2='7.36' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='10.31' y1='8.91' x2='10.31' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='13.25' y1='8.91' x2='13.25' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='16.20' y1='8.91' x2='16.20' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.15' y1='8.91' x2='19.15' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='22.09' y1='8.91' x2='22.09' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='25.04' y1='8.91' x2='25.04' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.98' y1='8.91' x2='27.98' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.93' y1='8.91' x2='30.93' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='33.87' y1='8.91' x2='33.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right"><img src="https://cdn.nba.com/logos/nba/1610612740/primary/L/logo.svg" style="height:12px;"></td>
<td class="gt_row gt_left">NOP</td>
<td class="gt_row gt_right">1</td>
<td class="gt_row gt_right">11</td>
<td class="gt_row gt_right">.83</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><line x1='4.42' y1='8.91' x2='4.42' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.36' y1='8.91' x2='7.36' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='10.31' y1='8.91' x2='10.31' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='13.25' y1='1.89' x2='13.25' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='16.20' y1='8.91' x2='16.20' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.15' y1='8.91' x2='19.15' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='22.09' y1='8.91' x2='22.09' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='25.04' y1='8.91' x2='25.04' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.98' y1='8.91' x2='27.98' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.93' y1='8.91' x2='30.93' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='33.87' y1='8.91' x2='33.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='36.82' y1='8.91' x2='36.82' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr class="gt_group_heading_row">
      <td colspan="6" class="gt_group_heading">Eastern</td>
    </tr>
    <tr><td class="gt_row gt_right gt_striped"><img src="https://cdn.nba.com/logos/nba/1610612741/primary/L/logo.svg" style="height:12px;"></td>
<td class="gt_row gt_left gt_striped">CHI</td>
<td class="gt_row gt_right gt_striped">8</td>
<td class="gt_row gt_right gt_striped">3</td>
<td class="gt_row gt_right gt_striped">.727</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><line x1='4.42' y1='1.89' x2='4.42' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.36' y1='1.89' x2='7.36' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='10.31' y1='1.89' x2='10.31' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='13.25' y1='1.89' x2='13.25' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='16.20' y1='8.91' x2='16.20' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.15' y1='1.89' x2='19.15' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='22.09' y1='1.89' x2='22.09' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='25.04' y1='8.91' x2='25.04' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.98' y1='8.91' x2='27.98' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.93' y1='1.89' x2='30.93' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='33.87' y1='1.89' x2='33.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right"><img src="https://cdn.nba.com/logos/nba/1610612764/primary/L/logo.svg" style="height:12px;"></td>
<td class="gt_row gt_left">WAS</td>
<td class="gt_row gt_right">8</td>
<td class="gt_row gt_right">3</td>
<td class="gt_row gt_right">.727</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><line x1='4.42' y1='1.89' x2='4.42' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.36' y1='1.89' x2='7.36' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='10.31' y1='8.91' x2='10.31' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='13.25' y1='1.89' x2='13.25' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='16.20' y1='1.89' x2='16.20' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.15' y1='1.89' x2='19.15' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='22.09' y1='8.91' x2='22.09' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='25.04' y1='8.91' x2='25.04' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.98' y1='1.89' x2='27.98' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.93' y1='1.89' x2='30.93' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='33.87' y1='1.89' x2='33.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right gt_striped"><img src="https://cdn.nba.com/logos/nba/1610612751/primary/L/logo.svg" style="height:12px;"></td>
<td class="gt_row gt_left gt_striped">BKN</td>
<td class="gt_row gt_right gt_striped">8</td>
<td class="gt_row gt_right gt_striped">4</td>
<td class="gt_row gt_right gt_striped">.667</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><line x1='4.42' y1='8.91' x2='4.42' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.36' y1='1.89' x2='7.36' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='10.31' y1='8.91' x2='10.31' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='13.25' y1='1.89' x2='13.25' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='16.20' y1='8.91' x2='16.20' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.15' y1='1.89' x2='19.15' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='22.09' y1='1.89' x2='22.09' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='25.04' y1='1.89' x2='25.04' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.98' y1='1.89' x2='27.98' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.93' y1='1.89' x2='30.93' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='33.87' y1='8.91' x2='33.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='36.82' y1='1.89' x2='36.82' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right"><img src="https://cdn.nba.com/logos/nba/1610612739/primary/L/logo.svg" style="height:12px;"></td>
<td class="gt_row gt_left">CLE</td>
<td class="gt_row gt_right">8</td>
<td class="gt_row gt_right">5</td>
<td class="gt_row gt_right">.615</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><line x1='4.42' y1='8.91' x2='4.42' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.36' y1='8.91' x2='7.36' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='10.31' y1='1.89' x2='10.31' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='13.25' y1='1.89' x2='13.25' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='16.20' y1='1.89' x2='16.20' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.15' y1='8.91' x2='19.15' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='22.09' y1='8.91' x2='22.09' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='25.04' y1='1.89' x2='25.04' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.98' y1='1.89' x2='27.98' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.93' y1='1.89' x2='30.93' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='33.87' y1='1.89' x2='33.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='36.82' y1='8.91' x2='36.82' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='39.76' y1='1.89' x2='39.76' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right gt_striped"><img src="https://cdn.nba.com/logos/nba/1610612755/primary/L/logo.svg" style="height:12px;"></td>
<td class="gt_row gt_left gt_striped">PHI</td>
<td class="gt_row gt_right gt_striped">8</td>
<td class="gt_row gt_right gt_striped">5</td>
<td class="gt_row gt_right gt_striped">.615</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><line x1='4.42' y1='1.89' x2='4.42' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.36' y1='8.91' x2='7.36' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='10.31' y1='1.89' x2='10.31' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='13.25' y1='8.91' x2='13.25' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='16.20' y1='1.89' x2='16.20' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.15' y1='1.89' x2='19.15' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='22.09' y1='1.89' x2='22.09' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='25.04' y1='1.89' x2='25.04' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.98' y1='1.89' x2='27.98' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.93' y1='1.89' x2='30.93' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='33.87' y1='8.91' x2='33.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='36.82' y1='8.91' x2='36.82' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='39.76' y1='8.91' x2='39.76' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right"><img src="https://cdn.nba.com/logos/nba/1610612748/primary/L/logo.svg" style="height:12px;"></td>
<td class="gt_row gt_left">MIA</td>
<td class="gt_row gt_right">7</td>
<td class="gt_row gt_right">5</td>
<td class="gt_row gt_right">.583</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><line x1='4.42' y1='1.89' x2='4.42' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.36' y1='8.91' x2='7.36' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='10.31' y1='1.89' x2='10.31' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='13.25' y1='1.89' x2='13.25' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='16.20' y1='1.89' x2='16.20' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.15' y1='1.89' x2='19.15' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='22.09' y1='1.89' x2='22.09' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='25.04' y1='8.91' x2='25.04' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.98' y1='1.89' x2='27.98' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.93' y1='8.91' x2='30.93' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='33.87' y1='8.91' x2='33.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='36.82' y1='8.91' x2='36.82' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right gt_striped"><img src="https://cdn.nba.com/logos/nba/1610612752/primary/L/logo.svg" style="height:12px;"></td>
<td class="gt_row gt_left gt_striped">NYK</td>
<td class="gt_row gt_right gt_striped">7</td>
<td class="gt_row gt_right gt_striped">6</td>
<td class="gt_row gt_right gt_striped">.538</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><line x1='4.42' y1='1.89' x2='4.42' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.36' y1='1.89' x2='7.36' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='10.31' y1='8.91' x2='10.31' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='13.25' y1='1.89' x2='13.25' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='16.20' y1='1.89' x2='16.20' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.15' y1='1.89' x2='19.15' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='22.09' y1='8.91' x2='22.09' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='25.04' y1='8.91' x2='25.04' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.98' y1='1.89' x2='27.98' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.93' y1='8.91' x2='30.93' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='33.87' y1='1.89' x2='33.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='36.82' y1='8.91' x2='36.82' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='39.76' y1='8.91' x2='39.76' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right"><img src="https://cdn.nba.com/logos/nba/1610612761/primary/L/logo.svg" style="height:12px;"></td>
<td class="gt_row gt_left">TOR</td>
<td class="gt_row gt_right">7</td>
<td class="gt_row gt_right">6</td>
<td class="gt_row gt_right">.538</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><line x1='4.42' y1='8.91' x2='4.42' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.36' y1='1.89' x2='7.36' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='10.31' y1='8.91' x2='10.31' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='13.25' y1='8.91' x2='13.25' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='16.20' y1='1.89' x2='16.20' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.15' y1='1.89' x2='19.15' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='22.09' y1='1.89' x2='22.09' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='25.04' y1='1.89' x2='25.04' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.98' y1='1.89' x2='27.98' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.93' y1='8.91' x2='30.93' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='33.87' y1='8.91' x2='33.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='36.82' y1='8.91' x2='36.82' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='39.76' y1='1.89' x2='39.76' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right gt_striped"><img src="https://cdn.nba.com/logos/nba/1610612766/primary/L/logo.svg" style="height:12px;"></td>
<td class="gt_row gt_left gt_striped">CHA</td>
<td class="gt_row gt_right gt_striped">7</td>
<td class="gt_row gt_right gt_striped">7</td>
<td class="gt_row gt_right gt_striped">.500</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><line x1='4.42' y1='1.89' x2='4.42' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.36' y1='1.89' x2='7.36' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='10.31' y1='1.89' x2='10.31' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='13.25' y1='8.91' x2='13.25' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='16.20' y1='1.89' x2='16.20' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.15' y1='8.91' x2='19.15' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='22.09' y1='1.89' x2='22.09' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='25.04' y1='8.91' x2='25.04' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.98' y1='8.91' x2='27.98' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.93' y1='8.91' x2='30.93' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='33.87' y1='8.91' x2='33.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='36.82' y1='8.91' x2='36.82' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='39.76' y1='1.89' x2='39.76' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='42.71' y1='1.89' x2='42.71' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right"><img src="https://cdn.nba.com/logos/nba/1610612749/primary/L/logo.svg" style="height:12px;"></td>
<td class="gt_row gt_left">MIL</td>
<td class="gt_row gt_right">6</td>
<td class="gt_row gt_right">6</td>
<td class="gt_row gt_right">.500</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><line x1='4.42' y1='1.89' x2='4.42' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.36' y1='8.91' x2='7.36' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='10.31' y1='1.89' x2='10.31' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='13.25' y1='1.89' x2='13.25' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='16.20' y1='8.91' x2='16.20' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.15' y1='8.91' x2='19.15' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='22.09' y1='8.91' x2='22.09' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='25.04' y1='1.89' x2='25.04' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.98' y1='8.91' x2='27.98' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.93' y1='8.91' x2='30.93' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='33.87' y1='1.89' x2='33.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='36.82' y1='1.89' x2='36.82' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right gt_striped"><img src="https://cdn.nba.com/logos/nba/1610612738/primary/L/logo.svg" style="height:12px;"></td>
<td class="gt_row gt_left gt_striped">BOS</td>
<td class="gt_row gt_right gt_striped">5</td>
<td class="gt_row gt_right gt_striped">6</td>
<td class="gt_row gt_right gt_striped">.455</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><line x1='4.42' y1='8.91' x2='4.42' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.36' y1='8.91' x2='7.36' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='10.31' y1='1.89' x2='10.31' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='13.25' y1='1.89' x2='13.25' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='16.20' y1='8.91' x2='16.20' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.15' y1='8.91' x2='19.15' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='22.09' y1='8.91' x2='22.09' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='25.04' y1='1.89' x2='25.04' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.98' y1='1.89' x2='27.98' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.93' y1='8.91' x2='30.93' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='33.87' y1='1.89' x2='33.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right"><img src="https://cdn.nba.com/logos/nba/1610612754/primary/L/logo.svg" style="height:12px;"></td>
<td class="gt_row gt_left">IND</td>
<td class="gt_row gt_right">5</td>
<td class="gt_row gt_right">8</td>
<td class="gt_row gt_right">.385</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><line x1='4.42' y1='8.91' x2='4.42' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.36' y1='8.91' x2='7.36' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='10.31' y1='1.89' x2='10.31' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='13.25' y1='8.91' x2='13.25' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='16.20' y1='8.91' x2='16.20' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.15' y1='8.91' x2='19.15' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='22.09' y1='8.91' x2='22.09' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='25.04' y1='1.89' x2='25.04' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.98' y1='1.89' x2='27.98' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='30.93' y1='8.91' x2='30.93' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='33.87' y1='1.89' x2='33.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='36.82' y1='8.91' x2='36.82' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='39.76' y1='1.89' x2='39.76' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right gt_striped"><img src="https://cdn.nba.com/logos/nba/1610612737/primary/L/logo.svg" style="height:12px;"></td>
<td class="gt_row gt_left gt_striped">ATL</td>
<td class="gt_row gt_right gt_striped">4</td>
<td class="gt_row gt_right gt_striped">8</td>
<td class="gt_row gt_right gt_striped">.333</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><line x1='4.42' y1='1.89' x2='4.42' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='7.36' y1='8.91' x2='7.36' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='10.31' y1='1.89' x2='10.31' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='13.25' y1='1.89' x2='13.25' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='16.20' y1='8.91' x2='16.20' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.15' y1='8.91' x2='19.15' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='22.09' y1='1.89' x2='22.09' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='25.04' y1='8.91' x2='25.04' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.98' y1='8.91' x2='27.98' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.93' y1='8.91' x2='30.93' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='33.87' y1='8.91' x2='33.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='36.82' y1='8.91' x2='36.82' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right"><img src="https://cdn.nba.com/logos/nba/1610612753/primary/L/logo.svg" style="height:12px;"></td>
<td class="gt_row gt_left">ORL</td>
<td class="gt_row gt_right">3</td>
<td class="gt_row gt_right">9</td>
<td class="gt_row gt_right">.250</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><line x1='4.42' y1='8.91' x2='4.42' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.36' y1='8.91' x2='7.36' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='10.31' y1='1.89' x2='10.31' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='13.25' y1='8.91' x2='13.25' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='16.20' y1='8.91' x2='16.20' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='19.15' y1='8.91' x2='19.15' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='22.09' y1='8.91' x2='22.09' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='25.04' y1='1.89' x2='25.04' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='27.98' y1='8.91' x2='27.98' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.93' y1='8.91' x2='30.93' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='33.87' y1='1.89' x2='33.87' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='36.82' y1='8.91' x2='36.82' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right gt_striped"><img src="https://cdn.nba.com/logos/nba/1610612765/primary/L/logo.svg" style="height:12px;"></td>
<td class="gt_row gt_left gt_striped">DET</td>
<td class="gt_row gt_right gt_striped">2</td>
<td class="gt_row gt_right gt_striped">9</td>
<td class="gt_row gt_right gt_striped">.182</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><line x1='4.42' y1='8.91' x2='4.42' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='7.36' y1='8.91' x2='7.36' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='10.31' y1='8.91' x2='10.31' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='13.25' y1='8.91' x2='13.25' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='16.20' y1='1.89' x2='16.20' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='19.15' y1='8.91' x2='19.15' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='22.09' y1='8.91' x2='22.09' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='25.04' y1='8.91' x2='25.04' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='27.98' y1='8.91' x2='27.98' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='30.93' y1='1.89' x2='30.93' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='33.87' y1='8.91' x2='33.87' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
  </tbody>
  
  
</table>
</div> 

![Team Rank]({{ site.baseurl }}/plots/nba_team_rank.png)

<p class="updated_time">Source: <a href="https://github.com/fivethirtyeight/data/tree/master/nba-forecasts">FiveThirtyEight</a>. <a href="https://github.com/fivethirtyeight/data/blob/master/LICENSE">CC-BY-4.0 License</a>.</p> 


