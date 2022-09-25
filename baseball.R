library(tidyverse)
library(lubridate)
library(scales)
library(httr)
library(rio)
library(gt)
library(cowplot)
library(htmltools)
library(RColorBrewer)
library(gtExtras)
library(highcharter)
library(htmlwidgets)

# get data ----
fivethirtyeight_data_url <- "https://projects.fivethirtyeight.com/mlb-api/mlb_elo_latest.csv"
fivethirtyeight_data <- rio::import(fivethirtyeight_data_url, format = "csv") %>%
  filter(playoff == "" | is.na(playoff)) %>%
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
    mutate(win_pct = wins/game_n) %>%
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
    mutate(games_remaining = max(game_n)-games_played) %>%
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
                            sep = "")) %>%
    mutate(
      outcomes = list(
        tail(na.omit(win),10)
      )
    )
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

al_central_standings <- al_central %>%
  filter(!is.na(team_label)) %>%
  arrange(desc(win_pct)) %>%
  mutate(division_place = row_number()) 
al_central_standings_magic <- al_central_standings %>%
  mutate(second_place_losses = al_central_standings$losses[[2]]) %>%
  mutate(first_place_remaining = al_central_standings$games_remaining[[1]]) %>%
  mutate(first_place_wins = al_central_standings$wins[[1]]) %>%
  mutate(division_magic_number = 
           ifelse(division_place == 1,
                  ifelse(163 - wins - second_place_losses <= 0,
                         "✓",
                         163 - wins - second_place_losses),
                  "")) %>%
  mutate(division_elimination_number = 
           ifelse(division_place != 1,
                  ifelse((163 - first_place_wins - losses) <= 0,
                         "—",
                         (163 - first_place_wins - losses)),
                  "")) %>%
  mutate(division_magic_or_eliminated = 
           ifelse(division_place == 1,
                  division_magic_number,
                  division_elimination_number)) %>%
  mutate(first_place_net_wins = al_central_standings$net_wins[[1]]) %>%
  mutate(division_games_behind = (first_place_net_wins - net_wins)/2)


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

al_east_standings <- al_east %>%
  filter(!is.na(team_label)) %>%
  arrange(desc(win_pct)) %>%
  mutate(division_place = row_number()) 
al_east_standings_magic <- al_east_standings %>%
  mutate(second_place_losses = al_east_standings$losses[[2]]) %>%
  mutate(first_place_remaining = al_east_standings$games_remaining[[1]]) %>%
  mutate(first_place_wins = al_east_standings$wins[[1]]) %>%
  mutate(division_magic_number = 
           ifelse(division_place == 1,
                  ifelse(163 - wins - second_place_losses <= 0,
                         "✓",
                         163 - wins - second_place_losses),
                  "")) %>%
  mutate(division_elimination_number = 
           ifelse(division_place != 1,
                  ifelse((163 - first_place_wins - losses) <= 0,
                         "—",
                         (163 - first_place_wins - losses)),
                  "")) %>%
  mutate(division_magic_or_eliminated = 
           ifelse(division_place == 1,
                  division_magic_number,
                  division_elimination_number)) %>%
  mutate(first_place_net_wins = al_east_standings$net_wins[[1]]) %>%
  mutate(division_games_behind = (first_place_net_wins - net_wins)/2)


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

al_west_standings <- al_west %>%
  filter(!is.na(team_label)) %>%
  arrange(desc(win_pct)) %>%
  mutate(division_place = row_number()) 
al_west_standings_magic <- al_west_standings %>%
  mutate(second_place_losses = al_west_standings$losses[[2]]) %>%
  mutate(first_place_remaining = al_west_standings$games_remaining[[1]]) %>%
  mutate(first_place_wins = al_west_standings$wins[[1]]) %>%
  mutate(division_magic_number = 
           ifelse(division_place == 1,
                  ifelse(163 - wins - second_place_losses <= 0,
                         "✓",
                         163 - wins - second_place_losses),
                  "")) %>%
  mutate(division_elimination_number = 
           ifelse(division_place != 1,
                  ifelse((163 - first_place_wins - losses) <= 0,
                         "—",
                         (163 - first_place_wins - losses)),
                  "")) %>%
  mutate(division_magic_or_eliminated = 
           ifelse(division_place == 1,
                  division_magic_number,
                  division_elimination_number)) %>%
  mutate(first_place_net_wins = al_west_standings$net_wins[[1]]) %>%
  mutate(division_games_behind = (first_place_net_wins - net_wins)/2)


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

nl_central_standings <- nl_central %>%
  filter(!is.na(team_label)) %>%
  arrange(desc(win_pct)) %>%
  mutate(division_place = row_number()) 
nl_central_standings_magic <- nl_central_standings %>%
  mutate(second_place_losses = nl_central_standings$losses[[2]]) %>%
  mutate(first_place_remaining = nl_central_standings$games_remaining[[1]]) %>%
  mutate(first_place_wins = nl_central_standings$wins[[1]]) %>%
  mutate(division_magic_number = 
           ifelse(division_place == 1,
                  ifelse(163 - wins - second_place_losses <= 0,
                         "✓",
                         163 - wins - second_place_losses),
                  "")) %>%
  mutate(division_elimination_number = 
           ifelse(division_place != 1,
                  ifelse((163 - first_place_wins - losses) <= 0,
                         "—",
                         (163 - first_place_wins - losses)),
                  "")) %>%
  mutate(division_magic_or_eliminated = 
           ifelse(division_place == 1,
                  division_magic_number,
                  division_elimination_number)) %>%
  mutate(first_place_net_wins = nl_central_standings$net_wins[[1]]) %>%
  mutate(division_games_behind = (first_place_net_wins - net_wins)/2)



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

nl_east_standings <- nl_east %>%
  filter(!is.na(team_label)) %>%
  arrange(desc(win_pct)) %>%
  mutate(division_place = row_number()) 
nl_east_standings_magic <- nl_east_standings %>%
  mutate(second_place_losses = nl_east_standings$losses[[2]]) %>%
  mutate(first_place_remaining = nl_east_standings$games_remaining[[1]]) %>%
  mutate(first_place_wins = nl_east_standings$wins[[1]]) %>%
  mutate(division_magic_number = 
           ifelse(division_place == 1,
                  ifelse(163 - wins - second_place_losses <= 0,
                         "✓",
                         163 - wins - second_place_losses),
                  "")) %>%
  mutate(division_elimination_number = 
           ifelse(division_place != 1,
                  ifelse((163 - first_place_wins - losses) <= 0,
                         "—",
                         (163 - first_place_wins - losses)),
                  "")) %>%
  mutate(division_magic_or_eliminated = 
           ifelse(division_place == 1,
                  division_magic_number,
                  division_elimination_number)) %>%
  mutate(first_place_net_wins = nl_east_standings$net_wins[[1]]) %>%
  mutate(division_games_behind = (first_place_net_wins - net_wins)/2)


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

nl_west_standings <- nl_west %>%
  filter(!is.na(team_label)) %>%
  arrange(desc(win_pct)) %>%
  mutate(division_place = row_number()) 
nl_west_standings_magic <- nl_west_standings %>%
  mutate(second_place_losses = nl_west_standings$losses[[2]]) %>%
  mutate(first_place_remaining = nl_west_standings$games_remaining[[1]]) %>%
  mutate(first_place_wins = nl_west_standings$wins[[1]]) %>%
  mutate(division_magic_number = 
           ifelse(division_place == 1,
                  ifelse(163 - wins - second_place_losses <= 0,
                         "✓",
                         163 - wins - second_place_losses),
                  "")) %>%
  mutate(division_elimination_number = 
           ifelse(division_place != 1,
                  ifelse((163 - first_place_wins - losses) <= 0,
                         "—",
                         (163 - first_place_wins - losses)),
                  "")) %>%
  mutate(division_magic_or_eliminated = 
           ifelse(division_place == 1,
                  division_magic_number,
                  division_elimination_number)) %>%
  mutate(first_place_net_wins = nl_west_standings$net_wins[[1]]) %>%
  mutate(division_games_behind = (first_place_net_wins - net_wins)/2)

division_standings <- full_join(al_central_standings_magic, al_east_standings_magic) %>%
  full_join(al_west_standings_magic) %>% full_join(nl_central_standings_magic) %>%
  full_join(nl_east_standings_magic) %>% full_join(nl_west_standings_magic) %>%
  select(logo_url, team_label, wins, losses, net_wins, win_pct, win_pct_text,
         division_games_behind, division_magic_number, games_remaining,
         division_elimination_number,division_magic_or_eliminated,
         last_ten, outcomes, division, division_place, league)


al_games <- full_join(al_central, al_east) %>%
  full_join(al_west)
nl_games <- full_join(nl_central, nl_east) %>%
  full_join(nl_west)

mlb_games <- full_join(al_games, nl_games)

# standings check ----
old_standings <- read_csv("data/standings.csv",
                          col_types = cols(
                            league = col_character(),
                            team_label = col_character(),
                            wins = col_number(),
                            losses = col_number(),
                            win_pct_text = col_character(),
                            games_remaining = col_number(),
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

# division standings ----
mlb_standings <- mlb_games %>%
  filter(!is.na(team_label)) %>%
  select(logo_url, team_label, wins, losses, net_wins, win_pct, win_pct_text, games_remaining,last_ten, outcomes, division, league)

standings_table <- division_standings %>%
  group_by(division) %>%
  arrange(division,desc(win_pct)) %>%
  gt() %>%
  gt_theme_espn() %>%
  gt_plt_winloss(outcomes, max_wins = 10,
                 type = "pill",
                 width = 15) %>%
  text_transform(
    locations = cells_body(columns = logo_url),
    fn = function(x) {
      web_image(
        url = x,
        height = px(12)
      )
    }
  ) %>%
  cols_hide(columns = c(win_pct, league,last_ten, net_wins,
                        division_magic_number,
                        division_elimination_number,
                        division_place, 
                        division_magic_or_eliminated)) %>% # hide this until new playoffs figured out
  cols_align(
    align = c("right"),
    columns = c(last_ten,win_pct_text, logo_url, outcomes,
                division_magic_or_eliminated)
  ) %>%
  cols_label(
    logo_url = "",
    team_label = "Team",
    wins = "W",
    losses = "L",
    division_games_behind = "GB",
    games_remaining = "GR",
    net_wins = html("Games<br>Above<br>.500"),
    win_pct_text = "Pct",
    division_magic_or_eliminated = html("M#<br>/E#"),
    #division_magic_number = "M#",
    #division_elimination_number = "E#",
    outcomes = html("Last 10 Games")
  ) %>%
  #opt_table_font(font = c("verdana","calibri","menlo","consolas","monospace","helvetica", "arial", "sans-serif")) %>%
  #opt_row_striping(row_striping = TRUE) %>%
  tab_options(
    table.width = pct(100),
    data_row.padding = px(4),
    table.font.size = px(12)
  ) %>%
  # ) # %>%
  #opt_table_lines(extent = "none") %>%
  opt_all_caps(all_caps = TRUE)
standings_table
standings_table_html <- as_raw_html(standings_table, inline_css = FALSE)
better_divs_division_standings <- gsub("[#][a-z]{10}",
                                       "#division_standings_table", 
                                       x = standings_table_html)
better_division_standings_table_html <- gsub("[\"][a-z]{10}",
                                             "\"division_standings_table",
                                             x = better_divs_division_standings)


# games above 500 plots ----
standings_interactive <- function(division) {
  hchart(division, "line", hcaes(x = game_n,
                                 y = net_wins,
                                 group = team),
         animation = FALSE,
         tooltip = list(
           pointFormat = "{point.team}: {point.wins}-{point.losses}, {point.win_pct_text}%")
  ) %>%
    hc_colors(brewer.pal(9,"Set1")) %>%
    hc_legend(align = "right",
              layout = "vertical",
              verticalAlign = "middle") %>%
    hc_title(text = tail(division$division,1)) %>%
    hc_yAxis(title = "") %>%
    hc_xAxis(title = "",
             max = 162) %>%
    hc_add_theme(
      hc_theme_bloom()
    )
}

al_central_interactive <- standings_interactive(al_central)  
saveWidget(widget = al_central_interactive, 
           file = "interactive/al_central_interactive.html",
           selfcontained = FALSE,
           libdir = "interactive")
al_east_interactive <- standings_interactive(al_east)  
saveWidget(widget = al_east_interactive, 
           file = "interactive/al_east_interactive.html",
           selfcontained = FALSE,
           libdir = "interactive")
al_west_interactive <- standings_interactive(al_west)  
saveWidget(widget = al_west_interactive, 
           file = "interactive/al_west_interactive.html",
           selfcontained = FALSE,
           libdir = "interactive")

nl_central_interactive <- standings_interactive(nl_central)  
saveWidget(widget = nl_central_interactive, 
           file = "interactive/nl_central_interactive.html",
           selfcontained = FALSE,
           libdir = "interactive")
nl_east_interactive <- standings_interactive(nl_east)  
saveWidget(widget = nl_east_interactive, 
           file = "interactive/nl_east_interactive.html",
           selfcontained = FALSE,
           libdir = "interactive")
nl_west_interactive <- standings_interactive(nl_west)  
saveWidget(widget = nl_west_interactive, 
           file = "interactive/nl_west_interactive.html",
           selfcontained = FALSE,
           libdir = "interactive")



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
    geom_line() +
    geom_text(aes(x = game_n + 10),
              family = "mono",
              size = 4) +
    scale_x_continuous(breaks = c(0,40, 81,121, 162)) +
    scale_y_continuous(position = "right") +
    scale_color_brewer(palette = "Set1",
                       guide = NULL) +
    # scale_color_manual(values = c("#27251F","#E31937","#0C2340","#BD9B60","#002B5C"),
    #                  guide = NULL) +
    coord_cartesian(xlim = c(0,172)) +
    theme_minimal() +
    labs(title = division$division,
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
standings_plot_mobile <- function(division) {
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
    geom_line(size = .3) +
    geom_text(aes(x = game_n + 10),
              family = "mono",
              size = 2) +
    scale_x_continuous(breaks = c(0,40, 81,121, 162)) +
    scale_y_continuous(position = "right") +
    scale_color_brewer(palette = "Set1",
                       guide = NULL) +
    # scale_color_manual(values = c("#27251F","#E31937","#0C2340","#BD9B60","#002B5C"),
    #                  guide = NULL) +
    coord_cartesian(xlim = c(0,172)) +
    theme_minimal() +
    labs(title = division$division,
         #caption = "Source: FiveThirtyEight",
         x = NULL,
         y = NULL) +
    theme(
      plot.background = element_rect(fill = "white", color = "white"),
      panel.grid = element_blank(),
      plot.title = element_text(size = 6),
      axis.text = element_text(size = 5),
      legend.title = element_blank(),
      axis.ticks.x = element_line(color = "grey60", size = 0.25),
      panel.grid.major.y = element_line(colour = "grey93"),
      axis.ticks.y = element_line(color = "grey60"),
      plot.caption = element_text(color = "grey40")
    )
}
al_central_plot <- standings_plot(al_central)  
al_east_plot <- standings_plot(al_east)  
al_west_plot <- standings_plot(al_west)  

nl_central_plot <- standings_plot(nl_central)  
nl_east_plot <- standings_plot(nl_east)  
nl_west_plot <- standings_plot(nl_west)  

plot_grid(al_central_plot,nl_central_plot,
          al_east_plot,nl_east_plot,
          al_west_plot,nl_west_plot,
          align = "hv",
          ncol = 2)

ggsave("plots/divisions_net_wins.png", 
       width = 8, height = 7, dpi = 320)

al_central_plot <- standings_plot_mobile(al_central)  
al_east_plot <- standings_plot_mobile(al_east)  
al_west_plot <- standings_plot_mobile(al_west)  

nl_central_plot <- standings_plot_mobile(nl_central)  
nl_east_plot <- standings_plot_mobile(nl_east)  
nl_west_plot <- standings_plot_mobile(nl_west)  


plot_grid(al_central_plot,al_east_plot,al_west_plot,
          nl_central_plot,nl_east_plot,nl_west_plot,
          align = "v",
          ncol = 1)

ggsave("plots/divisions_net_wins_mobile.png", 
       width = 2, height = 7, dpi = 320)

# wild card standings ----

al_standings <- al_games %>%
  filter(!is.na(team_label)) %>%
  arrange(desc(win_pct)) %>%
  mutate(league_place = row_number()) 
al_standings_elim <- al_standings %>%
  mutate(fifth_place_wins = al_standings$wins[[5]]) %>%
  mutate(league_elimination_number = if_else(league_place != 1:5,
                                             (163 - fifth_place_wins - losses),
                                             NULL))
nl_standings <- nl_games %>%
  filter(!is.na(team_label)) %>%
  arrange(desc(win_pct)) %>%
  mutate(league_place = row_number()) 
nl_standings_elim <- nl_standings %>%
  mutate(fifth_place_wins = nl_standings$wins[[5]]) %>%
  mutate(league_elimination_number = if_else(league_place != 1:5,
                                             (163 - fifth_place_wins - losses),
                                             NULL))

mlb_standings <- full_join(al_standings_elim, nl_standings_elim) %>%
  full_join(division_standings) %>%
  select(logo_url, team_label, wins, losses, net_wins, win_pct, 
         win_pct_text, games_remaining, last_ten, division, league, 
         league_elimination_number, outcomes, division_place, 
         league_place, division_magic_number)

al_standings_magic <- mlb_standings %>%
  filter(league == "AL") %>%
  mutate(division_leaders = case_when(
    division_place == 1 & division == "AL Central" ~ "C",
    division_place == 1 & division == "AL East"    ~ "E",
    division_place == 1 & division == "AL West"    ~ "W",
    TRUE                                           ~ "")
  ) %>%
  group_by(division_leaders) %>%
  mutate(wild_card_rank = rank(desc(win_pct), ties.method = "first")) %>%
  mutate(wild_cardss = 
           ifelse(division_leaders == "W" | 
                    division_leaders == "C" | 
                    division_leaders == "E",
                  division_leaders,
                  paste("WC",wild_card_rank,sep="")
           )) %>%
  mutate(wild_cards = 
           ifelse(wild_cardss == "WC1",
                  "WC",
                  ifelse(wild_cardss == "WC2",
                         "WC",
                         ifelse(division_magic_number=="✓",
                                paste(division_leaders,division_magic_number,sep=""),
                                division_leaders)
                  ))) %>%
  ungroup() %>%
  mutate(second_wc_wins = if_else(wild_cardss == "WC2",
                                  wins,
                                  NULL)) %>%
  fill(second_wc_wins, 
       .direction = "downup") %>%
  mutate(second_wc_losses = if_else(wild_cardss == "WC2",
                                    losses,
                                    NULL)) %>%
  fill(second_wc_losses, 
       .direction = "downup") %>%
  mutate(second_wc_net_wins = second_wc_wins-second_wc_losses) %>%
  mutate(league_elim_number = if_else(wild_cards == "",
                                      (163 - second_wc_wins - losses),
                                      NULL)) %>%
  mutate(division_or_elim = ifelse(wild_cards != "",
                                   wild_cards,
                                   ifelse(league_elim_number <= 0,
                                          "—",
                                          league_elim_number))) %>%
  mutate(wc_games_behind = (second_wc_net_wins - net_wins)/2) %>%
  mutate(wc_games_behind = 
           ifelse(division_leaders == "W" | 
                    division_leaders == "C" | 
                    division_leaders == "E",
                  wild_cards,
                  (second_wc_net_wins - net_wins)/2
           )
  )

nl_standings_magic <- mlb_standings %>%
  filter(league == "NL") %>%
  mutate(division_leaders = case_when(
    division_place == 1 & division == "NL Central" ~ "C",
    division_place == 1 & division == "NL East"    ~ "E",
    division_place == 1 & division == "NL West"    ~ "W",
    TRUE                                           ~ "")
  ) %>%
  group_by(division_leaders) %>%
  mutate(wild_card_rank = rank(desc(win_pct), ties.method = "first")) %>%
  mutate(wild_cardss = 
           ifelse(division_leaders == "W" | 
                    division_leaders == "C" | 
                    division_leaders == "E",
                  division_leaders,
                  paste("WC",wild_card_rank,sep="")
           )) %>%
  mutate(wild_cards = 
           ifelse(wild_cardss == "WC1",
                  "WC",
                  ifelse(wild_cardss == "WC2",
                         "WC",
                         ifelse(division_magic_number=="✓",
                                paste(division_leaders,division_magic_number,sep=""),
                                division_leaders)
                  ))) %>%
  ungroup() %>%
  mutate(second_wc_wins = if_else(wild_cardss == "WC2",
                                  wins,
                                  NULL)) %>%
  fill(second_wc_wins, 
       .direction = "downup") %>%
  mutate(second_wc_losses = if_else(wild_cardss == "WC2",
                                    losses,
                                    NULL)) %>%
  fill(second_wc_losses, 
       .direction = "downup") %>%
  mutate(second_wc_net_wins = second_wc_wins-second_wc_losses) %>%
  mutate(league_elim_number = if_else(wild_cards == "",
                                      (163 - second_wc_wins - losses),
                                      NULL)) %>%
  mutate(division_or_elim = ifelse(wild_cards != "",
                                   wild_cards,
                                   ifelse(league_elim_number <= 0,
                                          "—",
                                          league_elim_number))) %>%
  mutate(wc_games_behind = (second_wc_net_wins - net_wins)/2) %>%
  mutate(wc_games_behind = 
           ifelse(division_leaders == "W" | 
                    division_leaders == "C" | 
                    division_leaders == "E",
                  wild_cards,
                  (second_wc_net_wins - net_wins)/2
           )
  )

mlb_standings_magic <- full_join(al_standings_magic, nl_standings_magic)

wild_card_table <- mlb_standings_magic %>%
  select(logo_url, team_label, wins, losses, 
         win_pct,win_pct_text, wc_games_behind,
         division_or_elim,outcomes, league) %>%
  group_by(league) %>%
  arrange(league,desc(win_pct)) %>%
  gt() %>%
  gt_theme_espn() %>%
  gt_plt_winloss(outcomes, max_wins = 10,
                 type = "pill",
                 width = 15) %>%
  text_transform(
    locations = cells_body(columns = logo_url),
    fn = function(x) {
      web_image(
        url = x,
        height = px(12)
      )
    }
  ) %>%
  cols_hide(columns = c(win_pct,
                        division_or_elim)) %>% #hide until figure out new playoffs
  cols_align(
    align = c("right"),
    columns = c(win_pct_text, wc_games_behind, logo_url, outcomes, division_or_elim)
  ) %>%
  cols_label(
    logo_url = "",
    team_label = "Team",
    wins = "W",
    losses = "L",
    wc_games_behind = "GB",
    win_pct_text = "Pct",
    division_or_elim = "E#",
    outcomes = html("Last 10 Games")
  ) %>%
  # opt_table_font(font = c("verdana","calibri","menlo","consolas","monospace","helvetica", "arial", "sans-serif")) %>%
  tab_options(
    table.width = pct(100),
    data_row.padding = px(4),
    table.font.size = px(12)
  )  %>%
  opt_all_caps(all_caps = TRUE)
wild_card_table
wild_card_table_html <- as_raw_html(wild_card_table, inline_css = FALSE)
better_wild_card_divs <- gsub("[#][a-z]{10}",
                              "#wild_card_standings_table", 
                              x = wild_card_table_html)
better_wild_card_standings_table_html <- gsub("[\"][a-z]{10}",
                                              "\"wild_card_standings_table",
                                              x = better_wild_card_divs)



# wild card plot ----
mlb_min <-  .8*min(mlb_standings$win_pct)
mlb_max <- 1.05*max(mlb_standings$win_pct)
nudge <- -.0461118*(mlb_max-mlb_min)
division_leader_nudge <- .021*(mlb_max-mlb_min)

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

al_plot <- ggplot(al_standings_magic, aes(x = reorder(team_label, win_pct), 
                                          y = win_pct)) +
  # geom_rect(xmin = al_playoffs_rect, xmax = Inf,
  #           ymin = -Inf, ymax = Inf,
  #           fill = "grey85") +
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
            nudge_y = nudge) +
  geom_text(aes(label = division_leaders),
            family = "mono",
            nudge_y = division_leader_nudge) +
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
al_plot
al_plot_mobile <- al_plot +
  theme(
    plot.margin = margin(t = 5,
                         r = 5,
                         b = 0))
al_plot_mobile

nl_plot <- ggplot(nl_standings_magic, aes(x = reorder(team_label, -win_pct), 
                                          y = win_pct)) +
  # geom_rect(xmin = -Inf, xmax = nl_playoffs_rect,
  #           ymin = -Inf, ymax = Inf,
  #           fill = "grey85") +
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
            nudge_y = nudge) +
  geom_text(aes(label = division_leaders),
            family = "mono",
            nudge_y = division_leader_nudge) +
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

nl_plot_mobile <- nl_plot +
  theme(
    plot.margin = margin(t = 0,
                         b = 0,
                         l = 0)
  )
nl_plot_mobile

plot_grid(al_plot,nl_plot,
          align = "h") 

ggsave("plots/mlb_team_rank.png",
       width = 8, height = 8*(628/1200),
       dpi = 320)

plot_grid(al_plot_mobile,nl_plot_mobile,
          align = "h",
          rel_widths = c(6,7)) 

ggsave("plots/mlb_team_rank_mobile.png",
       width = 4, height = 8*(628/1200),
       dpi = 320)

# wild card net wins plot ----
league_standings_plot <- function(league) {
  ggplot(league, aes(x = game_n,
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
    geom_line() +
    geom_text(aes(x = game_n + 10),
              family = "mono",
              size = 4) +
    scale_x_continuous(breaks = c(0,40, 81,121, 162)) +
    scale_y_continuous(position = "right") +
    # scale_color_brewer(palette = "Set1",
    #                    guide = NULL) +
    scale_color_discrete(guide = NULL) +
    # scale_color_manual(values = c("#27251F","#E31937","#0C2340","#BD9B60","#002B5C"),
    #                  guide = NULL) +
    coord_cartesian(xlim = c(0,172)) +
    theme_minimal() +
    labs(title = league$league,
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
al_plot <- league_standings_plot(al_games)
nl_plot <- league_standings_plot(nl_games)

plot_grid(al_plot, nl_plot,
          align = "hv")

# ggsave("plots/mlb_wild_card.png",
#        width = 8, height = 4, dpi = 320)


## remove eliminated teams----

al_games_plus <- mlb_standings_magic %>%
  filter(league == "AL") %>%
  ungroup() %>%
  full_join(al_games) %>%
  group_by(team) %>%
  fill(division_or_elim, .direction = "downup") %>%
  filter(division_or_elim != "—")

nl_games_plus <- mlb_standings_magic %>%
  filter(league == "NL") %>%
  ungroup() %>%
  full_join(nl_games) %>%
  group_by(team) %>%
  fill(division_or_elim, .direction = "downup") %>%
  filter(division_or_elim != "—")

al_plot <- league_standings_plot(al_games_plus)
nl_plot <- league_standings_plot(nl_games_plus)

plot_grid(al_plot, nl_plot,
          align = "hv")

ggsave("plots/mlb_wild_card.png",
       width = 8, height = 4, dpi = 320)

plot_grid(al_plot, nl_plot,
          align = "v",
          ncol = 1)

ggsave("plots/mlb_wild_card_mobile.png",
       width = 4, height = 4, dpi = 320)


hc_al_games <- mlb_standings_magic %>%
  filter(league == "AL") %>%
  ungroup() %>%
  full_join(al_games) %>%
  group_by(team) %>%
  fill(division_or_elim, .direction = "downup") %>%
  select(team, game_n, net_wins, wins, losses, win_pct_text) %>%
  group_by(team) %>%
  arrange(game_n)

hc_nl_games <- mlb_standings_magic %>%
  filter(league == "NL") %>%
  ungroup() %>%
  full_join(nl_games) %>%
  group_by(team) %>%
  fill(division_or_elim, .direction = "downup") %>%
  select(team, game_n, net_wins, wins, losses, win_pct_text) %>%
  group_by(team) %>%
  arrange(game_n)


fig1 <- hchart(hc_al_games, "line", hcaes(x = game_n,
                                          y = net_wins,
                                          group = team),
               animation = FALSE,
               tooltip = list(
                 pointFormat = "{point.team}: {point.wins}-{point.losses}, {point.win_pct_text}%")
) %>%
  hc_colors(brewer.pal(12,"Paired")) %>%
  hc_legend(align = "right",
            layout = "vertical",
            verticalAlign = "middle") %>%
  hc_title(text = "AL") %>%
  hc_yAxis(title = "") %>%
  hc_xAxis(title = "",
           max = 162) %>%
  hc_add_theme(
    hc_theme_bloom()
  )

fig1
saveWidget(widget = fig1, file = "interactive/al_standings.html",
           selfcontained = FALSE,
           libdir = "interactive")

fig2 <- hchart(hc_nl_games, "line", hcaes(x = game_n,
                                          y = net_wins,
                                          group = team),
               animation = FALSE,
               tooltip = list(
                 pointFormat = "{point.team}: {point.wins}-{point.losses}, {point.win_pct_text}%")
)%>%
  hc_colors(brewer.pal(12,"Paired")) %>%
  hc_legend(align = "right",
            layout = "vertical",
            verticalAlign = "middle") %>%
  hc_title(text = "NL") %>%
  hc_yAxis(title = "") %>%
  hc_xAxis(title = "",
           max = 162) %>%
  hc_add_theme(
    hc_theme_bloom()
  ) 

fig2
saveWidget(widget = fig2, file = "interactive/nl_standings.html",
           selfcontained = FALSE,
           libdir = "interactive")

# web text ----
now <- as_datetime(now())
now_formatted <- strftime(x = now, 
                          tz = "US/Central",
                          format = "%I:%M% %p CT, %B %d")

now_html <- paste("<p class=\"updated_time\"> Latest data: ",
                  now_formatted,
                  "</p>",
                  sep = "")



web_text <- paste(
  "---
layout: page
title: Baseball Standings
permalink: /projects/baseball
imageurl: https://bzigterman.com/plots/mlb_wild_card.png
---

",now_html," 

### Games Above .500

<div class = \"standings\">
<iframe src=\"/interactive/al_central_interactive.html\" width=\"100%\" height=\"300\"> 
</iframe>

<iframe src=\"/interactive/al_east_interactive.html\" width=\"100%\" height=\"300\"> 
</iframe>

<iframe src=\"/interactive/al_west_interactive.html\" width=\"100%\" height=\"300\"> 
</iframe>

<iframe src=\"/interactive/nl_central_interactive.html\" width=\"100%\" height=\"300\"> 
</iframe>

<iframe src=\"/interactive/nl_east_interactive.html\" width=\"100%\" height=\"300\"> 
</iframe>

<iframe src=\"/interactive/nl_west_interactive.html\" width=\"100%\" height=\"300\"> 
</iframe>
</div>

",better_division_standings_table_html,"

## Wild Card

<picture>
  <source srcset=\"{{ site.baseurl }}/plots/mlb_team_rank.png\"
          media=\"(min-width: 750px)\">
  <img src=\"{{ site.baseurl }}/plots/mlb_team_rank_mobile.png\" alt=\"\" />
</picture>

",better_wild_card_standings_table_html,"

<div class = \"standings\">
<iframe src=\"/interactive/al_standings.html\" width=\"100%\" height=\"400\"> 
</iframe>

<iframe src=\"/interactive/nl_standings.html\" width=\"100%\" height=\"400\"> 
</iframe>
</div>

<p class=\"updated_time\">Source: <a href=\"https://github.com/fivethirtyeight/data/tree/master/mlb-elo\">FiveThirtyEight</a>. <a href=\"https://github.com/fivethirtyeight/data/blob/master/LICENSE\">CC-BY-4.0 License</a>.</p> 

",
sep = ""
)
if (standings_the_same != TRUE) {
  write_lines(web_text,"projects/baseball.md")
}
