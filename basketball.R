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

# get data ----
fivethirtyeight_data_url <- "https://projects.fivethirtyeight.com/nba-model/nba_elo_latest.csv"
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
    drop_na(result) %>%
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
    #mutate(team = abbreviation) %>%
    mutate(team = case_when(
      abbreviation == "CHO" ~ "CHA",
      abbreviation == "BRK" ~ "BKN",
      abbreviation == "PHO" ~ "PHX",
      TRUE ~ abbreviation
    )
    ) %>%
    mutate(games_played = cumsum(game_counter)) %>%
    mutate(games_remaining = 82-games_played) %>%
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
        tail(na.omit(win),20)
      )
    )
}

# eastern conference ----
team1 <- get_team_records("CHI") %>%
  mutate(logo_url = "https://cdn.nba.com/logos/nba/1610612741/primary/L/logo.svg")
team2 <- get_team_records("CHO") %>%
  mutate(logo_url = "https://cdn.nba.com/logos/nba/1610612766/primary/L/logo.svg")
team3 <- get_team_records("NYK") %>%
  mutate(logo_url = "https://cdn.nba.com/logos/nba/1610612752/primary/L/logo.svg")
team4 <- get_team_records("MIA") %>%
  mutate(logo_url = "https://cdn.nba.com/logos/nba/1610612748/primary/L/logo.svg")
team5 <- get_team_records("WAS") %>%
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
team12 <- get_team_records("BRK") %>%
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
  mutate(division_place = row_number()) 

# western conference ----
team1 <- get_team_records("GSW") %>%
  mutate(logo_url = "https://cdn.nba.com/logos/nba/1610612744/primary/L/logo.svg")
team2 <- get_team_records("UTA") %>%
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
team12 <- get_team_records("PHO") %>%
  mutate(logo_url = "https://cdn.nba.com/logos/nba/1610612756/primary/L/logo.svg")
team13 <- get_team_records("SAS") %>%
  mutate(logo_url = "https://cdn.nba.com/logos/nba/1610612759/primary/L/logo.svg")
team14 <- get_team_records("NOP") %>%
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
  mutate(division_place = row_number()) 

nba_standings <- full_join(east_standings, west_standings)

# standings check ----
old_standings <- read_csv("data/nba_standings.csv",
                          col_types = cols(
                            conference = col_character(),
                            team_label = col_character(),
                            wins = col_number(),
                            losses = col_number(),
                            win_pct_text = col_character()
                            ),
                          trim_ws = FALSE
)
#old_standings <- as_tibble(2)
standings_check <- nba_standings %>%
  filter(!is.na(team_label)) %>%
  group_by(conference) %>%
  arrange(conference,desc(win_pct)) %>%
  select(conference, team_label, wins, losses, win_pct_text)
standings_the_same <- all_equal(standings_check, old_standings)
if (standings_the_same != TRUE) { 
  write_csv(standings_check,"data/nba_standings.csv")
}



# pennant race chart ----
nba_min <-  .9*min(nba_standings$win_pct)
nba_max <- 1.05*max(nba_standings$win_pct)
eastern_standings <- nba_standings %>%
  filter(conference == "Eastern") %>%
  arrange(desc(win_pct)) %>%
  select(team_label, win_pct, win_pct_text)
western_standings <- nba_standings %>%
  filter(conference == "Western") %>%
  arrange(desc(win_pct)) %>%
  select(team_label, win_pct, win_pct_text)
eastern_playoffs_rect <- (if_else(
  slice(eastern_standings, n = 5)[2] == slice(eastern_standings, n = 6)[2],
  9.5,
  10.5))[1]
western_playoffs_rect <- (if_else(
  slice(western_standings, n = 5)[2] == slice(western_standings, n = 6)[2],
  6.5,
  5.5))[1]

western_plot <- ggplot(western_standings, aes(x = reorder(team_label, win_pct), 
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
  coord_cartesian(ylim = c(nba_min,nba_max)) +
  geom_text(aes(label = team_label),
            family = "mono",
            color = "white",
            angle = 270,
            size = 3.9,
            nudge_y = -.049) +
  # geom_text(aes(label = division_leaders),
  #           family = "mono",
  #           nudge_y = .011) +
  theme_minimal() +
  labs(x = NULL,
       y = NULL,
       title = "Western") +
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
western_plot


eastern_plot <- ggplot(eastern_standings, aes(x = reorder(team_label, -win_pct), 
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
  coord_cartesian(ylim = c(nba_min,nba_max)) +
  geom_text(aes(label = team_label),
            family = "mono",
            color = "white",
            angle = 270,
            size = 3.9,
            nudge_y = -.049) +
  # geom_text(aes(label = division_leaders),
  #           family = "mono",
  #           nudge_y = .011) +
  scale_y_continuous(labels = label_comma(accuracy = .001)) +
  theme_minimal() +
  labs(x = NULL,
       y = NULL,
       title = "Eastern") +
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
eastern_plot
plot_grid(western_plot,eastern_plot,
          align = "h") 

ggsave("plots/nba_team_rank.png",
       width = 8, height = 8*(628/1200),
       dpi = 320)


# conference standings charts ----
conference_standings_plot <- function(conference) {
  ggplot(conference, aes(x = game_n,
                     y = net_wins,
                     color= team,
                     label = team_label)) +
    #coord_fixed(xlim = c(0,162)) +
    geom_hline(yintercept = 0,
               color = "grey10",
               size = .2) +
    geom_vline(xintercept = 82,
               color = "grey50",
               size = .2) +
    geom_line() +
    geom_text(aes(x = game_n + 10),
              family = "mono",
              size = 4) +
    scale_x_continuous(breaks = c(0,41, 82)) +
    scale_y_continuous(position = "right") +
    # scale_color_brewer(palette = "Set1",
    #                    guide = NULL) +
    scale_color_discrete(guide = NULL) +
    # scale_color_manual(values = c("#27251F","#E31937","#0C2340","#BD9B60","#002B5C"),
    #                  guide = NULL) +
    coord_cartesian(xlim = c(0,87)) +
    theme_minimal() +
    labs(title = conference$conference,
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
eastern_plot <- conference_standings_plot(eastern)
western_plot <- conference_standings_plot(western)

plot_grid(western_plot, eastern_plot,
          align = "hv")

ggsave("plots/nba_standings.png",
       width = 8, height = 4, dpi = 320)


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
permalink: /projects/basketball/
---

",now_html," 

![Team Rank]({{ site.baseurl }}/plots/nba_team_rank.png)

![Standings]({{ site.baseurl }}/plots/nba_standings.png)

<p class=\"updated_time\">Source: <a href=\"https://github.com/fivethirtyeight/data/tree/master/nba-forecasts\">FiveThirtyEight</a>. <a href=\"https://github.com/fivethirtyeight/data/blob/master/LICENSE\">CC-BY-4.0 License</a>.</p> 

",
sep = ""
)
if (standings_the_same != TRUE) {
  write_lines(web_text,"projects/basketball.md")
}
