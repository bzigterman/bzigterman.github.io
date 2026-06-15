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
library(jsonlite)


# 1. Date and Season logic
now <- as_datetime(now())
today_chi <- today(tzone = "America/Chicago")
year_long <- year(today_chi)
current_season <- most_recent_nba_season()

csv_path <- "data/nba_standings.csv"

# 2. Fetch live data from the hoopR ESPN Standings API
live_data_raw <- espn_nba_standings(year = current_season)

if (is.null(live_data_raw) || nrow(live_data_raw) == 0) {
  message("No live NBA standings returned. Exiting early.")
  quit(status = 0)
}

# 3. Clean and sort the data IMMEDIATELY so we compare apples to apples
standings_cleaned <- live_data_raw |>
  select(team, wins, losses, winpercent) |> # Use select() instead of mutate() to drop extra columns
  arrange(team)

# 4. Check if we already have this exact cleaned data saved
if (file.exists(csv_path)) {
  old_data <- read_csv(csv_path, show_col_types = FALSE) |>
    select(team, wins, losses, winpercent) |>
    arrange(team) |>
    # Explicitly force types to match whatever the API outputs (doubles)
    mutate(
      wins = as.numeric(wins),
      losses = as.numeric(losses),
      winpercent = as.numeric(winpercent)
    )

  # Align the types of your live data as well
  standings_to_compare <- standings_cleaned |>
    mutate(
      wins = as.numeric(wins),
      losses = as.numeric(losses),
      winpercent = as.numeric(winpercent)
    )

  # Check if there are ANY row differences between the core stats
  # data.frame inequality check is more robust across environments than identical()
  if (
    isTRUE(all.equal(standings_to_compare, old_data, check.attributes = FALSE))
  ) {
    message("Live data stats are identical to cached data. Exiting early.")
    quit(status = 0)
  }
}

# 5. Data is confirmed NEW. Now add the timestamp and overwrite the CSV
standings_final <- standings_cleaned |>
  mutate(updated_time = now)

write_csv(standings_final, csv_path)
message("New data detected and cached.")
now_formatted <-
  strftime(
    x = standings_final$updated_time[1],
    tz = "US/Central",
    format = "%I:%M% %p CT, %B %d"
  )

# 1. Cleaned Conference Lookup (Exactly 30 Teams) ----
nba_conference_lookup <- tibble(
  team_name = c(
    # Eastern Conference (15 teams)
    "Celtics",
    "Nets",
    "Knicks",
    "76ers",
    "Raptors",
    "Bulls",
    "Cavaliers",
    "Pistons",
    "Pacers",
    "Bucks",
    "Hawks",
    "Hornets",
    "Heat",
    "Magic",
    "Wizards",

    # Western Conference (15 teams)
    "Nuggets",
    "Timberwolves",
    "Thunder",
    "Trail Blazers",
    "Jazz",
    "Warriors",
    "Clippers",
    "Lakers",
    "Suns",
    "Kings",
    "Mavericks",
    "Rockets",
    "Grizzlies",
    "Pelicans",
    "Spurs"
  ),
  conference = c(
    rep("Eastern", 15),
    rep("Western", 15)
  )
)
team_info <- espn_nba_teams() |>
  select(
    team_id,
    team_abbreviation = abbreviation,
    team_short_name = short_name,
    team_name = short_name
  ) |>
  full_join(nba_conference_lookup)


# 2. Fetch Live Raw Standings from ESPN ----
raw_standings <- espn_nba_standings(year = current_season)

# 3. Clean and Join ----
nba_team_stats <- raw_standings %>%
  select(
    team_id,
    #team_name = team_name,
    #team_abbreviation = team_abbreviation,
    wins,
    losses,
    pointsfor,
    pointsagainst,
    playoffseed
  ) %>%
  mutate(
    points_for = as.integer(pointsfor),
    points_against = as.integer(pointsagainst),
    games_played = wins + losses,
    pyth_wpct = (points_for^14) / (points_for^14 + points_against^14)
  ) %>%
  # Merges perfectly on the text strings now
  left_join(team_info, by = "team_id")

# 3. Fetch Schedule and Filter Remaining Games ----
full_schedule <- load_nba_schedule(season = current_season)
full_schedule_filtered <- full_schedule |>
  filter(season_type == 2) %>% # 2 = Regular Season
  select(
    game_id,
    date,
    home_id,
    away_id,
    home_winner,
    status_type_name
  )

unplayed_games <- full_schedule_filtered %>%
  filter(status_type_name != "STATUS_FINAL")

# 4. Log5 Probability Function ----
calc_log5 <- function(wpct_a, wpct_b) {
  num <- wpct_a * (1 - wpct_b)
  den <- (wpct_a * (1 - wpct_b)) + (wpct_b * (1 - wpct_a))
  return(num / den)
}

# Helper: Simulate a playoff series
sim_series <- function(team_a, team_b, length) {
  prob_a <- calc_log5(team_a$pyth_wpct, team_b$pyth_wpct)
  needed_wins <- ceiling(length / 2)
  a_wins <- 0
  b_wins <- 0
  while (a_wins < needed_wins && b_wins < needed_wins) {
    if (runif(1) < prob_a) a_wins <- a_wins + 1 else b_wins <- b_wins + 1
  }
  if (a_wins == needed_wins) return(team_a) else return(team_b)
}

# 5. Simulation Loop ----
set.seed(42)
n_sims <- 1000

# Trackers
nba_champs <- character(n_sims)
playoff_tracker <- matrix(
  0,
  nrow = nrow(nba_team_stats),
  ncol = n_sims,
  dimnames = list(nba_team_stats$team_name, NULL)
)

message("Simulating NBA Season...")

for (sim in 1:n_sims) {
  # Copy regular season stats
  sim_teams <- nba_team_stats %>%
    select(team_id, team_name, conference, wins, losses, pyth_wpct, playoffseed)

  # --- SIMULATE REMAINING REGULAR SEASON ---
  if (nrow(unplayed_games) > 0) {
    sim_schedule <- unplayed_games %>%
      left_join(
        sim_teams %>% select(team_id, wpct_home = pyth_wpct),
        by = c("home_id" = "team_id")
      ) %>%
      left_join(
        sim_teams %>% select(team_id, wpct_away = pyth_wpct),
        by = c("away_id" = "team_id")
      ) %>%
      mutate(
        home_win_prob = calc_log5(wpct_home, wpct_away),
        home_win = runif(n()) < home_win_prob
      )

    home_wins <- sim_schedule %>%
      group_by(team_id = home_id) %>%
      summarize(sw = sum(home_win), sl = sum(!home_win))
    away_wins <- sim_schedule %>%
      group_by(team_id = away_id) %>%
      summarize(sw = sum(!home_win), sl = sum(home_win))

    total_sim_results <- bind_rows(home_wins, away_wins) %>%
      group_by(team_id) %>%
      summarize(sw = sum(sw), sl = sum(sl))

    sim_teams <- sim_teams %>%
      left_join(total_sim_results, by = "team_id") %>%
      mutate(
        wins = wins + coalesce(sw, 0L),
        losses = losses + coalesce(sl, 0L)
      ) %>%
      select(-sw, -sl)
  }

  # --- THE POSTSEASON ENGINE ---
  conf_champs <- list()

  for (conf in c("Eastern", "Western")) {
    conf_teams <- sim_teams %>%
      filter(conference == conf) %>%
      # 1. Sort by simulated wins to handle unplayed games
      arrange(desc(wins)) %>%
      mutate(simmed_rank = row_number()) %>%
      # 2. If ESPN has assigned an official seed, lock it in. Otherwise, use the simmed rank.
      mutate(final_bracket_seed = coalesce(playoffseed, simmed_rank)) %>%
      arrange(final_bracket_seed)

    # Extract structural seeds cleanly based on the bulletproof final_bracket_seed
    t1 <- conf_teams %>% filter(final_bracket_seed == 1)
    t2 <- conf_teams %>% filter(final_bracket_seed == 2)
    t3 <- conf_teams %>% filter(final_bracket_seed == 3)
    t4 <- conf_teams %>% filter(final_bracket_seed == 4)
    t5 <- conf_teams %>% filter(final_bracket_seed == 5)
    t6 <- conf_teams %>% filter(final_bracket_seed == 6)
    t7 <- conf_teams %>% filter(final_bracket_seed == 7)
    t8 <- conf_teams %>% filter(final_bracket_seed == 8)
    t9 <- conf_teams %>% filter(final_bracket_seed == 9)
    t10 <- conf_teams %>% filter(final_bracket_seed == 10)

    # --- SIMULATE PLAY-IN TOURNAMENT ---
    # Game 1: 7 vs 8 (Winner gets 7th seed)
    g1_winner <- sim_series(t7, t8, 1)
    g1_loser <- if (g1_winner$team_id == t7$team_id) t8 else t7

    # Game 2: 9 vs 10 (Loser eliminated)
    g2_winner <- sim_series(t9, t10, 1)

    # Game 3: Loser G1 vs Winner G2 (Winner gets 8th seed)
    g3_winner <- sim_series(g1_loser, g2_winner, 1)

    # Finalize the 8 true playoff teams
    playoff_teams <- bind_rows(t1, t2, t3, t4, t5, t6, g1_winner, g3_winner)
    playoff_tracker[playoff_teams$team_name, sim] <- 1

    # --- TRADITIONAL 7-GAME SERIES BRACKET ---
    # First Round
    r1_w1 <- sim_series(t1, g3_winner, 7) # 1 vs 8
    r1_w2 <- sim_series(t4, t5, 7) # 4 vs 5
    r1_w3 <- sim_series(t2, g1_winner, 7) # 2 vs 7
    r1_w4 <- sim_series(t3, t6, 7) # 3 vs 6

    # Conference Semifinals
    semis_w1 <- sim_series(r1_w1, r1_w2, 7)
    semis_w2 <- sim_series(r1_w3, r1_w4, 7)

    # Conference Finals
    conf_champs[[conf]] <- sim_series(semis_w1, semis_w2, 7)
  }

  # --- NBA FINALS ---
  nba_finals_winner <- sim_series(
    conf_champs[["Eastern"]],
    conf_champs[["Western"]],
    7
  )
  nba_champs[sim] <- nba_finals_winner$team_name
}

# 6. Build the Final Forecast Table ----
playoff_probs <- rowSums(playoff_tracker) / n_sims * 100
champ_counts <- table(nba_champs)
champ_probs <- setNames(rep(0, nrow(nba_team_stats)), nba_team_stats$team_name)
champ_probs[names(champ_counts)] <- (as.numeric(champ_counts) / n_sims) * 100

forecast_table <- nba_team_stats %>%
  select(
    Team = team_name,
    Ticker = team_abbreviation,
    Conf = conference,
    Wins = wins,
    Losses = losses
  ) %>%
  mutate(
    Playoff_Odds_Pct = round(playoff_probs[Team], 1),
    Championship_Odds_Pct = round(champ_probs[Team], 1)
  ) %>%
  arrange(desc(Playoff_Odds_Pct), desc(Championship_Odds_Pct))

print(forecast_table, n = 30)
table <- forecast_table |>
  select(
    team_label = Team,
    lg = Conf,
    post = Playoff_Odds_Pct,
    finals = Championship_Odds_Pct
  )

# nba standings gt table with team, wins, losses, win pct, games behind, last ten, playoff odds and championship odds ----
nba_standings <- raw_standings %>%
  # Merges perfectly on the text strings now
  left_join(team_info, by = "team_id") |>
  select(
    team_id,
    team_name,
    conference,
    team_abbreviation,
    wins,
    losses,
    lasttengames,
    win_pct = winpercent,
    conference_games_behind = gamesbehind
  ) |>
  left_join(table, by = c("team_name" = "team_label")) |>
  mutate(
    win_pct_text = as.character(if_else(
      win_pct == 1,
      paste("1.000"),
      paste0(".", round(win_pct * 1000))
    ))
  ) |>
  mutate(team_label = team_name) |>
  mutate(team_display_name = team_label)

nba_standings_table <- nba_standings %>%
  select(
    team_label,
    wins,
    losses,
    win_pct,
    win_pct_text,
    conference_games_behind,
    lasttengames,
    post,
    finals,
    conference
  ) %>%
  #group_by(conference) %>%
  arrange(desc(win_pct)) %>%
  gt() %>%
  gt_theme_espn() %>%
  #row_group_order(
  #  groups = c("Western", "Eastern")
  #) %>%
  cols_hide(columns = c(win_pct, conference)) %>%
  fmt_percent(
    columns = c(post, finals),
    decimals = 0,
    scale_values = FALSE
  ) |>
  data_color(
    columns = c(post, finals),
    domain = c(2.1, 100),
    na_color = "#FFFFFF",
    palette = "Reds"
  ) |>
  cols_align(
    align = c("right"),
    columns = c(win_pct_text, )
  ) %>%
  cols_label(
    team_label = "Team",
    wins = "W",
    losses = "L",
    win_pct_text = "Pct",
    conference_games_behind = "GB",
    lasttengames = "Last 10",
    post = "Win Conf",
    finals = "Win Finals"
  ) %>%
  # opt_table_font(font = c("verdana","calibri","menlo","consolas","monospace","helvetica", "arial", "sans-serif")) %>%
  tab_options(
    table.width = pct(100),
    data_row.padding = px(4),
    table.font.size = px(12)
  ) %>%
  opt_all_caps(all_caps = TRUE)
nba_standings_table
nba_standings_table_html <- as_raw_html(
  nba_standings_table,
  inline_css = TRUE
)

# interactive charts ----
sorted_nba_standings <- nba_standings |>
  select(
    team_label,
    wins,
    losses,
    win_pct,
    win_pct_text,
    conference,
    team_display_name
  ) |>
  arrange(if_else(conference == "Western", (win_pct), NA)) |>
  arrange(if_else(conference == "Eastern", desc(win_pct), NA)) |>
  mutate(conference = factor(conference)) |>
  mutate(
    conference = fct_relevel(
      conference,
      c("Western", "Eastern")
    )
  ) |>
  mutate(west_win_pct = (if_else(conference == "Western", (win_pct), NA))) |>
  mutate(east_win_pct = (if_else(conference == "Eastern", (win_pct), NA)))

fig <- hchart(
  sorted_nba_standings,
  "column",
  borderWidth = 0,
  animation = FALSE,
  hcaes(x = team_label, y = west_win_pct, group = conference),
  colorKey = "west_win_pct",
  colorAxis = 1,
  grouping = FALSE,
  dataLabels = list(
    enabled = TRUE,
    format = "{point.team_label}",
    rotation = 90,
    y = 5,
    align = "left",
    allowOverlap = TRUE,
    crop = FALSE
  ),
  groupPadding = 0,
  pointPadding = 0,
  tooltip = list(
    headerFormat = "",
    pointFormat = "{point.team_display_name}:<br>{point.wins} – {point.losses}, {point.win_pct_text}"
  )
) |>
  hc_add_series(
    sorted_nba_standings,
    "column",
    dataLabels = list(
      enabled = TRUE,
      format = "{point.team_label}",
      rotation = 90,
      y = 5,
      align = "left",
      allowOverlap = TRUE,
      crop = FALSE
    ),
    borderWidth = 0,
    animation = FALSE,
    hcaes(x = team_label, y = east_win_pct, group = conference),
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
  hc_xAxis(
    tickLength = 0,
    title = list(enabled = FALSE),
    labels = list(enabled = FALSE),
    plotLines = list(
      list(
        color = "#595959",
        width = 1,
        zIndex = 2,
        value = 14.5
      )
    ),
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
    )
  ) |>
  hc_yAxis(
    endOnTick = FALSE,
    tickInterval = .25,
    startOnTick = FALSE,
    plotLines = list(
      list(
        # label = list(text = "0.500"),
        color = "#595959",
        width = 1,
        zIndex = 2,
        value = .5
      )
    ),
    opposite = FALSE,
    title = list(
      enabled = FALSE
    ),
    labels = list(
      format = "{value:.3f}"
    )
  ) |>
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
saveWidget(
  widget = fig,
  file = "interactive/nba_team_rank.html",
  selfcontained = FALSE,
  libdir = "interactive"
)

# conference net wins charts ----
games <- load_nba_team_box(seasons = current_season) |>
  filter(
    season_type == 2
  ) |>
  select(
    game_id,
    game_date,
    team_name,
    team_winner,
    opponent_team_name
  ) |>
  mutate(team = team_name) |>
  # Crucial step: group by team and sort chronologically
  arrange(team, game_date) |>
  group_by(team) |>
  mutate(game_n = row_number()) |>
  filter(game_n <= 82) |>
  # Compute running records seamlessly across groups
  mutate(
    win = if_else(team_winner == TRUE, 1, 0),
    loss = if_else(team_winner == FALSE, 1, 0),
    wins = cumsum(win),
    losses = cumsum(loss),
    net_wins = wins - losses,
    win_pct = wins / game_n,
    win_pct_text = if_else(
      win_pct == 1,
      "1.000",
      paste0(".", round(win_pct * 1000))
    )
  ) |>
  ungroup() |>
  full_join(team_info, by = c("team" = "team_name")) |>
  mutate(team_display_name = team_name)

eastern <- games |>
  filter(conference == "Eastern")
western <- games |>
  filter(conference == "Western")

fig1 <- hchart(
  eastern,
  "line",
  hcaes(x = game_n, y = net_wins, group = team),
  label = list(
    enabled = TRUE
  ),
  animation = FALSE,
  tooltip = list(
    headerFormat = "",
    pointFormat = "{point.team_display_name}:<br>{point.wins} – {point.losses}, {point.win_pct_text}"
  )
) %>%
  hc_colors(brewer.pal(12, "Paired")) %>%
  hc_legend(
    enabled = TRUE,
    align = "right",
    verticalAlign = "middle",
    layout = "vertical"
  ) %>%
  hc_title(text = "Eastern") %>%
  hc_yAxis(
    title = "",
    endOnTick = FALSE,
    startOnTick = FALSE,
    gridLineColor = "#B2BEB5"
  ) %>%
  hc_xAxis(title = "", max = 82) %>%
  hc_chart(backgroundColor = "#899499") |>
  hc_add_theme(
    hc_theme_bloom()
  )

fig1

fig2 <- hchart(
  western,
  "line",
  hcaes(x = game_n, y = net_wins, group = team),
  animation = FALSE,
  label = list(
    enabled = TRUE
  ),
  tooltip = list(
    headerFormat = "",
    pointFormat = "{point.team_display_name}:<br>{point.wins} – {point.losses}, {point.win_pct_text}"
  )
) %>%
  hc_colors(brewer.pal(12, "Paired")) %>%
  hc_legend(
    enabled = TRUE,
    align = "right",
    verticalAlign = "middle",
    layout = "vertical"
  ) %>%
  hc_title(text = "Western") %>%
  hc_yAxis(
    title = "",
    endOnTick = FALSE,
    startOnTick = FALSE,
    gridLineColor = "#B2BEB5"
  ) %>%
  hc_xAxis(title = "", max = 82) %>%
  hc_chart(backgroundColor = "#899499") |>
  hc_add_theme(
    hc_theme_bloom()
  )

fig2

saveWidget(
  widget = fig1,
  file = "interactive/eastern_standings.html",
  selfcontained = FALSE,
  libdir = "interactive"
)
saveWidget(
  widget = fig2,
  file = "interactive/western_standings.html",
  selfcontained = FALSE,
  libdir = "interactive"
)

# playoffs bracket ----

## postseason check ----
postseason_games <-
  load_nba_team_box(seasons = current_season) |>
  filter(season_type == 5)

postseason_games_rows = nrow(postseason_games)

postseason_check <- if_else(
  postseason_games_rows > 0,
  TRUE,
  FALSE
)

# Define the URL
url <- paste0("https://en.wikipedia.org/wiki/", current_season, "_NBA_playoffs")

if (postseason_check) {
  # Read the HTML content
  page <- read_html(url)

  bracket_h2 <- html_node(
    page,
    xpath = "//h2[normalize-space(text())='Bracket']"
  )

  # Extract all tables from the page
  tables <- bracket_h2 |>
    html_node(xpath = "following::table[1]") |>
    html_table(fill = TRUE, header = TRUE, na.strings = "")

  # Identify the bracket table
  # Assuming the bracket is the first table; adjust the index if necessary
  rows_to_keep <- c(1, 4, 5, 8, 9, 12, 13, 16, 17, 20, 21, 24, 25, 28, 29, 31)
  bracket_table <- tables |>
    #html_table(fill = TRUE, header = TRUE, na.strings = "") |>
    janitor::clean_names() |>
    select(
      !c(
        x,
        x_2,
        x_3,
        x_4,
        x_5,
        x_6,
        x_7,
        x_8,
        first_round,
        conference_semifinals,
        conference_finals,
        nba_finals
      )
    ) |>
    filter(first_round_2 != "Eastern Conference") |>
    filter(first_round_2 != "Western Conference") |>
    slice(rows_to_keep) |>
    mutate(across(everything(), ~ str_remove(., "\\*$"))) |>
    rename(first_round = first_round_2) |>
    rename(first_round_wins = first_round_3) |>
    rename(conference_semifinals = conference_semifinals_2) |>
    rename(conference_semifinals_wins = conference_semifinals_3) |>
    rename(conference_finals = conference_finals_2) |>
    rename(conference_finals_wins = conference_finals_3) |>
    rename(nba_finals = nba_finals_2) |>
    rename(nba_finals_wins = nba_finals_3) |>
    mutate(across(everything(), as.character)) |>
    mutate(across(where(is.character), ~ replace_na(., "")))

  # View the bracket table

  gt_tbl <- bracket_table |>
    gt() %>%
    gt_theme_espn() %>%
    cols_label(
      first_round = "First Round",
      first_round_wins = "",
      conference_semifinals = "Conf. Semifinals",
      conference_semifinals_wins = "",
      conference_finals = "Conf. Finals",
      conference_finals_wins = "",
      nba_finals = "NBA Finals",
      nba_finals_wins = ""
    ) |>
    opt_row_striping(FALSE) |>
    opt_table_lines("none") |>
    tab_style(
      style = cell_fill(color = "gray90"),
      locations = cells_body(
        columns = c(first_round, first_round_wins),
        rows = all()
      )
    ) |>
    tab_style(
      style = cell_fill(color = "gray90"),
      locations = cells_body(
        columns = c(conference_semifinals, conference_semifinals_wins),
        rows = c(2, 3, 6, 7, 10, 11, 14, 15)
      )
    ) |>
    tab_style(
      style = cell_fill(color = "gray90"),
      locations = cells_body(
        columns = c(conference_finals, conference_finals_wins),
        rows = c(4, 5, 12, 13)
      )
    ) |>
    tab_style(
      style = cell_fill(color = "gray90"),
      locations = cells_body(
        columns = c(nba_finals, nba_finals_wins),
        rows = c(8, 9)
      )
    ) |>
    tab_style(
      style = cell_borders(
        sides = "bottom",
        color = "black",
        weight = px(1)
      ),
      locations = cells_body(
        columns = c(first_round, first_round_wins),
        rows = c(2, 4, 6, 8, 10, 12, 14)
      )
    ) |>
    tab_options(
      data_row.padding = px(4),
      table.font.size = px(12)
    )

  gt_tbl

  bracket_table_html <- paste0(
    "<h3>Playoffs Bracket</h3>",
    as_raw_html(
      gt_tbl,
      inline_css = TRUE
    )
  )
} else {
  bracket_table_html <- ""
}

# make web page ----
now_html <- paste(
  "<p class=\"updated_time\"> Latest data: ",
  now_formatted,
  "</p>",
  sep = ""
)

web_text <- paste(
  "---
layout: page
title: Basketball Standings
permalink: /projects/basketball
imageurl: https://bzigterman.com/plots/nba_standings.png
---

",
  now_html,
  bracket_table_html,
  "
<div class = \"standings\">
<iframe src=\"/interactive/western_standings.html\" width=\"100%\" height=\"400\"> 
</iframe>

<iframe src=\"/interactive/eastern_standings.html\" width=\"100%\" height=\"400\"> 
</iframe>
</div>

",
  nba_standings_table_html,
  " 

<iframe src=\"/interactive/nba_team_rank.html\" width=\"100%\" height=\"400\"> 
</iframe>

Chart inspired by those in the [Pennant app](http://www.pennantapp.com).

Updated standings are posted daily on Mastodon <a rel=\"me\" href=\"https://mastodon.social/@basketballstandings\">@basketballstandings</a>

<p class=\"updated_time\">Source: ESPN and NBA. Postseason odds are based on a simple projection based on points scored and points allowed that runs 1,000 times.</p> 

",
  sep = ""
)

write_lines(web_text, "projects/basketball.md")
