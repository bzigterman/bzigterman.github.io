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
library(rtoot)
library(hoopR)

# mastodon api setup ----
token <- Sys.getenv("RTOOT_DEFAULT_TOKEN")
verify_envvar(verbose = TRUE)

# get data ----
get_team_records <- function(abbreviation) {
  records <- load_nba_team_box(seasons = most_recent_nba_season()) |> 
    filter(season_type == 2) |> 
    select(game_id,game_date,team_abbreviation,team_logo,team_winner,
           opponent_team_abbreviation) |> 
    arrange(game_date) |> 
    filter(team_abbreviation == abbreviation) |> 
    mutate(game_n = row_number()) |> 
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
      abbreviation == "BKN" ~ "BKN",
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

latest_game <- as_date(max(nba_standings$game_date))
game_yesterday <- if_else(
  latest_game >= today(tzone = "UTC")- days(1),
  TRUE,
  FALSE)

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

# pennant race chart ----
nba_min <-  0
nba_max <- 1.05*max(nba_standings$win_pct)
nudge <- -.0861118*(nba_max-nba_min)

eastern_standings <- nba_standings %>%
  filter(conference == "Eastern") %>%
  arrange(desc(win_pct)) %>%
  select(team_label, win_pct, win_pct_text)

western_standings <- nba_standings %>%
  filter(conference == "Western") %>%
  arrange(desc(win_pct)) %>%
  select(team_label, win_pct, win_pct_text)

western_plot <- ggplot(western_standings, aes(x = reorder(team_label, win_pct), 
                                              y = win_pct)) +
  geom_rect(xmin = 9.5, xmax = Inf,
            ymin = 0, ymax = Inf,
            fill = "grey85") +
  geom_rect(xmin = 5.5, xmax = 9.5,
            ymin = 0, ymax = Inf,
            fill = "grey95") +
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
            nudge_y = nudge) +
  theme_minimal() +
  labs(x = NULL,
       y = NULL,
       title = "Western") +
  theme(
    legend.title = element_blank(),
    panel.grid.major.y = element_line(colour = "grey93"),
    plot.title = element_text(hjust = 1),
    plot.background = element_rect(fill = "white", color = "white"),
    plot.margin = margin(t = 5,
                         r = 5,
                         b = 0
    ),
    panel.grid = element_blank(),
    axis.text = element_blank(),
    legend.position = "bottom",
    legend.key.size = unit(.1,"in"),
    legend.box.spacing = unit(0,"in")
  )
western_plot

eastern_plot <- ggplot(eastern_standings, aes(x = reorder(team_label, -win_pct), 
                                              y = win_pct)) +
  geom_rect(xmin = -Inf, xmax = 6.5,
            ymin = 0, ymax = Inf,
            fill = "grey85") +
  geom_rect(xmin = 6.5, xmax = 10.5,
            ymin = 0, ymax = Inf,
            fill = "grey95") +
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
            nudge_y = nudge) +
  scale_y_continuous(labels = label_comma(accuracy = .001)) +
  theme_minimal() +
  labs(x = NULL,
       y = NULL,
       title = "Eastern") +
  theme(    
    legend.title = element_blank(),
    plot.background = element_rect(fill = "white", color = "white"),
    plot.margin = margin(t = 0,
                         b = 0,
                         l = 0),
    panel.grid = element_blank(),
    panel.grid.major.y = element_line(colour = "grey93"),
    axis.text.x = element_blank(),
    legend.position = "bottom",
    legend.key.size = unit(.1,"in"),
    legend.box.spacing = unit(0,"in")
  )
eastern_plot
p <- plot_grid(western_plot,eastern_plot,
          align = "h",
          rel_widths = c(6,7)) 
p

file <- tempfile( fileext = ".png")
ggsave( file, plot = p, device = "png", 
        width = 4, height = 2.25,
        dpi = 320)



# conference standings table ----

western_standings <- west_standings %>%
  mutate(first_place_net_wins = west_standings$net_wins[[1]]) %>%
  mutate(conference_games_behind = (first_place_net_wins - net_wins)/2)

eastern_standings <- east_standings %>%
  mutate(first_place_net_wins = east_standings$net_wins[[1]]) %>%
  mutate(conference_games_behind = (first_place_net_wins - net_wins)/2)

nba_standings <- full_join(western_standings, eastern_standings) %>%
  #full_join(division_standings) %>%
  select(logo_url, team_label, wins, losses, net_wins, win_pct, 
         win_pct_text, games_remaining, outcomes, conference, outcomes, 
         conference_games_behind)

# make web page ----
now <- as_datetime(now())
now_formatted <- strftime(x = now, 
                          tz = "US/Central",
                          format = "%I:%M% %p CT, %B %d")

west_leaders <- western_standings %>%
  select(team,wins, losses, conference_games_behind,division_place) %>%
  mutate(text = if_else(
    division_place == 1,
    paste0(team,": ",wins,"–",losses,", ",
           conference_games_behind, " GB\n"),
    paste0(team,": ",wins,"–",losses,", ",
           conference_games_behind, "\n"))) |> 
  select(text) %>%
  slice_head(n = 11)

west_top_five <- paste( west_leaders$text, collapse = "")
west_top_five
east_leaders <- eastern_standings %>%
  select(team,wins, losses, conference_games_behind,division_place) %>%
  mutate(text = if_else(
    division_place == 1,
    paste0(team,": ",wins,"–",losses,", ",
           conference_games_behind, " GB\n"),
    paste0(team,": ",wins,"–",losses,", ",
           conference_games_behind, "\n"))) |> 
  select(text) %>%
  slice_head(n = 11)

east_top_five <- paste(east_leaders$text, collapse = "")

text <- paste0(
  "Western:\n",west_top_five,
  "\nEastern:\n",
  east_top_five,
  "\nMore charts: https://bzigterman.com/projects/basketball")
text


if (game_yesterday) {
post_toot(status = text,
          media = file,
          alt_text = "A chart showing the current NBA standings")
}

