library(tidyverse)
library(lubridate)
library(scales)
library(httr)
library(rio)
library(gt)
library(cowplot)
library(htmltools)
library(RColorBrewer)

# get data ----
fivethirtyeight_data_url <- "https://projects.fivethirtyeight.com/mlb-api/mlb_elo_latest.csv"
fivethirtyeight_data <- rio::import(fivethirtyeight_data_url, format = "csv") %>%
  arrange(date) 
get_team_records <- function(abbreviation) {
  records <- fivethirtyeight_data %>%
    select(date, season, team1, team2, score1, score2) %>%
    filter(team1 == abbreviation | team2 == abbreviation) %>%
    mutate(result = if_else((team2 == abbreviation),
                            if_else((score2 > score1),"W","L"),
                            if_else((score1 > score2),"W","L"))) %>%
    mutate(game_n = row_number()) %>%
    select(date, game_n, result) %>%
    mutate(win = if_else(result == "W",1,0)) %>%
    mutate(loss = if_else(result == "L",1,0)) %>%
    mutate(game_counter = if_else(result == "W",1,if_else(result == "L",1,NULL))) %>%
    mutate(wins = cumsum(win)) %>%
    mutate(losses = cumsum(loss)) %>%
    mutate(win_pct = wins/row_number()) %>%
    mutate(win_pct_text = paste(".",round(win_pct*1000),sep = "")) %>%
    mutate(net_wins = wins-losses) %>%
    mutate(team = case_when(
      abbreviation == "CHW" ~ "CWS",
      abbreviation == "KCR" ~ "KC ",
      abbreviation == "TBD" ~ "TB ",
      abbreviation == "ANA" ~ "LAA",
      abbreviation == "FLA" ~ "MIA",
      abbreviation == "WSN" ~ "WSH",
      abbreviation == "SFG" ~ "SF ",
      abbreviation == "SDP" ~ "SD ",
      TRUE ~ abbreviation
    )
    ) %>%
    mutate(games_played = cumsum(game_counter)) %>%
    mutate(games_remaining = sum(is.na(result))) %>%
    mutate(team_label = if_else(games_played == max(na.omit(games_played)),team,NULL))  %>%
    mutate(result_arrow = if_else(result == "W","▀",
                                  if_else(result == "L","▄",""))) %>%
    mutate(last_ten = paste(lag(result_arrow,9),
                            lag(result_arrow,8),
                            lag(result_arrow,7),
                            lag(result_arrow,6),
                            lag(result_arrow,5),
                            lag(result_arrow,4),
                            lag(result_arrow,3),
                            lag(result_arrow,2),
                            lag(result_arrow),
                            result_arrow,
                            sep = "")) 
}

## al central ----
team1 <- get_team_records("CHW") %>%
  mutate(logo_url = "https://www.mlbstatic.com/team-logos/145.svg")
team2 <- get_team_records("CLE") %>%
  mutate(logo_url = "https://www.mlbstatic.com/team-logos/114.svg")
team3 <- get_team_records("DET") %>%
  mutate(logo_url = "https://www.mlbstatic.com/team-logos/116.svg")
team4 <- get_team_records("KCR") %>%
  mutate(logo_url = "https://www.mlbstatic.com/team-logos/118.svg")
team5 <- get_team_records("MIN")  %>%
  mutate(logo_url = "https://www.mlbstatic.com/team-logos/142.svg")

al_central <- full_join(team1,team2) %>%
  full_join(team3) %>%
  full_join(team4) %>%
  full_join(team5) %>%
  mutate(division = "AL Central") %>%
  mutate(league = "AL")

## al east ----

team1 <- get_team_records("TBD") %>%
  mutate(logo_url = "https://www.mlbstatic.com/team-logos/139.svg")
team2 <- get_team_records("BOS") %>%
  mutate(logo_url = "https://www.mlbstatic.com/team-logos/111.svg")
team3 <- get_team_records("NYY") %>%
  mutate(logo_url = "https://www.mlbstatic.com/team-logos/147.svg")
team4 <- get_team_records("TOR") %>%
  mutate(logo_url = "https://www.mlbstatic.com/team-logos/141.svg")
team5 <- get_team_records("BAL") %>%
  mutate(logo_url = "https://www.mlbstatic.com/team-logos/110.svg")

al_east <- full_join(team1,team2) %>%
  full_join(team3) %>%
  full_join(team4) %>%
  full_join(team5) %>%
  mutate(division = "AL East") %>%
  mutate(league = "AL")

## al west ----

team1 <- get_team_records("HOU") %>%
  mutate(logo_url = "https://www.mlbstatic.com/team-logos/117.svg")
team2 <- get_team_records("OAK") %>%
  mutate(logo_url = "https://www.mlbstatic.com/team-logos/133.svg")
team3 <- get_team_records("SEA") %>%
  mutate(logo_url = "https://www.mlbstatic.com/team-logos/136.svg")
team4 <- get_team_records("ANA") %>%
  mutate(logo_url = "https://www.mlbstatic.com/team-logos/108.svg")
team5 <- get_team_records("TEX") %>%
  mutate(logo_url = "https://www.mlbstatic.com/team-logos/140.svg")

al_west <- full_join(team1,team2) %>%
  full_join(team3) %>%
  full_join(team4) %>%
  full_join(team5) %>%
  mutate(division = "AL West") %>%
  mutate(league = "AL")

## nl central ----
team1 <- get_team_records("MIL") %>%
  mutate(logo_url = "https://www.mlbstatic.com/team-logos/158.svg")
team2 <- get_team_records("CHC") %>%
  mutate(logo_url = "https://www.mlbstatic.com/team-logos/112.svg")
team3 <- get_team_records("STL") %>%
  mutate(logo_url = "https://www.mlbstatic.com/team-logos/138.svg")
team4 <- get_team_records("CIN") %>%
  mutate(logo_url = "https://www.mlbstatic.com/team-logos/113.svg")
team5 <- get_team_records("PIT") %>%
  mutate(logo_url = "https://www.mlbstatic.com/team-logos/134.svg")

nl_central <- full_join(team1,team2) %>%
  full_join(team3) %>%
  full_join(team4) %>%
  full_join(team5) %>%
  mutate(division = "NL Central") %>%
  mutate(league = "NL")

## nl east ----
team1 <- get_team_records("ATL") %>%
  mutate(logo_url = "https://www.mlbstatic.com/team-logos/144.svg")
team2 <- get_team_records("PHI") %>%
  mutate(logo_url = "https://www.mlbstatic.com/team-logos/143.svg")
team3 <- get_team_records("NYM") %>%
  mutate(logo_url = "https://www.mlbstatic.com/team-logos/121.svg")
team4 <- get_team_records("FLA") %>%
  mutate(logo_url = "https://www.mlbstatic.com/team-logos/146.svg")
team5 <- get_team_records("WSN") %>%
  mutate(logo_url = "https://www.mlbstatic.com/team-logos/120.svg")

nl_east <- full_join(team1,team2) %>%
  full_join(team3) %>%
  full_join(team4) %>%
  full_join(team5) %>%
  mutate(division = "NL East") %>%
  mutate(league = "NL")

## nl west ----
team1 <- get_team_records("SFG") %>%
  mutate(logo_url = "https://www.mlbstatic.com/team-logos/137.svg")
team2 <- get_team_records("LAD") %>%
  mutate(logo_url = "https://www.mlbstatic.com/team-logos/119.svg")
team3 <- get_team_records("SDP") %>%
  mutate(logo_url = "https://www.mlbstatic.com/team-logos/135.svg")
team4 <- get_team_records("COL") %>%
  mutate(logo_url = "https://www.mlbstatic.com/team-logos/115.svg")
team5 <- get_team_records("ARI") %>%
  mutate(logo_url = "https://www.mlbstatic.com/team-logos/109.svg")

nl_west <- full_join(team1,team2) %>%
  full_join(team3) %>%
  full_join(team4) %>%
  full_join(team5) %>%
  mutate(division = "NL West") %>%
  mutate(league = "NL")

al_games <- full_join(al_central, al_east) %>%
  full_join(al_west)
nl_games <- full_join(nl_central, nl_east) %>%
  full_join(nl_west)

mlb_games <- full_join(al_games, nl_games)

# division standings ----
old_standings <- read_csv("data/standings.csv",
                          col_types = cols(
                            league = col_character(),
                            team_label = col_character(),
                            wins = col_number(),
                            losses = col_number(),
                            win_pct_text = col_character(),
                            games_remaining = col_integer(),
                            last_ten = col_character()),
                          trim_ws = FALSE
)
#old_standings <- as_tibble(2)
standings_check <- mlb_games %>%
  filter(!is.na(team_label)) %>%
  group_by(league) %>%
  arrange(league,desc(win_pct)) %>%
  select(league, team_label, wins, losses, win_pct_text, games_remaining, last_ten)
standings_the_same <- all_equal(standings_check, old_standings)
if (standings_the_same != TRUE) { 
  write_csv(standings_check,"data/standings.csv")
}

mlb_standings <- mlb_games %>%
  filter(!is.na(team_label)) %>%
  select(logo_url, team_label, wins, losses, net_wins, win_pct, win_pct_text, games_remaining, last_ten, division, league)

standings_table <- mlb_standings %>%
  group_by(division) %>%
  arrange(division,desc(win_pct)) %>%
  gt() %>%
  fmt_number(
    columns = net_wins,
    force_sign = TRUE,
    decimals = 0
  ) %>%
  text_transform(
    locations = cells_body(columns = logo_url),
    fn = function(x) {
      web_image(
        url = x,
        height = px(11)
      )
    }
  ) %>%
  cols_hide(columns = c(win_pct, league)) %>%
  cols_align(
    align = c("right"),
    columns = c(last_ten,win_pct_text)
  ) %>%
  cols_label(
    logo_url = "",
    team_label = "Team",
    wins = "W",
    losses = "L",
    net_wins = html("Games<br>Above<br>.500"),
    win_pct_text = "Pct",
    games_remaining = html("Games<br>Left"),
    last_ten = html("Last 10<br>Games")
  ) %>%
  opt_table_font(font = c("verdana","calibri","menlo","consolas","monospace","helvetica", "arial", "sans-serif")) %>%
  opt_row_striping(row_striping = TRUE) %>%
  tab_options(
    table.width = pct(100),
    data_row.padding = px(3),
    table.font.size = px(11)
  )  %>%
  opt_table_lines(extent = "none") %>%
  opt_all_caps(all_caps = TRUE)
standings_table
standings_table_html <- as_raw_html(standings_table, inline_css = FALSE)

## table style ----
standings_style <- HTML("<style>html {
  font-family: verdana, calibri, menlo, consolas, monospace, helvetica, arial, sans-serif, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Helvetica Neue', 'Fira Sans', 'Droid Sans', Arial;
}

 .gt_table {
  display: table;
  border-collapse: collapse;
  margin-left: auto;
  margin-right: auto;
  color: #333333;
  font-size: 11px;
  font-weight: normal;
  font-style: none;
  background-color: #FFFFFF;
  width: 100%;
  border-top-style: none;
  border-top-width: 2px;
  border-top-color: #A8A8A8;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #A8A8A8;
  border-left-style: none;
  border-left-width: 2px;
  border-left-color: #D3D3D3;
}

 .gt_heading {
  background-color: #FFFFFF;
  text-align: center;
  border-bottom-color: #FFFFFF;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

 .gt_title {
  color: #333333;
  font-size: 125%;
  font-weight: initial;
  padding-top: 4px;
  padding-bottom: 4px;
  border-bottom-color: #FFFFFF;
  border-bottom-width: 0;
}

 .gt_subtitle {
  color: #333333;
  font-size: 85%;
  font-weight: initial;
  padding-top: 0;
  padding-bottom: 6px;
  border-top-color: #FFFFFF;
  border-top-width: 0;
}

 .gt_bottom_border {
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

 .gt_col_headings {
  border-top-style: none;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
}

 .gt_col_heading {
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

 .gt_column_spanner_outer {
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

 .gt_column_spanner_outer:first-child {
  padding-left: 0;
}

 .gt_column_spanner_outer:last-child {
  padding-right: 0;
}

 .gt_column_spanner {
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: bottom;
  padding-top: 5px;
  padding-bottom: 5px;
  overflow-x: hidden;
  display: inline-block;
  width: 100%;
}

 .gt_group_heading {
  padding: 8px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 80%;
  font-weight: bolder;
  text-transform: uppercase;
  border-top-style: none;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: none;
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

 .gt_empty_group_heading {
  padding: 0.5px;
  color: #333333;
  background-color: #FFFFFF;
  font-size: 80%;
  font-weight: bolder;
  border-top-style: none;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
  vertical-align: middle;
}

 .gt_from_md > :first-child {
  margin-top: 0;
}

 .gt_from_md > :last-child {
  margin-bottom: 0;
}

 .gt_row {
  padding-top: 3px;
  padding-bottom: 3px;
  padding-left: 5px;
  padding-right: 5px;
  margin: 10px;
  border-top-style: none;
  border-top-width: 1px;
  border-top-color: #D3D3D3;
  border-left-style: none;
  border-left-width: 1px;
  border-left-color: #D3D3D3;
  border-right-style: none;
  border-right-width: 1px;
  border-right-color: #D3D3D3;
  vertical-align: middle;
  overflow-x: hidden;
}

 .gt_stub {
  color: #333333;
  background-color: #FFFFFF;
  font-size: 80%;
  font-weight: bolder;
  text-transform: uppercase;
  border-right-style: none;
  border-right-width: 2px;
  border-right-color: #D3D3D3;
  padding-left: 12px;
}

 .gt_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

 .gt_first_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: none;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
}

 .gt_grand_summary_row {
  color: #333333;
  background-color: #FFFFFF;
  text-transform: inherit;
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
}

 .gt_first_grand_summary_row {
  padding-top: 8px;
  padding-bottom: 8px;
  padding-left: 5px;
  padding-right: 5px;
  border-top-style: none;
  border-top-width: 6px;
  border-top-color: #D3D3D3;
}

 .gt_striped {
  background-color: rgba(128, 128, 128, 0.05);
}

 .gt_table_body {
  border-top-style: none;
  border-top-width: 2px;
  border-top-color: #D3D3D3;
  border-bottom-style: none;
  border-bottom-width: 2px;
  border-bottom-color: #D3D3D3;
}

 .gt_footnotes {
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

 .gt_footnote {
  margin: 0px;
  font-size: 90%;
  padding: 4px;
}

 .gt_sourcenotes {
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

 .gt_sourcenote {
  font-size: 90%;
  padding: 4px;
}

 .gt_left {
  text-align: left;
}

 .gt_center {
  text-align: center;
}

 .gt_right {
  text-align: right;
  font-variant-numeric: tabular-nums;
}

 .gt_font_normal {
  font-weight: normal;
}

 .gt_font_bold {
  font-weight: bold;
}

 .gt_font_italic {
  font-style: italic;
}

 .gt_super {
  font-size: 65%;
}

 .gt_footnote_marks {
  font-style: italic;
  font-weight: normal;
  font-size: 65%;
}
</style>")

# games above 500 plots ----
standings_plot <- function(division) {
  ggplot(division, aes(x = game_n,
                       y = net_wins,
                       color= team,
                       label = team_label)) +
    #coord_fixed(xlim = c(0,162)) +
    geom_hline(yintercept = 0,
               color = "grey10",
               size = .2) +
    geom_vline(xintercept = 162,
               color = "grey50",
               size = .2) +
    geom_step(direction = "vh") +
    geom_text(aes(x = game_n + 4),
              family = "mono") +
    scale_x_continuous(breaks = c(0,40, 81,121, 162)) +
    scale_y_continuous(position = "right") +
    scale_color_brewer(palette = "Set1",
                       guide = NULL) +
    # scale_color_manual(values = c("#27251F","#E31937","#0C2340","#BD9B60","#002B5C"),
    #                  guide = NULL) +
    coord_cartesian(xlim = c(0,162)) +
    theme_minimal() +
    labs(title = "Games Above .500",
         #caption = "Source: FiveThirtyEight",
         x = NULL,
         y = NULL) +
    theme(
      plot.background = element_rect(fill = "white", color = "white"),
      panel.grid = element_blank(),
      legend.title = element_blank(),
      axis.ticks.x = element_line(color = "grey60", size = 0.25),
      panel.grid.major.y = element_line(colour = "grey93"),
      axis.ticks.y = element_line(color = "grey60"),
      plot.caption = element_text(color = "grey40")
    )
}
standings_plot(al_central)  
ggsave("plots/al_central_wins_losses.png", 
       width = 8, height = 8*(628/1200), 
       dpi = 320)
standings_plot(al_east)  
ggsave("plots/al_east_wins_losses.png", 
       width = 8, height = 8*(628/1200), dpi = 320)
standings_plot(al_west)  
ggsave("plots/al_west_wins_losses.png", 
       width = 8, height = 8*(628/1200), dpi = 320)


standings_plot(nl_central)  
ggsave("plots/nl_central_wins_losses.png", 
       width = 8, height = 8*(628/1200), dpi = 320)
standings_plot(nl_east)  
ggsave("plots/nl_east_wins_losses.png", 
       width = 8, height = 8*(628/1200), dpi = 320)
standings_plot(nl_west)  
ggsave("plots/nl_west_wins_losses.png", 
       width = 8, height = 8*(628/1200), dpi = 320)

# wild card standings ----
mlb_standings <- mlb_games %>%
  filter(!is.na(team_label)) %>%
  select(logo_url, team_label, wins, losses, net_wins, win_pct, win_pct_text, games_remaining, last_ten, division, league)

wild_card_table <- mlb_standings %>%
  group_by(league) %>%
  arrange(league,desc(win_pct)) %>%
  gt() %>%
  text_transform(
    locations = cells_body(columns = logo_url),
    fn = function(x) {
      web_image(
        url = x,
        height = px(11)
      )
    }
  ) %>%
  cols_hide(columns = c(win_pct, division)) %>%
  fmt_number(
    columns = net_wins,
    force_sign = TRUE,
    decimals = 0
  ) %>%
  cols_align(
    align = c("right"),
    columns = c(last_ten,win_pct_text)
  ) %>%
  cols_label(
    logo_url = "",
    team_label = "Team",
    wins = "W",
    losses = "L",
    net_wins = html("Games<br>Above<br>.500"),
    win_pct_text = "Pct",
    games_remaining = html("Games<br>Left"),
    last_ten = html("Last 10<br>Games")
  ) %>%
  opt_table_font(font = c("verdana","calibri","menlo","consolas","monospace","helvetica", "arial", "sans-serif")) %>%
  opt_row_striping(row_striping = TRUE) %>%
  tab_options(
    table.width = pct(100),
    data_row.padding = px(3),
    table.font.size = px(11)
  )  %>%
  opt_table_lines(extent = "none") %>%
  opt_all_caps(all_caps = TRUE)
wild_card_table
wild_card_table_html <- as_raw_html(wild_card_table, inline_css = FALSE)

# wild card plot ----
mlb_min <-  .9*min(mlb_standings$win_pct)
mlb_max <- 1.05*max(mlb_standings$win_pct)
al_standings <- mlb_standings %>%
  filter(league == "AL") %>%
  arrange(desc(win_pct)) %>%
  select(team_label, win_pct, win_pct_text)
nl_standings <- mlb_standings %>%
  filter(league == "NL") %>%
  arrange(desc(win_pct)) %>%
  select(team_label, win_pct, win_pct_text)
al_playoffs_rect <- (if_else(
  slice(al_standings, n = 5)[2] == slice(al_standings, n = 6)[2],
  9.5,
  10.5))[1]
nl_playoffs_rect <- (if_else(
  slice(nl_standings, n = 5)[2] == slice(nl_standings, n = 6)[2],
  6.5,
  5.5))[1]

al_plot <- ggplot(al_standings, aes(x = reorder(team_label, win_pct), 
                                    y = win_pct)) +
  geom_rect(xmin = al_playoffs_rect, xmax = Inf,
            ymin = -Inf, ymax = Inf,
            fill = "grey85") +
  geom_hline(yintercept = 0.5,
             color = "grey50",
             size = .2) +
  geom_col(aes(fill = win_pct),
           width = 1) +
  scale_fill_gradient(guide = NULL,
                      low = "#fd8d3c",
                      high = "#800026") +
  coord_cartesian(ylim = c(mlb_min,mlb_max)) +
  geom_text(aes(label = team_label),
            family = "mono",
            color = "white",
            angle = 270,
            size = 3.9,
            nudge_y = -.019) +
  theme_minimal() +
  labs(x = NULL,
       y = NULL,
       title = "American League") +
  theme(
    legend.title = element_blank(),
    panel.grid.major.y = element_line(colour = "grey93"),
    plot.title = element_text(hjust = 1),
    plot.background = element_rect(fill = "white", color = "white"),
    plot.margin = margin(5,5,0,110),
    panel.grid = element_blank(),
    axis.text = element_blank(),
    legend.position = "bottom",
    legend.key.size = unit(.1,"in"),
    legend.box.spacing = unit(0,"in")
  )
nl_plot <- ggplot(nl_standings, aes(x = reorder(team_label, -win_pct), 
                                    y = win_pct)) +
  geom_rect(xmin = -Inf, xmax = nl_playoffs_rect,
            ymin = -Inf, ymax = Inf,
            fill = "grey85") +
  geom_hline(yintercept = 0.5,
             color = "grey50",
             size = .2) +
  geom_col(aes(fill = win_pct),
           width = 1) +
  scale_fill_continuous(guide = NULL,
                        low = "#3690c0",
                        high = "#023858") +
  coord_cartesian(ylim = c(mlb_min,mlb_max)) +
  geom_text(aes(label = team_label),
            family = "mono",
            color = "white",
            angle = 270,
            size = 3.9,
            nudge_y = -.019) +
  scale_y_continuous(labels = label_comma(accuracy = .001)) +
  theme_minimal() +
  labs(x = NULL,
       y = NULL,
       title = "National League") +
  theme(    
    legend.title = element_blank(),
    plot.background = element_rect(fill = "white", color = "white"),
    plot.margin = margin(0,90,0,0),
    panel.grid = element_blank(),
    panel.grid.major.y = element_line(colour = "grey93"),
    axis.text.x = element_blank(),
    legend.position = "bottom",
    legend.key.size = unit(.1,"in"),
    legend.box.spacing = unit(0,"in")
  )
plot_grid(al_plot,nl_plot,
          align = "h") 

ggsave("plots/mlb_team_rank.png",
       width = 8, height = 8*(628/1200),
       dpi = 320)

# web text ----
now <- as_datetime(now())
now_formatted <- strftime(x = now, 
                          tz = "US/Central",
                          format = "%I:%M% %p CT, %B %d")

web_text <- paste(
  "---
layout: page
title: Baseball
permalink: /charts/baseball/
---

",standings_style,standings_table_html,"

### AL Central

![AL Central]({{ site.baseurl }}/plots/al_central_wins_losses.png)

### AL East

![AL East]({{ site.baseurl }}/plots/al_east_wins_losses.png)

### AL West

![AL West]({{ site.baseurl }}/plots/al_west_wins_losses.png)

### NL Central

![NL Central]({{ site.baseurl }}/plots/nl_central_wins_losses.png)

### NL East

![NL East]({{ site.baseurl }}/plots/nl_east_wins_losses.png)

### NL West

![NL West]({{ site.baseurl }}/plots/nl_west_wins_losses.png)

## Wild Card

",standings_style,wild_card_table_html,"

![Wild Card]({{ site.baseurl }}/plots/mlb_team_rank.png)

Source: [FiveThirtyEight](https://github.com/fivethirtyeight/data/tree/master/mlb-elo). [CC-BY-4.0 License](https://github.com/fivethirtyeight/data/blob/master/LICENSE). Latest data: ",now_formatted," 

",
sep = ""
)
if (standings_the_same != TRUE) {
  write_lines(web_text,"charts/baseball.md")
}
