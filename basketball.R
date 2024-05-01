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
library(rvest)
library(janitor)
library(hoopR)

# ployoff odds ----
odds_url <- "https://www.basketball-reference.com/friv/playoff_prob.html"
eastern_odds <- read_html(odds_url) |>
  html_element("#all_projected_standings_e") |>
  html_table(header = FALSE,
             convert = FALSE) |> 
  janitor::row_to_names(row_number = 2) |> 
  janitor::clean_names() |> 
  select(eastern_conference, playoffs, win_finals) |> 
  arrange(desc(playoffs)) |> 
  mutate(post = parse_number(playoffs)) |> 
  mutate(finals = parse_number(win_finals)) |> 
  mutate(lg = "Eastern") |> 
  mutate(tm = eastern_conference) 

western_odds <- read_html(odds_url) |>
  html_element("#all_projected_standings_w") |>
  html_table(header = FALSE,
             convert = FALSE) |> 
  janitor::row_to_names(row_number = 2) |> 
  janitor::clean_names() |> 
  select(western_conference, playoffs, win_finals) |> 
  arrange(desc(playoffs)) |> 
  mutate(post = parse_number(playoffs)) |> 
  mutate(finals = parse_number(win_finals)) |> 
  mutate(lg = "Western") |> 
  mutate(tm = western_conference) 

table <- full_join(eastern_odds, western_odds) |> 
  select(tm, post, finals,lg) |> 
  mutate(post = if_else(is.na(post),0,post)) |> 
  mutate(finals = if_else(is.na(finals),0,finals)) |> 
  mutate(tm = na_if(tm, "")) |> 
  drop_na() |> 
  mutate(team_label = case_when(
    tm == "Atlanta Hawks" ~ "ATL",
    tm == "Boston Celtics" ~ "BOS",
    tm == "Brooklyn Nets" ~ "BKN",
    tm == "Charlotte Hornets" ~ "CHA",
    tm == "Chicago Bulls" ~ "CHI",
    tm == "Cleveland Cavaliers" ~ "CLE",
    tm == "Dallas Mavericks" ~ "DAL",
    tm == "Denver Nuggets" ~ "DEN",
    tm == "Detroit Pistons" ~ "DET",
    tm == "Golden State Warriors" ~ "GSW",
    tm == "Houston Rockets" ~ "HOU",
    tm == "Indiana Pacers" ~ "IND",
    tm == "Los Angeles Clippers" ~ "LAC",
    tm == "Los Angeles Lakers" ~ "LAL",
    tm == "Memphis Grizzlies" ~ "MEM",
    tm == "Miami Heat" ~ "MIA",
    tm == "Milwaukee Bucks" ~ "MIL",
    tm == "Minnesota Timberwolves" ~ "MIN",
    tm == "New Orleans Pelicans" ~ "NOP",
    tm == "New York Knicks" ~ "NYK",
    tm == "Oklahoma City Thunder" ~ "OKC",
    tm == "Orlando Magic" ~ "ORL",
    tm == "Philadelphia 76ers" ~ "PHI",
    tm == "Phoenix Suns" ~ "PHX",
    tm == "Portland Trail Blazers" ~ "POR",
    tm == "Sacramento Kings" ~ "SAC",
    tm == "San Antonio Spurs" ~ "SAS",
    tm == "Toronto Raptors" ~ "TOR",
    tm == "Utah Jazz" ~ "UTA",
    tm == "Washington Wizards" ~ "WSH"
  ))

# get data ----
teams <- load_nba_team_box(seasons = most_recent_nba_season()) |> 
  select(team_abbreviation,team_location, team_name) |> 
  unique()

get_team_records <- function(abbreviation) {
  records <- load_nba_team_box(seasons = most_recent_nba_season()) |> 
    filter(season_type == 2) |> 
    select(game_id,game_date,team_abbreviation,team_logo,team_winner,
           opponent_team_abbreviation,team_display_name) |> 
    arrange(game_date) |> 
    filter(team_abbreviation == abbreviation) |> 
    mutate(game_n = row_number()) |> 
    filter(game_n <= 82) |> 
    mutate(result = case_when(
      team_winner == TRUE ~ "W",
      team_winner == FALSE ~ "L"
    )) |> 
    mutate(win = if_else(result == "W",1,0)) %>%
    mutate(loss = if_else(result == "L",1,0)) %>%
    mutate(game_counter = if_else(result == "W",1,if_else(result == "L",1,NA))) %>%
    mutate(wins = cumsum(win)) %>%
    mutate(losses = cumsum(loss)) %>%
    mutate(win_pct = wins/game_n) %>%
    mutate(win_pct_text = if_else(win_pct == 1, 
                                  paste("1.000"),
                                  paste0(".",round(win_pct*1000)))) %>%
    mutate(net_wins = wins-losses) %>%
    mutate(games_remaining = 82-game_n) |> 
    mutate(team = case_when(
      abbreviation == "NO" ~ "NOP",
      abbreviation == "GS" ~ "GSW",
      abbreviation == "NY" ~ "NYK",
      abbreviation == "SA" ~ "SAS",
      abbreviation == "UTAH" ~ "UTA",
      abbreviation == "WAS" ~ "WSH",
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

# eastern conference ----
team1 <- get_team_records("CHI") %>%
  mutate(logo_url = "https://cdn.nba.com/logos/nba/1610612741/primary/L/logo.svg")
team2 <- get_team_records("CHA") %>%
  mutate(logo_url = "https://cdn.nba.com/logos/nba/1610612766/primary/L/logo.svg")
team3 <- get_team_records("NY") %>%
  mutate(logo_url = "https://cdn.nba.com/logos/nba/1610612752/primary/L/logo.svg")
team4 <- get_team_records("MIA") %>%
  mutate(logo_url = "https://cdn.nba.com/logos/nba/1610612748/primary/L/logo.svg")
team5 <- get_team_records("WSH") %>%
  mutate(logo_url = "https://cdn.nba.com/logos/nba/1610612764/primary/L/logo.svg")
team6 <- get_team_records("ATL") %>%
  mutate(logo_url = "https://cdn.nba.com/logos/nba/1610612737/primary/L/logo.svg")
team7 <- get_team_records("MIL") %>%
  mutate(logo_url = "https://cdn.nba.com/logos/nba/1610612749/primary/L/logo.svg")
team8 <- get_team_records("CLE") %>%
  mutate(logo_url = "https://cdn.nba.com/logos/nba/1610612739/primary/L/logo.svg")
team9 <- get_team_records("PHI") %>%
  mutate(logo_url = "https://cdn.nba.com/logos/nba/1610612755/primary/L/logo.svg")
team10 <- get_team_records("TOR") %>%
  mutate(logo_url = "https://cdn.nba.com/logos/nba/1610612761/primary/L/logo.svg")
team11 <- get_team_records("BOS") %>%
  mutate(logo_url = "https://cdn.nba.com/logos/nba/1610612738/primary/L/logo.svg")
team12 <- get_team_records("BKN") %>%
  mutate(logo_url = "https://cdn.nba.com/logos/nba/1610612751/primary/L/logo.svg")
team13 <- get_team_records("ORL") %>%
  mutate(logo_url = "https://cdn.nba.com/logos/nba/1610612753/primary/L/logo.svg")
team14 <- get_team_records("IND") %>%
  mutate(logo_url = "https://cdn.nba.com/logos/nba/1610612754/primary/L/logo.svg")
team15 <- get_team_records("DET") %>%
  mutate(logo_url = "https://cdn.nba.com/logos/nba/1610612765/primary/L/logo.svg")

eastern <- full_join(team1,team2) %>%
  full_join(team3) %>%
  full_join(team4) %>%
  full_join(team5) %>%
  full_join(team6) %>%
  full_join(team7) %>%
  full_join(team8) %>%
  full_join(team9) %>%
  full_join(team10) %>%
  full_join(team11) %>%
  full_join(team12) %>%
  full_join(team13) %>%
  full_join(team14) %>%
  full_join(team15) %>%
  mutate(conference = "Eastern")

east_standings <- eastern %>%
  filter(!is.na(team_label)) %>%
  arrange(desc(win_pct)) %>%
  mutate(division_place = row_number()) %>%
  mutate(net_wins = wins-losses)

# western conference ----
team1 <- get_team_records("GS") %>%
  mutate(logo_url = "https://cdn.nba.com/logos/nba/1610612744/primary/L/logo.svg")
team2 <- get_team_records("UTAH") %>%
  mutate(logo_url = "https://cdn.nba.com/logos/nba/1610612762/primary/L/logo.svg")
team3 <- get_team_records("MIN") %>%
  mutate(logo_url = "https://cdn.nba.com/logos/nba/1610612750/primary/L/logo.svg")
team4 <- get_team_records("DAL") %>%
  mutate(logo_url = "https://cdn.nba.com/logos/nba/1610612742/primary/L/logo.svg")
team5 <- get_team_records("SAC") %>%
  mutate(logo_url = "https://cdn.nba.com/logos/nba/1610612758/primary/L/logo.svg")
team6 <- get_team_records("POR") %>%
  mutate(logo_url = "https://cdn.nba.com/logos/nba/1610612757/primary/L/logo.svg")
team7 <- get_team_records("MEM") %>%
  mutate(logo_url = "https://cdn.nba.com/logos/nba/1610612763/primary/L/logo.svg")
team8 <- get_team_records("DEN") %>%
  mutate(logo_url = "https://cdn.nba.com/logos/nba/1610612743/primary/L/logo.svg")
team9 <- get_team_records("LAL") %>%
  mutate(logo_url = "https://cdn.nba.com/logos/nba/1610612747/primary/L/logo.svg")
team10 <- get_team_records("LAC") %>%
  mutate(logo_url = "https://cdn.nba.com/logos/nba/1610612746/primary/L/logo.svg")
team11 <- get_team_records("HOU") %>%
  mutate(logo_url = "https://cdn.nba.com/logos/nba/1610612745/primary/L/logo.svg")
team12 <- get_team_records("PHX") %>%
  mutate(logo_url = "https://cdn.nba.com/logos/nba/1610612756/primary/L/logo.svg")
team13 <- get_team_records("SA") %>%
  mutate(logo_url = "https://cdn.nba.com/logos/nba/1610612759/primary/L/logo.svg")
team14 <- get_team_records("NO") %>%
  mutate(logo_url = "https://cdn.nba.com/logos/nba/1610612740/primary/L/logo.svg")
team15 <- get_team_records("OKC") %>%
  mutate(logo_url = "https://cdn.nba.com/logos/nba/1610612760/primary/L/logo.svg")

western <- full_join(team1,team2) %>%
  full_join(team3) %>%
  full_join(team4) %>%
  full_join(team5) %>%
  full_join(team6) %>%
  full_join(team7) %>%
  full_join(team8) %>%
  full_join(team9) %>%
  full_join(team10) %>%
  full_join(team11) %>%
  full_join(team12) %>%
  full_join(team13) %>%
  full_join(team14) %>%
  full_join(team15) %>%
  mutate(conference = "Western")

west_standings <- western %>%
  filter(!is.na(team_label)) %>%
  arrange(desc(win_pct)) %>%
  mutate(division_place = row_number())  %>%
  mutate(net_wins = wins-losses)

nba_standings <- full_join(east_standings, west_standings)

# standings check ----
old_standings <- read_csv("data/nba_standings.csv",
                          col_types = cols(
                            conference = col_character(),
                            team_label = col_character(),
                            wins = col_number(),
                            losses = col_number(),
                            win_pct_text = col_character(),
                            post = col_number(),
                            finals = col_number()
                          ),
                          trim_ws = FALSE
)
#old_standings <- as_tibble(2)
standings_check <- nba_standings |> 
  full_join(table) |> 
  select(conference,team_label,wins,losses,win_pct,win_pct_text,post,finals) |> 
  filter(!is.na(team_label)) %>%
  group_by(conference) %>%
  arrange(conference,desc(win_pct)) %>%
  select(conference, team_label, wins, losses, win_pct_text,post,finals) |> 
  ungroup()
standings_the_same <- compare(standings_check, old_standings)
if (length(standings_the_same) > 0) { 
  write_csv(standings_check,"data/nba_standings.csv")
  
  # pennant race chart ----
  ## interactive ----
  
  sorted_nba_standings <- nba_standings |> 
    select(team_label,wins,losses,win_pct,win_pct_text,conference,
           team_display_name) |>
    arrange(if_else(conference == "Western",
                    (win_pct),
                    NA)) |> 
    arrange(if_else(conference == "Eastern",
                    desc(win_pct),
                    NA)) |> 
    mutate(conference = factor(conference
    )) |> 
    mutate(conference = fct_relevel(
      conference,c("Western","Eastern")
    )) |> 
    mutate(west_win_pct = (if_else(conference == "Western",
                                   (win_pct),
                                   NA))) |> 
    mutate(east_win_pct = (if_else(conference == "Eastern",
                                   (win_pct),
                                   NA))) 
  
  
  fig <- hchart(sorted_nba_standings,
                "column",
                borderWidth = 0,
                animation = FALSE,
                hcaes(x = team_label,
                      y = west_win_pct,
                      group = conference),
                colorKey = "west_win_pct",
                colorAxis = 1,
                grouping = FALSE,
                dataLabels = list(
                  enabled = TRUE,
                  format = "{point.team_label}",
                  rotation = 90,
                  allowOverlap = TRUE,
                  crop = FALSE,
                  y = 15
                ),
                groupPadding = 0,
                pointPadding = 0,
                tooltip = list(
                  headerFormat = "",
                  pointFormat = "{point.team_display_name}:<br>{point.wins} – {point.losses}, {point.win_pct_text}"
                )) |> 
    hc_add_series(
      sorted_nba_standings,
      "column",
      dataLabels = list(
        enabled = TRUE,
        format = "{point.team_label}",
        rotation = 90,
        allowOverlap = TRUE,
        crop = FALSE,
        y = 15
      ),
      borderWidth = 0,
      animation = FALSE,
      hcaes(x = team_label,
            y = east_win_pct,
            group = conference),
      colorKey = "east_win_pct",
      colorAxis = 0,
      grouping = FALSE,
      groupPadding = 0,
      pointPadding = 0,
      tooltip = list(
        headerFormat = "",
        pointFormat = "{point.team_display_name}:<br>{point.wins} – {point.losses}, {point.win_pct_text}"
      )
    ) |> 
    hc_xAxis(tickLength = 0,
             title = list( enabled = FALSE    ),
             labels = list( enabled = FALSE    ),
             plotLines = list(
               list(
                 color = "#595959",
                 width = 1,
                 zIndex = 2,
                 value = 14.5
               )),
             plotBands = list(
               list(
                 color = hex_to_rgba("gray", 0.4),
                 zIndex = 2,
                 from = 8.5,
                 to = 20.5
               ),
               list(
                 color = hex_to_rgba("gray", 0.2),
                 zIndex = 2,
                 from = 4.5,
                 to = 24.5
               ),
               list(
                 label = list(text = "Western"),
                 color = hex_to_rgba("white", 0),
                 zIndex = 2,
                 from = -0.5,
                 to = 4.5
               ),
               list(
                 label = list(text = "Eastern"),
                 color = hex_to_rgba("white", 0),
                 zIndex = 2,
                 from = 24.5,
                 to = 29.5
               )
             ),
             labels = list(
               allowOverlap = TRUE,
               rotation = 90,
               padding = 0,
               step = 1
             )) |> 
    hc_yAxis(endOnTick = FALSE,
             tickInterval = .25,
             startOnTick = FALSE,
             plotLines = list(
               list(
                 # label = list(text = "0.500"),
                 color = "#595959",
                 width = 1,
                 zIndex = 2,
                 value = .5
               )),
             opposite = FALSE,
             title = list(
               enabled = FALSE    
             ),
             labels = list(
               format = "{value:.3f}"
             )) |> 
    hc_add_theme(
      hc_theme_bloom()
    ) |> 
    hc_legend(enabled = FALSE) |> 
    hc_colorAxis(
      list(
        minColor = "turquoise",
        maxColor = "darkblue"
      ),
      list(
        minColor = "orange",
        maxColor = "darkred"
      )
    )
  
  fig
  saveWidget(widget = fig, file = "interactive/nba_team_rank.html",
             selfcontained = FALSE,
             libdir = "interactive")
  
  # conference standings charts ----
  ## interactive ----
  fig1 <- hchart(eastern, "line", hcaes(x = game_n,
                                        y = net_wins,
                                        group = team),
                 label = list(
                   enabled = TRUE
                 ),
                 animation = FALSE,
                 tooltip = list(
                   headerFormat = "",
                   pointFormat = "{point.team_display_name}:<br>{point.wins} – {point.losses}, {point.win_pct_text}"
                 )  ) %>%
    hc_colors(brewer.pal(12,"Paired")) %>%
    hc_legend(enabled = TRUE,
              align = "right",
              verticalAlign = "middle",
              layout = "vertical") %>%
    hc_title(text = "Eastern") %>%
    hc_yAxis(title = "",
             endOnTick = FALSE,
             startOnTick = FALSE) %>%
    hc_xAxis(title = "",
             max = 82) %>%
    hc_add_theme(
      hc_theme_bloom()
    )
  
  fig1
  
  fig2 <- hchart(western, "line", hcaes(x = game_n,
                                        y = net_wins,
                                        group = team),
                 animation = FALSE,
                 label = list(
                   enabled = TRUE
                 ),
                 tooltip = list(
                   headerFormat = "",
                   pointFormat = "{point.team_display_name}:<br>{point.wins} – {point.losses}, {point.win_pct_text}"
                 ) ) %>%
    hc_colors(brewer.pal(12,"Paired")) %>%
    hc_legend(enabled = TRUE,
              align = "right",
              verticalAlign = "middle",
              layout = "vertical") %>%
    hc_title(text = "Western") %>%
    hc_yAxis(title = "",
             endOnTick = FALSE,
             startOnTick = FALSE) %>%
    hc_xAxis(title = "",
             max = 82) %>%
    hc_add_theme(
      hc_theme_bloom()
    )
  
  fig2
  
  saveWidget(widget = fig1, file = "interactive/eastern_standings.html",
             selfcontained = FALSE,
             libdir = "interactive")
  saveWidget(widget = fig2, file = "interactive/western_standings.html",
             selfcontained = FALSE,
             libdir = "interactive")
  
  # conference standings table ----
  
  western_standings <- west_standings %>%
    mutate(first_place_net_wins = west_standings$net_wins[[1]]) %>%
    mutate(conference_games_behind = (first_place_net_wins - net_wins)/2)
  
  eastern_standings <- east_standings %>%
    mutate(first_place_net_wins = east_standings$net_wins[[1]]) %>%
    mutate(conference_games_behind = (first_place_net_wins - net_wins)/2)
  
  nba_standings <- full_join(western_standings, eastern_standings) |> 
    full_join(table) |> 
    select(logo_url, team_label, wins, losses, net_wins, win_pct, 
           win_pct_text, games_remaining, outcomes, conference, post, 
           finals,
           conference_games_behind) 
  nba_standings |> 
    select(team_label,wins,losses,win_pct_text,
           conference_games_behind,post, finals)
  
  nba_standings_table <- nba_standings %>%
    select(logo_url, team_label, wins, losses,
           win_pct,win_pct_text, conference_games_behind, post,finals,
           outcomes, conference) %>%
    group_by(conference) %>%
    arrange(conference,desc(win_pct)) %>%
    gt() %>%
    gt_theme_espn() %>%
    row_group_order(
      groups = c("Western", "Eastern")
    ) %>%
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
    cols_hide(columns = c(win_pct)) %>%
    fmt_percent(
      columns = c(post,finals),
      decimals = 1,
      scale_values = FALSE
    ) |> 
    data_color(
      columns = c(post,finals),
      domain = c(0.1,100),
      na_color = "#FFFFFF",
      palette = "Reds"
    ) |> 
    cols_align(
      align = c("right"),
      columns = c(win_pct_text, logo_url, outcomes)
    ) %>%
    cols_label(
      logo_url = "",
      team_label = "Team",
      wins = "W",
      losses = "L",
      win_pct_text = "Pct",
      conference_games_behind = "GB",
      post = "Playoffs",
      finals = "Win Finals",
      outcomes = html("Last 10 Games")
    ) %>%
    # opt_table_font(font = c("verdana","calibri","menlo","consolas","monospace","helvetica", "arial", "sans-serif")) %>%
    tab_options(
      table.width = pct(100),
      data_row.padding = px(4),
      table.font.size = px(12)
    )  %>%
    opt_all_caps(all_caps = TRUE)
  nba_standings_table
  nba_standings_table_html <- as_raw_html(nba_standings_table, inline_css = TRUE)
  # better_nba_standings_divs <- gsub("[#][a-z]{10}",
  #                                   "#nba_standings_table", 
  #                                   x = nba_standings_table_html)
  # better_wild_card_standings_table_html <- gsub("[\"][a-z]{10}",
  #                                               "\"nba_standings_table",
  #                                               x = better_nba_standings_divs)
  
  # make web page ----
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
title: Basketball Standings
permalink: /projects/basketball
imageurl: https://bzigterman.com/plots/nba_standings.png
---

",now_html," 

<div class = \"standings\">
<iframe src=\"/interactive/western_standings.html\" width=\"100%\" height=\"400\"> 
</iframe>

<iframe src=\"/interactive/eastern_standings.html\" width=\"100%\" height=\"400\"> 
</iframe>
</div>

",nba_standings_table_html," 

<iframe src=\"/interactive/nba_team_rank.html\" width=\"100%\" height=\"400\"> 
</iframe>

Chart inspired by those in the [Pennant app](http://www.pennantapp.com).

Updated standings are posted daily on Mastodon <a rel=\"me\" href=\"https://mastodon.social/@basketballstandings\">@basketballstandings</a>

<p class=\"updated_time\">Source: <a href=\"https://www.basketball-reference.com\">Basketball Reference</a>.</p> 

",
sep = ""
  )
  
  write_lines(web_text,"projects/basketball.md")
}
