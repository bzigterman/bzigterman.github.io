---
layout: page
title: Basketball Standings
permalink: /projects/basketball/
---

<p class="updated_time"> Latest data: 02:36 PM CT, December 01</p> 

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
      <th class="gt_col_heading gt_columns_bottom_border gt_right" rowspan="1" colspan="1">Last 10 Games</th>
    </tr>
  </thead>
  <tbody class="gt_table_body">
    <tr class="gt_group_heading_row">
      <td colspan="6" class="gt_group_heading">Western</td>
    </tr>
    <tr><td class="gt_row gt_right"><img src="https://cdn.nba.com/logos/nba/1610612744/primary/L/logo.svg" style="height:12px;"></td>
<td class="gt_row gt_left">GSW</td>
<td class="gt_row gt_right">18</td>
<td class="gt_row gt_right">3</td>
<td class="gt_row gt_right">.857</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><line x1='5.89' y1='1.89' x2='5.89' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.78' y1='8.91' x2='11.78' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='17.67' y1='1.89' x2='17.67' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.56' y1='1.89' x2='23.56' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='29.45' y1='1.89' x2='29.45' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='35.35' y1='1.89' x2='35.35' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='41.24' y1='1.89' x2='41.24' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='47.13' y1='1.89' x2='47.13' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='53.02' y1='1.89' x2='53.02' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='58.91' y1='8.91' x2='58.91' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right gt_striped"><img src="https://cdn.nba.com/logos/nba/1610612756/primary/L/logo.svg" style="height:12px;"></td>
<td class="gt_row gt_left gt_striped">PHX</td>
<td class="gt_row gt_right gt_striped">18</td>
<td class="gt_row gt_right gt_striped">3</td>
<td class="gt_row gt_right gt_striped">.857</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><line x1='5.89' y1='1.89' x2='5.89' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.78' y1='1.89' x2='11.78' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='17.67' y1='1.89' x2='17.67' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.56' y1='1.89' x2='23.56' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='29.45' y1='1.89' x2='29.45' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='35.35' y1='1.89' x2='35.35' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='41.24' y1='1.89' x2='41.24' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='47.13' y1='1.89' x2='47.13' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='53.02' y1='1.89' x2='53.02' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='58.91' y1='1.89' x2='58.91' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right"><img src="https://cdn.nba.com/logos/nba/1610612762/primary/L/logo.svg" style="height:12px;"></td>
<td class="gt_row gt_left">UTA</td>
<td class="gt_row gt_right">14</td>
<td class="gt_row gt_right">7</td>
<td class="gt_row gt_right">.667</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><line x1='5.89' y1='8.91' x2='5.89' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.78' y1='8.91' x2='11.78' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='17.67' y1='1.89' x2='17.67' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.56' y1='1.89' x2='23.56' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='29.45' y1='1.89' x2='29.45' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='35.35' y1='8.91' x2='35.35' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='41.24' y1='1.89' x2='41.24' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='47.13' y1='8.91' x2='47.13' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='53.02' y1='1.89' x2='53.02' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='58.91' y1='1.89' x2='58.91' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right gt_striped"><img src="https://cdn.nba.com/logos/nba/1610612742/primary/L/logo.svg" style="height:12px;"></td>
<td class="gt_row gt_left gt_striped">DAL</td>
<td class="gt_row gt_right gt_striped">10</td>
<td class="gt_row gt_right gt_striped">9</td>
<td class="gt_row gt_right gt_striped">.526</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><line x1='5.89' y1='1.89' x2='5.89' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.78' y1='8.91' x2='11.78' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='17.67' y1='1.89' x2='17.67' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.56' y1='1.89' x2='23.56' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='29.45' y1='8.91' x2='29.45' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='35.35' y1='8.91' x2='35.35' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='41.24' y1='8.91' x2='41.24' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='47.13' y1='1.89' x2='47.13' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='53.02' y1='8.91' x2='53.02' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='58.91' y1='8.91' x2='58.91' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right"><img src="https://cdn.nba.com/logos/nba/1610612750/primary/L/logo.svg" style="height:12px;"></td>
<td class="gt_row gt_left">MIN</td>
<td class="gt_row gt_right">11</td>
<td class="gt_row gt_right">10</td>
<td class="gt_row gt_right">.524</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><line x1='5.89' y1='8.91' x2='5.89' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.78' y1='8.91' x2='11.78' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='17.67' y1='1.89' x2='17.67' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.56' y1='1.89' x2='23.56' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='29.45' y1='1.89' x2='29.45' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='35.35' y1='1.89' x2='35.35' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='41.24' y1='1.89' x2='41.24' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='47.13' y1='8.91' x2='47.13' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='53.02' y1='1.89' x2='53.02' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='58.91' y1='1.89' x2='58.91' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right gt_striped"><img src="https://cdn.nba.com/logos/nba/1610612763/primary/L/logo.svg" style="height:12px;"></td>
<td class="gt_row gt_left gt_striped">MEM</td>
<td class="gt_row gt_right gt_striped">11</td>
<td class="gt_row gt_right gt_striped">10</td>
<td class="gt_row gt_right gt_striped">.524</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><line x1='5.89' y1='8.91' x2='5.89' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.78' y1='8.91' x2='11.78' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='17.67' y1='1.89' x2='17.67' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.56' y1='1.89' x2='23.56' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='29.45' y1='8.91' x2='29.45' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='35.35' y1='1.89' x2='35.35' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='41.24' y1='8.91' x2='41.24' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='47.13' y1='8.91' x2='47.13' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='53.02' y1='1.89' x2='53.02' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='58.91' y1='1.89' x2='58.91' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right"><img src="https://cdn.nba.com/logos/nba/1610612746/primary/L/logo.svg" style="height:12px;"></td>
<td class="gt_row gt_left">LAC</td>
<td class="gt_row gt_right">11</td>
<td class="gt_row gt_right">10</td>
<td class="gt_row gt_right">.524</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><line x1='5.89' y1='1.89' x2='5.89' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.78' y1='8.91' x2='11.78' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='17.67' y1='1.89' x2='17.67' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.56' y1='8.91' x2='23.56' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='29.45' y1='8.91' x2='29.45' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='35.35' y1='1.89' x2='35.35' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='41.24' y1='8.91' x2='41.24' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='47.13' y1='1.89' x2='47.13' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='53.02' y1='8.91' x2='53.02' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='58.91' y1='8.91' x2='58.91' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right gt_striped"><img src="https://cdn.nba.com/logos/nba/1610612747/primary/L/logo.svg" style="height:12px;"></td>
<td class="gt_row gt_left gt_striped">LAL</td>
<td class="gt_row gt_right gt_striped">12</td>
<td class="gt_row gt_right gt_striped">11</td>
<td class="gt_row gt_right gt_striped">.522</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><line x1='5.89' y1='1.89' x2='5.89' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.78' y1='8.91' x2='11.78' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='17.67' y1='8.91' x2='17.67' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.56' y1='8.91' x2='23.56' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='29.45' y1='1.89' x2='29.45' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='35.35' y1='8.91' x2='35.35' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='41.24' y1='1.89' x2='41.24' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='47.13' y1='8.91' x2='47.13' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='53.02' y1='1.89' x2='53.02' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='58.91' y1='1.89' x2='58.91' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right"><img src="https://cdn.nba.com/logos/nba/1610612757/primary/L/logo.svg" style="height:12px;"></td>
<td class="gt_row gt_left">POR</td>
<td class="gt_row gt_right">11</td>
<td class="gt_row gt_right">11</td>
<td class="gt_row gt_right">.500</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><line x1='5.89' y1='1.89' x2='5.89' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.78' y1='8.91' x2='11.78' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='17.67' y1='1.89' x2='17.67' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.56' y1='1.89' x2='23.56' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='29.45' y1='1.89' x2='29.45' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='35.35' y1='1.89' x2='35.35' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='41.24' y1='8.91' x2='41.24' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='47.13' y1='8.91' x2='47.13' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='53.02' y1='8.91' x2='53.02' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='58.91' y1='1.89' x2='58.91' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right gt_striped"><img src="https://cdn.nba.com/logos/nba/1610612743/primary/L/logo.svg" style="height:12px;"></td>
<td class="gt_row gt_left gt_striped">DEN</td>
<td class="gt_row gt_right gt_striped">10</td>
<td class="gt_row gt_right gt_striped">10</td>
<td class="gt_row gt_right gt_striped">.500</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><line x1='5.89' y1='1.89' x2='5.89' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.78' y1='1.89' x2='11.78' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='17.67' y1='1.89' x2='17.67' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.56' y1='8.91' x2='23.56' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='29.45' y1='8.91' x2='29.45' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='35.35' y1='8.91' x2='35.35' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='41.24' y1='8.91' x2='41.24' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='47.13' y1='8.91' x2='47.13' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='53.02' y1='8.91' x2='53.02' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='58.91' y1='1.89' x2='58.91' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right"><img src="https://cdn.nba.com/logos/nba/1610612758/primary/L/logo.svg" style="height:12px;"></td>
<td class="gt_row gt_left">SAC</td>
<td class="gt_row gt_right">8</td>
<td class="gt_row gt_right">14</td>
<td class="gt_row gt_right">.364</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><line x1='5.89' y1='8.91' x2='5.89' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.78' y1='1.89' x2='11.78' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='17.67' y1='8.91' x2='17.67' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.56' y1='8.91' x2='23.56' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='29.45' y1='8.91' x2='29.45' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='35.35' y1='8.91' x2='35.35' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='41.24' y1='1.89' x2='41.24' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='47.13' y1='1.89' x2='47.13' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='53.02' y1='8.91' x2='53.02' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='58.91' y1='8.91' x2='58.91' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right gt_striped"><img src="https://cdn.nba.com/logos/nba/1610612759/primary/L/logo.svg" style="height:12px;"></td>
<td class="gt_row gt_left gt_striped">SAS</td>
<td class="gt_row gt_right gt_striped">6</td>
<td class="gt_row gt_right gt_striped">13</td>
<td class="gt_row gt_right gt_striped">.316</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><line x1='5.89' y1='8.91' x2='5.89' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.78' y1='1.89' x2='11.78' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='17.67' y1='8.91' x2='17.67' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.56' y1='8.91' x2='23.56' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='29.45' y1='8.91' x2='29.45' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='35.35' y1='8.91' x2='35.35' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='41.24' y1='8.91' x2='41.24' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='47.13' y1='8.91' x2='47.13' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='53.02' y1='1.89' x2='53.02' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='58.91' y1='1.89' x2='58.91' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right"><img src="https://cdn.nba.com/logos/nba/1610612760/primary/L/logo.svg" style="height:12px;"></td>
<td class="gt_row gt_left">OKC</td>
<td class="gt_row gt_right">6</td>
<td class="gt_row gt_right">14</td>
<td class="gt_row gt_right">.300</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><line x1='5.89' y1='1.89' x2='5.89' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.78' y1='8.91' x2='11.78' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='17.67' y1='8.91' x2='17.67' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.56' y1='1.89' x2='23.56' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='29.45' y1='8.91' x2='29.45' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='35.35' y1='8.91' x2='35.35' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='41.24' y1='8.91' x2='41.24' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='47.13' y1='8.91' x2='47.13' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='53.02' y1='8.91' x2='53.02' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='58.91' y1='8.91' x2='58.91' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right gt_striped"><img src="https://cdn.nba.com/logos/nba/1610612740/primary/L/logo.svg" style="height:12px;"></td>
<td class="gt_row gt_left gt_striped">NOP</td>
<td class="gt_row gt_right gt_striped">6</td>
<td class="gt_row gt_right gt_striped">17</td>
<td class="gt_row gt_right gt_striped">.261</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><line x1='5.89' y1='1.89' x2='5.89' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.78' y1='8.91' x2='11.78' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='17.67' y1='8.91' x2='17.67' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.56' y1='1.89' x2='23.56' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='29.45' y1='8.91' x2='29.45' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='35.35' y1='8.91' x2='35.35' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='41.24' y1='1.89' x2='41.24' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='47.13' y1='1.89' x2='47.13' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='53.02' y1='8.91' x2='53.02' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='58.91' y1='1.89' x2='58.91' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right"><img src="https://cdn.nba.com/logos/nba/1610612745/primary/L/logo.svg" style="height:12px;"></td>
<td class="gt_row gt_left">HOU</td>
<td class="gt_row gt_right">4</td>
<td class="gt_row gt_right">16</td>
<td class="gt_row gt_right">.200</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><line x1='5.89' y1='8.91' x2='5.89' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.78' y1='8.91' x2='11.78' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='17.67' y1='8.91' x2='17.67' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.56' y1='8.91' x2='23.56' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='29.45' y1='8.91' x2='29.45' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='35.35' y1='8.91' x2='35.35' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='41.24' y1='8.91' x2='41.24' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='47.13' y1='1.89' x2='47.13' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='53.02' y1='1.89' x2='53.02' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='58.91' y1='1.89' x2='58.91' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr class="gt_group_heading_row">
      <td colspan="6" class="gt_group_heading">Eastern</td>
    </tr>
    <tr><td class="gt_row gt_right gt_striped"><img src="https://cdn.nba.com/logos/nba/1610612751/primary/L/logo.svg" style="height:12px;"></td>
<td class="gt_row gt_left gt_striped">BKN</td>
<td class="gt_row gt_right gt_striped">15</td>
<td class="gt_row gt_right gt_striped">6</td>
<td class="gt_row gt_right gt_striped">.714</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><line x1='5.89' y1='1.89' x2='5.89' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.78' y1='1.89' x2='11.78' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='17.67' y1='1.89' x2='17.67' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.56' y1='8.91' x2='23.56' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='29.45' y1='1.89' x2='29.45' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='35.35' y1='1.89' x2='35.35' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='41.24' y1='1.89' x2='41.24' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='47.13' y1='1.89' x2='47.13' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='53.02' y1='8.91' x2='53.02' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='58.91' y1='1.89' x2='58.91' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right"><img src="https://cdn.nba.com/logos/nba/1610612741/primary/L/logo.svg" style="height:12px;"></td>
<td class="gt_row gt_left">CHI</td>
<td class="gt_row gt_right">14</td>
<td class="gt_row gt_right">8</td>
<td class="gt_row gt_right">.636</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><line x1='5.89' y1='1.89' x2='5.89' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.78' y1='1.89' x2='11.78' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='17.67' y1='8.91' x2='17.67' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.56' y1='1.89' x2='23.56' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='29.45' y1='1.89' x2='29.45' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='35.35' y1='8.91' x2='35.35' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='41.24' y1='8.91' x2='41.24' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='47.13' y1='1.89' x2='47.13' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='53.02' y1='8.91' x2='53.02' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='58.91' y1='1.89' x2='58.91' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right gt_striped"><img src="https://cdn.nba.com/logos/nba/1610612748/primary/L/logo.svg" style="height:12px;"></td>
<td class="gt_row gt_left gt_striped">MIA</td>
<td class="gt_row gt_right gt_striped">13</td>
<td class="gt_row gt_right gt_striped">8</td>
<td class="gt_row gt_right gt_striped">.619</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><line x1='5.89' y1='8.91' x2='5.89' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.78' y1='1.89' x2='11.78' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='17.67' y1='1.89' x2='17.67' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.56' y1='1.89' x2='23.56' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='29.45' y1='1.89' x2='29.45' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='35.35' y1='8.91' x2='35.35' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='41.24' y1='1.89' x2='41.24' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='47.13' y1='8.91' x2='47.13' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='53.02' y1='1.89' x2='53.02' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='58.91' y1='8.91' x2='58.91' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right"><img src="https://cdn.nba.com/logos/nba/1610612764/primary/L/logo.svg" style="height:12px;"></td>
<td class="gt_row gt_left">WAS</td>
<td class="gt_row gt_right">13</td>
<td class="gt_row gt_right">8</td>
<td class="gt_row gt_right">.619</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><line x1='5.89' y1='1.89' x2='5.89' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.78' y1='1.89' x2='11.78' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='17.67' y1='8.91' x2='17.67' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.56' y1='8.91' x2='23.56' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='29.45' y1='1.89' x2='29.45' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='35.35' y1='8.91' x2='35.35' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='41.24' y1='8.91' x2='41.24' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='47.13' y1='1.89' x2='47.13' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='53.02' y1='1.89' x2='53.02' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='58.91' y1='8.91' x2='58.91' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right gt_striped"><img src="https://cdn.nba.com/logos/nba/1610612749/primary/L/logo.svg" style="height:12px;"></td>
<td class="gt_row gt_left gt_striped">MIL</td>
<td class="gt_row gt_right gt_striped">13</td>
<td class="gt_row gt_right gt_striped">8</td>
<td class="gt_row gt_right gt_striped">.619</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><line x1='5.89' y1='1.89' x2='5.89' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.78' y1='8.91' x2='11.78' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='17.67' y1='8.91' x2='17.67' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.56' y1='1.89' x2='23.56' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='29.45' y1='1.89' x2='29.45' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='35.35' y1='1.89' x2='35.35' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='41.24' y1='1.89' x2='41.24' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='47.13' y1='1.89' x2='47.13' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='53.02' y1='1.89' x2='53.02' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='58.91' y1='1.89' x2='58.91' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right"><img src="https://cdn.nba.com/logos/nba/1610612766/primary/L/logo.svg" style="height:12px;"></td>
<td class="gt_row gt_left">CHA</td>
<td class="gt_row gt_right">13</td>
<td class="gt_row gt_right">10</td>
<td class="gt_row gt_right">.565</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><line x1='5.89' y1='1.89' x2='5.89' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.78' y1='1.89' x2='11.78' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='17.67' y1='1.89' x2='17.67' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.56' y1='1.89' x2='23.56' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='29.45' y1='8.91' x2='29.45' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='35.35' y1='1.89' x2='35.35' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='41.24' y1='1.89' x2='41.24' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='47.13' y1='1.89' x2='47.13' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='53.02' y1='8.91' x2='53.02' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='58.91' y1='8.91' x2='58.91' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right gt_striped"><img src="https://cdn.nba.com/logos/nba/1610612752/primary/L/logo.svg" style="height:12px;"></td>
<td class="gt_row gt_left gt_striped">NYK</td>
<td class="gt_row gt_right gt_striped">11</td>
<td class="gt_row gt_right gt_striped">10</td>
<td class="gt_row gt_right gt_striped">.524</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><line x1='5.89' y1='8.91' x2='5.89' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.78' y1='8.91' x2='11.78' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='17.67' y1='1.89' x2='17.67' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.56' y1='8.91' x2='23.56' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='29.45' y1='1.89' x2='29.45' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='35.35' y1='8.91' x2='35.35' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='41.24' y1='1.89' x2='41.24' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='47.13' y1='8.91' x2='47.13' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='53.02' y1='1.89' x2='53.02' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='58.91' y1='8.91' x2='58.91' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right"><img src="https://cdn.nba.com/logos/nba/1610612737/primary/L/logo.svg" style="height:12px;"></td>
<td class="gt_row gt_left">ATL</td>
<td class="gt_row gt_right">11</td>
<td class="gt_row gt_right">10</td>
<td class="gt_row gt_right">.524</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><line x1='5.89' y1='8.91' x2='5.89' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.78' y1='8.91' x2='11.78' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='17.67' y1='1.89' x2='17.67' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.56' y1='1.89' x2='23.56' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='29.45' y1='1.89' x2='29.45' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='35.35' y1='1.89' x2='35.35' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='41.24' y1='1.89' x2='41.24' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='47.13' y1='1.89' x2='47.13' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='53.02' y1='1.89' x2='53.02' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='58.91' y1='8.91' x2='58.91' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right gt_striped"><img src="https://cdn.nba.com/logos/nba/1610612739/primary/L/logo.svg" style="height:12px;"></td>
<td class="gt_row gt_left gt_striped">CLE</td>
<td class="gt_row gt_right gt_striped">11</td>
<td class="gt_row gt_right gt_striped">10</td>
<td class="gt_row gt_right gt_striped">.524</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><line x1='5.89' y1='8.91' x2='5.89' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.78' y1='1.89' x2='11.78' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='17.67' y1='1.89' x2='17.67' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.56' y1='8.91' x2='23.56' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='29.45' y1='8.91' x2='29.45' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='35.35' y1='8.91' x2='35.35' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='41.24' y1='8.91' x2='41.24' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='47.13' y1='8.91' x2='47.13' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='53.02' y1='1.89' x2='53.02' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='58.91' y1='1.89' x2='58.91' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right"><img src="https://cdn.nba.com/logos/nba/1610612755/primary/L/logo.svg" style="height:12px;"></td>
<td class="gt_row gt_left">PHI</td>
<td class="gt_row gt_right">11</td>
<td class="gt_row gt_right">10</td>
<td class="gt_row gt_right">.524</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><line x1='5.89' y1='8.91' x2='5.89' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.78' y1='8.91' x2='11.78' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='17.67' y1='8.91' x2='17.67' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.56' y1='8.91' x2='23.56' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='29.45' y1='1.89' x2='29.45' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='35.35' y1='8.91' x2='35.35' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='41.24' y1='1.89' x2='41.24' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='47.13' y1='8.91' x2='47.13' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='53.02' y1='8.91' x2='53.02' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='58.91' y1='1.89' x2='58.91' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right gt_striped"><img src="https://cdn.nba.com/logos/nba/1610612738/primary/L/logo.svg" style="height:12px;"></td>
<td class="gt_row gt_left gt_striped">BOS</td>
<td class="gt_row gt_right gt_striped">11</td>
<td class="gt_row gt_right gt_striped">10</td>
<td class="gt_row gt_right gt_striped">.524</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><line x1='5.89' y1='1.89' x2='5.89' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.78' y1='8.91' x2='11.78' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='17.67' y1='1.89' x2='17.67' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.56' y1='8.91' x2='23.56' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='29.45' y1='1.89' x2='29.45' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='35.35' y1='1.89' x2='35.35' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='41.24' y1='1.89' x2='41.24' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='47.13' y1='8.91' x2='47.13' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='53.02' y1='8.91' x2='53.02' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='58.91' y1='1.89' x2='58.91' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right"><img src="https://cdn.nba.com/logos/nba/1610612761/primary/L/logo.svg" style="height:12px;"></td>
<td class="gt_row gt_left">TOR</td>
<td class="gt_row gt_right">9</td>
<td class="gt_row gt_right">13</td>
<td class="gt_row gt_right">.409</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><line x1='5.89' y1='1.89' x2='5.89' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.78' y1='8.91' x2='11.78' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='17.67' y1='8.91' x2='17.67' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.56' y1='8.91' x2='23.56' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='29.45' y1='1.89' x2='29.45' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='35.35' y1='8.91' x2='35.35' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='41.24' y1='1.89' x2='41.24' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='47.13' y1='8.91' x2='47.13' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='53.02' y1='8.91' x2='53.02' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='58.91' y1='8.91' x2='58.91' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right gt_striped"><img src="https://cdn.nba.com/logos/nba/1610612754/primary/L/logo.svg" style="height:12px;"></td>
<td class="gt_row gt_left gt_striped">IND</td>
<td class="gt_row gt_right gt_striped">9</td>
<td class="gt_row gt_right gt_striped">14</td>
<td class="gt_row gt_right gt_striped">.391</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><line x1='5.89' y1='1.89' x2='5.89' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.78' y1='8.91' x2='11.78' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='17.67' y1='8.91' x2='17.67' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='23.56' y1='8.91' x2='23.56' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='29.45' y1='1.89' x2='29.45' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='35.35' y1='1.89' x2='35.35' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='41.24' y1='8.91' x2='41.24' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='47.13' y1='1.89' x2='47.13' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='53.02' y1='8.91' x2='53.02' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='58.91' y1='8.91' x2='58.91' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right"><img src="https://cdn.nba.com/logos/nba/1610612765/primary/L/logo.svg" style="height:12px;"></td>
<td class="gt_row gt_left">DET</td>
<td class="gt_row gt_right">4</td>
<td class="gt_row gt_right">17</td>
<td class="gt_row gt_right">.190</td>
<td class="gt_row gt_right"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><line x1='5.89' y1='1.89' x2='5.89' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='11.78' y1='8.91' x2='11.78' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='17.67' y1='1.89' x2='17.67' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.56' y1='8.91' x2='23.56' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='29.45' y1='8.91' x2='29.45' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='35.35' y1='8.91' x2='35.35' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='41.24' y1='8.91' x2='41.24' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='47.13' y1='8.91' x2='47.13' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='53.02' y1='8.91' x2='53.02' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='58.91' y1='8.91' x2='58.91' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
    <tr><td class="gt_row gt_right gt_striped"><img src="https://cdn.nba.com/logos/nba/1610612753/primary/L/logo.svg" style="height:12px;"></td>
<td class="gt_row gt_left gt_striped">ORL</td>
<td class="gt_row gt_right gt_striped">4</td>
<td class="gt_row gt_right gt_striped">18</td>
<td class="gt_row gt_right gt_striped">.182</td>
<td class="gt_row gt_right gt_striped"><?xml version='1.0' encoding='UTF-8' ?><svg xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink' class='svglite' width='64.80pt' height='10.80pt' viewBox='0 0 64.80 10.80'><defs>  <style type='text/css'><![CDATA[    .svglite line, .svglite polyline, .svglite polygon, .svglite path, .svglite rect, .svglite circle {      fill: none;      stroke: #000000;      stroke-linecap: round;      stroke-linejoin: round;      stroke-miterlimit: 10.00;    }  ]]></style></defs><rect width='100%' height='100%' style='stroke: none; fill: none;'/><defs>  <clipPath id='cpMC4wMHw2NC44MHwwLjAwfDEwLjgw'>    <rect x='0.00' y='0.00' width='64.80' height='10.80' />  </clipPath></defs><g clip-path='url(#cpMC4wMHw2NC44MHwwLjAwfDEwLjgw)'><line x1='5.89' y1='8.91' x2='5.89' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='11.78' y1='8.91' x2='11.78' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='17.67' y1='1.89' x2='17.67' y2='6.10' style='stroke-width: 2.13; stroke: #013369;' /><line x1='23.56' y1='8.91' x2='23.56' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='29.45' y1='8.91' x2='29.45' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='35.35' y1='8.91' x2='35.35' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='41.24' y1='8.91' x2='41.24' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='47.13' y1='8.91' x2='47.13' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='53.02' y1='8.91' x2='53.02' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /><line x1='58.91' y1='8.91' x2='58.91' y2='4.70' style='stroke-width: 2.13; stroke: #D50A0A;' /></g></svg></td></tr>
  </tbody>
  
  
</table>
</div> 

![Team Rank]({{ site.baseurl }}/plots/nba_team_rank.png)

<p class="updated_time">Source: <a href="https://github.com/fivethirtyeight/data/tree/master/nba-forecasts">FiveThirtyEight</a>. <a href="https://github.com/fivethirtyeight/data/blob/master/LICENSE">CC-BY-4.0 License</a>.</p> 


