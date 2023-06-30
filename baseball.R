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
library(svglite)
library(waldo)
library(baseballr)
library(rvest)
library(janitor)

# get data ----
odds_url <- "https://www.baseball-reference.com/leagues/majors/2023-playoff-odds.shtml"
odds <- read_html(odds_url) |> 
  html_element("#playoff_prob_mlb") |> 
  html_table(header = FALSE,
             convert = FALSE)

table <- odds |> 
  row_to_names(row_number = 2) |> 
  clean_names() |> 
  select(tm,lg,d,post,wc,div,lds,lcs,pennant,win_ws) |> 
  filter(lg == "AL" | lg == "NL") |> 
  mutate(team_label = case_when(
    tm == "Atlanta Braves" ~ "ATL",
    tm == "Miami Marlins"  ~ "MIA",
    tm == "Philadelphia Phillies" ~ "PHI",
    tm == "New York Mets" ~ "NYM",
    tm == "Washington Nationals" ~ "WSH",
    tm == "Chicago Cubs" ~ "CHC",
    tm == "Milwaukee Brewers" ~ "MIL",
    tm == "Cincinnati Reds" ~ "CIN",
    tm == "Pittsburgh Pirates" ~ "PIT",
    tm == "St. Louis Cardinals" ~ "STL",
    tm == "Los Angeles Dodgers" ~ "LAD",
    tm == "San Francisco Giants" ~ "SF ",
    tm == "Arizona Diamondbacks" ~ "ARI",
    tm == "San Diego Padres" ~ "SD ",
    tm == "Colorado Rockies" ~ "COL",
    tm == "Tampa Bay Rays" ~ "TB ",
    tm == "New York Yankees" ~ "NYY",
    tm == "Baltimore Orioles" ~ "BAL",
    tm == "Toronto Blue Jays" ~ "TOR",
    tm == "Boston Red Sox" ~ "BOS",
    tm == "Minnesota Twins" ~ "MIN",
    tm == "Cleveland Guardians" ~ "CLE",
    tm == "Chicago White Sox" ~ "CWS",
    tm == "Detroit Tigers" ~ "DET",
    tm == "Kansas City Royals" ~ "KC ",
    tm == "Texas Rangers" ~ "TEX",
    tm == "Houston Astros" ~ "HOU",
    tm == "Los Angeles Angels" ~ "LAA",
    tm == "Seattle Mariners" ~ "SEA",
    tm == "Oakland Athletics" ~ "OAK"
  )) |> 
  select(team_label,post,wc,div,lds,lcs,pennant,win_ws) |> 
  mutate(post = parse_number(post)) |> 
  mutate(wc = parse_number(wc)) |> 
  mutate(div = parse_number(div)) |> 
  mutate(lds = parse_number(lds)) |> 
  mutate(lcs= parse_number(lcs)) |> 
  mutate(pennant = parse_number(pennant)) |> 
  mutate(win_ws = parse_number(win_ws))

get_team_records <- function(abbreviation) {
  records <- bref_team_results(abbreviation, 2023) |> 
    mutate(game_n = as.numeric( Gm)) |> 
    mutate(result = case_when(
      Result == "W" ~ "W",
      Result == "L" ~ "L",
      Result == "L-wo" ~ "L",
      Result == "W-wo" ~ "W",
    )) |> 
    separate(Record,c( "wins","losses"),convert = TRUE) |> 
    mutate(win_pct = wins/game_n) %>%
    mutate(win_pct_text = if_else(win_pct == 1, 
                                  paste("1.000"),
                                  paste0(".",round(win_pct*1000)))) %>%
    mutate(net_wins = wins-losses) %>%
    mutate(games_remaining = 162-game_n) |> 
    mutate(team = case_when(
      abbreviation == "CHW" ~ "CWS",
      abbreviation == "KCR" ~ "KC ",
      abbreviation == "TBR" ~ "TB ",
      abbreviation == "WSN" ~ "WSH",
      abbreviation == "SFG" ~ "SF ",
      abbreviation == "SDP" ~ "SD ",
      TRUE ~ abbreviation
    )
    ) |> 
    mutate(team_label = if_else(game_n == max(na.omit(game_n)),team,NA))  %>%
    mutate(win = if_else(result == "W",1,0)) |> 
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

team1 <- get_team_records("TBR") %>%
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
team4 <- get_team_records("LAA") %>%
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
team4 <- get_team_records("MIA") %>%
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
  full_join(table) |> 
  select(logo_url, team_label, wins, losses, net_wins, win_pct, win_pct_text,
         games_remaining,
         division_games_behind, division_magic_number, 
         division_elimination_number,division_magic_or_eliminated,div,
         outcomes, division, division_place, league) 


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
                            wins = col_integer(),
                            losses = col_integer(),
                            win_pct_text = col_character(),
                            games_remaining = col_number()),
                          trim_ws = FALSE
)
#old_standings <- as_tibble(2)
standings_check <- mlb_games %>%
  filter(!is.na(team_label)) %>%
  group_by(league) %>%
  arrange(league,desc(win_pct)) %>%
  select(league, team_label, wins, losses, win_pct_text, games_remaining) |> 
  ungroup()
standings_the_same <- compare(standings_check, old_standings)
if (length(standings_the_same) > 0) { 
  write_csv(standings_check,"data/standings.csv")
}

# division standings ----
mlb_standings <- mlb_games %>%
  filter(!is.na(team_label)) %>%
  select(logo_url, team_label, wins, losses, net_wins, win_pct, win_pct_text, games_remaining, outcomes, division, league)

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
  fmt_percent(
    columns = div,
    decimals = 1,
    scale_values = FALSE
  ) |> 
  data_color(
    columns = div,
    na_color = "#FFFFFF",
    palette = "Reds"
  ) |> 
  cols_hide(columns = c(win_pct, league, net_wins,games_remaining,
                        division_magic_number,
                        division_elimination_number,
                        division_place)) %>% # hide this until new playoffs figured out
  cols_align(
    align = c("right"),
    columns = c(win_pct_text, div,logo_url, outcomes,games_remaining,
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
    div = "Odds",
    #division_magic_number = "M#",
    #division_elimination_number = "E#",
    outcomes = html("Last 10")
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
         label = list(
           enabled = TRUE
         ),
         tooltip = list(
           pointFormat = "{point.team}: {point.wins}-{point.losses}, {point.win_pct_text}%")
  ) %>%
    hc_colors(brewer.pal(9,"Set1")) %>%
    hc_legend(enabled = FALSE) %>%
    hc_title(text = tail(division$division,1)) %>%
    hc_yAxis(title = "",
             endOnTick = FALSE,
             startOnTick = FALSE) %>%
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

# wild card standings ----

al_standings <- al_games %>%
  filter(!is.na(team_label)) %>%
  arrange(desc(win_pct)) %>%
  mutate(league_place = row_number()) 
al_standings_elim <- al_standings %>%
  mutate(fifth_place_wins = al_standings$wins[[5]]) %>%
  mutate(sixth_place_wins = al_standings$wins[[6]]) %>%
  mutate(league_elimination_number = if_else(league_place > 6,
                                             (163 - sixth_place_wins - losses),
                                             NA))
nl_standings <- nl_games %>%
  filter(!is.na(team_label)) %>%
  arrange(desc(win_pct)) %>%
  mutate(league_place = row_number()) 
nl_standings_elim <- nl_standings %>%
  mutate(fifth_place_wins = nl_standings$wins[[5]]) %>%
  mutate(sixth_place_wins = nl_standings$wins[[6]]) %>%
  mutate(league_elimination_number = if_else(league_place > 6,
                                             (163 - sixth_place_wins - losses),
                                             NA))

mlb_standings <- full_join(al_standings_elim, nl_standings_elim) %>%
  full_join(division_standings) %>%
  select(logo_url, team_label, wins, losses, net_wins, win_pct, 
         win_pct_text, games_remaining, division, league, 
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
                         ifelse(wild_cardss == "WC3",
                                "WC",
                                ifelse(division_magic_number=="✓",
                                       paste(division_leaders,
                                             division_magic_number,
                                             sep=""),
                                       division_leaders)
                         )))) %>%
  ungroup() %>%
  mutate(second_wc_wins = if_else(wild_cardss == "WC3",
                                  wins,
                                  NA)) %>%
  fill(second_wc_wins, 
       .direction = "downup") %>%
  mutate(second_wc_losses = if_else(wild_cardss == "WC3",
                                    losses,
                                    NA)) %>%
  fill(second_wc_losses, 
       .direction = "downup") %>%
  mutate(second_wc_net_wins = second_wc_wins-second_wc_losses) %>%
  mutate(league_elim_number = if_else(wild_cards == "",
                                      (163 - second_wc_wins - losses),
                                      NA)) %>%
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
                         ifelse(wild_cardss == "WC3",
                                "WC",
                                ifelse(division_magic_number=="✓",
                                       paste(division_leaders,
                                             division_magic_number,
                                             sep=""),
                                       division_leaders)
                         )))) %>%
  ungroup() %>%
  mutate(second_wc_wins = if_else(wild_cardss == "WC3",
                                  wins,
                                  NA)) %>%
  fill(second_wc_wins, 
       .direction = "downup") %>%
  mutate(second_wc_losses = if_else(wild_cardss == "WC3",
                                    losses,
                                    NA)) %>%
  fill(second_wc_losses, 
       .direction = "downup") %>%
  mutate(second_wc_net_wins = second_wc_wins-second_wc_losses) %>%
  mutate(league_elim_number = if_else(wild_cards == "",
                                      (163 - second_wc_wins - losses),
                                      NA)) %>%
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

mlb_standings_magic <- full_join(al_standings_magic, nl_standings_magic) |> 
  full_join(table) 

wild_card_table <- mlb_standings_magic %>%
  select(logo_url, team_label, wins, losses, 
         win_pct,win_pct_text, games_remaining, wc_games_behind,
         division_or_elim,post,outcomes, league) %>%
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
  cols_hide(columns = c(win_pct,games_remaining)) %>% #hide until figure out new playoffs
  cols_align(
    align = c("right"),
    columns = c(win_pct_text, logo_url,post,
                outcomes, games_remaining, wc_games_behind, 
                division_or_elim)
  ) %>%
  fmt_percent(
    columns = post,
    decimals = 1,
    scale_values = FALSE
  ) |> 
  data_color(
    columns = post,
    na_color = "#FFFFFF",
    palette = "Reds"
  ) |> 
  cols_label(
    logo_url = "",
    team_label = "Team",
    wins = "W",
    losses = "L",
    post = "Odds",
    win_pct_text = "Pct",
    games_remaining = "GR",
    wc_games_behind = "GB",
    division_or_elim = "E#",
    outcomes = html("Last 10")
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
               label = list(
                 enabled = TRUE
               ),
               tooltip = list(
                 pointFormat = "{point.team}: {point.wins}-{point.losses}, {point.win_pct_text}%")
) %>%
  hc_colors(brewer.pal(12,"Paired")) %>%
  hc_legend(enabled = FALSE) %>%
  hc_title(text = "AL") %>%
  hc_yAxis(title = "",
           endOnTick = FALSE,
           startOnTick = FALSE) %>%
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
               label = list(
                 enabled = TRUE
               ),
               tooltip = list(
                 pointFormat = "{point.team}: {point.wins}-{point.losses}, {point.win_pct_text}%")
)%>%
  hc_colors(brewer.pal(12,"Paired")) %>%
  hc_legend(enabled = FALSE) %>%
  hc_title(text = "NL") %>%
  hc_yAxis(title = "",
           endOnTick = FALSE,
           startOnTick = FALSE) %>%
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

Chart inspired by those in the [Pennant app](http://www.pennantapp.com).

",better_wild_card_standings_table_html,"

<div class = \"standings\">
<iframe src=\"/interactive/al_standings.html\" width=\"100%\" height=\"400\"> 
</iframe>

<iframe src=\"/interactive/nl_standings.html\" width=\"100%\" height=\"400\"> 
</iframe>
</div>

<p class=\"updated_time\">Source: <a href=\"https://www.baseball-reference.com\">Baseball Reference</a>.</p> 

",
sep = ""
)
if (length(standings_the_same) > 0) { 
  write_lines(web_text,"projects/baseball.md")
}
