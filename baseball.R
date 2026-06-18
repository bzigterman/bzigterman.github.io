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
library(jsonlite)
library(readr)
library(dplyr)


# get data ----

year_long <- year(today(tzone = "America/Chicago"))
year_short <- substr(year_long, nchar(year_long) - 1, nchar(year_long))
today <- today(tzone = "America/Chicago")

# Pull all recorded MLB seasons
mlb_seasons <- mlb_seasons_all(sport_id = 1)

opening_day_current_year <- mlb_seasons |>
  filter(season_id == year_long) |>
  select(regular_season_start_date)
opening_day_current_year <- as_date(
  opening_day_current_year$regular_season_start_date
)
typeof(opening_day_current_year)
current_season <- if_else(
  today >= opening_day_current_year,
  year_long,
  year_long - 1
)
current_season

csv_path <- "data/mlb_standings.csv"

# 1. Fetch live data from the API
live_data <- map_df(c(103, 104), function(lg) {
  mlb_standings(
    season = current_season,
    league_id = lg,
    standings_type = "regularSeason"
  )
})

live_data <- live_data |>
  # ... your mutate cleanup steps here ...
  arrange(team_records_team_name) # Ensure consistent ordering for comparison

# 2. Extract the absolute latest team update timestamp across the league
# (Using the max team update ensures if ANY game finishes, the time shifts)
api_raw_time <- max(live_data$team_records_last_updated, na.rm = TRUE)

# Parse it to a standard POSIXct date-time object
api_timestamp <- ymd_hms(api_raw_time)

# 3. Check if we already have this exact data saved
if (file.exists(csv_path)) {
  old_data <- read_csv(csv_path, show_col_types = FALSE)

  # Pull the saved timestamp from your old file
  old_timestamp <- ymd_hms(max(
    old_data$team_records_last_updated,
    na.rm = TRUE
  ))

  # If the timestamps are identical, absolutely nothing changed in MLB's system
  if (api_timestamp == old_timestamp) {
    message("MLB API timestamp has not advanced. Exiting early.")
    quit(status = 0)
  }
}

# 4. If it's a new timestamp, clean up your columns and write the file
standings_cleaned <- live_data |>
  mutate(
    wins = as.numeric(team_records_wins),
    losses = as.numeric(team_records_losses),
    game_n = wins + losses,
    team = team_records_team_name,
    # Keep the raw or parsed timestamp attached so it reads next time
    team_records_last_updated = team_records_last_updated
  )

write_csv(standings_cleaned, csv_path)
message("New data found! Standings updated.")

# Convert the UTC time from the API into your local timezone
local_display_time <- api_timestamp |>
  with_tz(tzone = "America/Chicago") |>
  format("%I:%M %p %Z, %A, %B %d")
local_display_time

standings_raw <- live_data

# Clean data to get records and run metrics
team_stats <- standings_raw %>%
  select(
    team_records_team_id,
    team_records_team_name,
    division_id,
    league_id,
    team_records_wins,
    team_records_losses,
    team_records_runs_scored,
    team_records_runs_allowed
  ) %>%
  mutate(
    wins = team_records_wins,
    losses = team_records_losses,
    runs_scored = team_records_runs_scored,
    runs_allowed = team_records_runs_allowed,
    team_id = team_records_team_id,
    team_short_name = team_records_team_name
  ) |>
  mutate(
    games_played = wins + losses,
    pyth_wpct = (runs_scored^1.83) / (runs_scored^1.83 + runs_allowed^1.83)
  )

# 2. Fetch the Full Season Schedule ----
raw_schedule <- mlb_schedule(season = current_season, level_ids = 1)
full_schedule <- raw_schedule %>%
  filter(game_type == "R") %>% # Regular season only
  select(
    game_pk,
    date,
    teams_home_team_id,
    teams_home_is_winner,
    teams_away_team_id,
    status_abstract_game_state
  )

# Split into played games and unplayed games
played_games <- full_schedule %>%
  filter(status_abstract_game_state == "Final")
unplayed_games <- full_schedule %>%
  filter(status_abstract_game_state != "Final")

# 3. Log5 Win Probability Function ----
calc_log5 <- function(wpct_a, wpct_b) {
  num <- wpct_a * (1 - wpct_b)
  den <- (wpct_a * (1 - wpct_b)) + (wpct_b * (1 - wpct_a))
  return(num / den)
}

# 4. The Monte Carlo Simulation Engine (Updated) ----
set.seed(42)
n_sims <- 1000

# Track World Series Titles
ws_winners <- character(n_sims)

# NEW: Track playoff appearances for all 30 teams across all simulations
# Create a matrix where rows = teams and columns = simulation runs
all_team_ids <- team_stats$team_id
playoff_tracker <- matrix(
  0,
  nrow = nrow(team_stats),
  ncol = n_sims,
  dimnames = list(team_stats$team_short_name, NULL)
)

message("Running Monte Carlo Simulations...")

for (sim in 1:n_sims) {
  # --- SIMULATE REMAINING REGULAR SEASON ---
  sim_teams <- team_stats %>%
    select(
      team_id,
      team_short_name,
      division_id,
      league_id,
      wins,
      losses,
      pyth_wpct
    )

  if (nrow(unplayed_games) > 0) {
    sim_schedule <- unplayed_games %>%
      left_join(
        sim_teams %>% select(team_id, pyth_wpct_home = pyth_wpct),
        by = c("teams_home_team_id" = "team_id")
      ) %>%
      left_join(
        sim_teams %>% select(team_id, pyth_wpct_away = pyth_wpct),
        by = c("teams_away_team_id" = "team_id")
      ) %>%
      mutate(
        home_win_prob = calc_log5(pyth_wpct_home, pyth_wpct_away),
        home_win = runif(n()) < home_win_prob
      )

    home_sim_wins <- sim_schedule %>%
      group_by(team_id = teams_home_team_id) %>%
      summarize(swins = sum(home_win), slosses = sum(!home_win))
    away_sim_wins <- sim_schedule %>%
      group_by(team_id = teams_away_team_id) %>%
      summarize(swins = sum(!home_win), slosses = sum(home_win))

    total_sim_results <- bind_rows(home_sim_wins, away_sim_wins) %>%
      group_by(team_id) %>%
      summarize(swins = sum(swins), slosses = sum(slosses))

    sim_teams <- sim_teams %>%
      left_join(total_sim_results, by = "team_id") %>%
      mutate(
        wins = wins + coalesce(swins, 0L),
        losses = losses + coalesce(slosses, 0L)
      ) %>%
      select(-swins, -slosses)
  }

  # --- DETERMINE POSTSEASON SEEDS (12-Team Bracket) ---
  final_standings <- sim_teams %>%
    group_by(division_id) %>%
    mutate(div_rank = rank(-wins, ties.method = "random")) %>%
    ungroup() %>%
    mutate(is_div_winner = (div_rank == 1)) %>%
    group_by(league_id, is_div_winner) %>%
    mutate(lg_rank = rank(-wins, ties.method = "random")) %>%
    ungroup() %>%
    mutate(
      seed = case_when(
        is_div_winner & lg_rank == 1 ~ 1,
        is_div_winner & lg_rank == 2 ~ 2,
        is_div_winner & lg_rank == 3 ~ 3,
        !is_div_winner ~ lg_rank + 3,
        TRUE ~ NA_real_
      )
    ) %>%
    filter(seed <= 6) %>%
    arrange(league_id, seed)

  # NEW: Mark the 12 teams that made the playoffs in this simulation
  playoff_tracker[final_standings$team_short_name, sim] <- 1

  # --- SIMULATE POSTSEASON SERIES ---
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

  lg_champs <- list()
  for (lg in c(103, 104)) {
    lg_teams <- final_standings %>% filter(league_id == lg)

    t1 <- lg_teams %>% filter(seed == 1)
    t2 <- lg_teams %>% filter(seed == 2)
    t3 <- lg_teams %>% filter(seed == 3)
    t4 <- lg_teams %>% filter(seed == 4)
    t5 <- lg_teams %>% filter(seed == 5)
    t6 <- lg_teams %>% filter(seed == 6)

    wc1_winner <- sim_series(t4, t5, 3)
    wc2_winner <- sim_series(t3, t6, 3)

    lds1_winner <- sim_series(t1, wc1_winner, 5)
    lds2_winner <- sim_series(t2, wc2_winner, 5)

    lg_champs[[as.character(lg)]] <- sim_series(lds1_winner, lds2_winner, 7)
  }

  world_series_winner <- sim_series(lg_champs[["103"]], lg_champs[["104"]], 7)
  ws_winners[sim] <- world_series_winner$team_short_name
}

# 5. Output Unified Results Table (Updated) ----

# Calculate playoff probabilities
playoff_probs <- rowSums(playoff_tracker) / n_sims * 100

# Calculate World Series probabilities
ws_counts <- table(ws_winners)
ws_probs <- setNames(rep(0, nrow(team_stats)), team_stats$team_short_name)
ws_probs[names(ws_counts)] <- (as.numeric(ws_counts) / n_sims) * 100

# Combine into a clean, comprehensive forecast table
forecast_table <- team_stats %>%
  select(
    team_label = team_short_name,
    Current_Wins = wins,
    Current_Losses = losses
  ) %>%
  mutate(
    Playoff_Odds_Pct = round(playoff_probs[team_label], 1),
    WS_Win_Odds_Pct = round(ws_probs[team_label], 1)
  ) %>%
  arrange(desc(Playoff_Odds_Pct), desc(WS_Win_Odds_Pct))

print(forecast_table, n = 30)
table <- forecast_table |>
  mutate(team_label = team_label, win_ws = WS_Win_Odds_Pct) |>
  select(team_label, Playoff_Odds_Pct, win_ws)

# standings tables ----

standings_cleaned <- standings_raw |>
  select(
    team_records_division_rank,
    team_records_league_rank,
    team_records_games_played,
    team_records_division_games_back,
    team_records_wild_card_games_back,
    team_records_division_champ,
    team_records_division_leader,
    team_records_has_wildcard,
    team_records_clinched,
    team_records_elimination_number,
    team_records_magic_number,
    team_records_wins,
    team_records_losses,
    team_records_runs_scored,
    team_records_runs_allowed,
    team_records_wild_card_rank,
    team_records_wild_card_leader,
    team_records_team_name,
    team_records_streak_streak_code,
    team_records_winning_percentage,
    team_records_team_id,
    league_id,
    division_id
  ) %>%
  mutate(net_wins = team_records_wins - team_records_losses) |>
  mutate(team_label = team_records_team_name) |>
  mutate(
    division = case_when(
      division_id == 200 ~ "AL West",
      division_id == 201 ~ "AL East",
      division_id == 202 ~ "AL Central",
      division_id == 203 ~ "NL West",
      division_id == 204 ~ "NL East",
      division_id == 205 ~ "NL Central"
    )
  ) |>
  mutate(
    league = case_when(
      league_id == 103 ~ "AL",
      league_id == 104 ~ "NL"
    )
  )

standings_with_odds <- full_join(standings_cleaned, table) |>
  select(
    team_label,
    division,
    league,
    team_records_wins,
    team_records_losses,
    team_records_winning_percentage,
    team_records_division_games_back,
    team_records_elimination_number,
    team_records_wild_card_games_back,
    team_records_streak_streak_code,
    Playoff_Odds_Pct,
    win_ws
  )


standings_table <- standings_with_odds %>%
  group_by(division) %>%
  arrange(division, desc(team_records_winning_percentage)) %>%
  gt() %>%
  gt_theme_espn() %>%
  fmt_percent(
    columns = c(win_ws, Playoff_Odds_Pct),
    decimals = 0,
    scale_values = FALSE
  ) |>
  data_color(
    columns = c(win_ws, Playoff_Odds_Pct),
    domain = c(2.1, 100),
    na_color = "#FFFFFF",
    palette = "Reds"
  ) %>% # hide this until new playoffs figured out
  cols_hide(columns = c(league, team_records_wild_card_games_back)) |>
  cols_align(
    align = c("right"),
    columns = c(
      team_records_winning_percentage,
      team_records_elimination_number,
      team_records_streak_streak_code
    )
  ) %>%
  cols_label(
    team_label = "Team",
    team_records_wins = "W",
    team_records_losses = "L",
    team_records_division_games_back = "GB",
    team_records_winning_percentage = "Pct",
    team_records_elimination_number = html("E#"),
    team_records_streak_streak_code = "Streak",
    Playoff_Odds_Pct = "Post",
    win_ws = "Win WS"
  ) %>%
  tab_options(
    table.width = pct(100),
    data_row.padding = px(4),
    table.font.size = px(12)
  ) %>%
  opt_all_caps(all_caps = TRUE)
standings_table
better_division_standings_table_html <- as_raw_html(
  standings_table,
  inline_css = TRUE
)

wild_card_table <- standings_with_odds %>%
  group_by(league) %>%
  arrange(league, desc(team_records_winning_percentage)) %>%
  gt() %>%
  gt_theme_espn() %>%
  cols_hide(columns = c(division, team_records_division_games_back)) |>
  cols_align(
    align = c("right"),
    columns = c(
      team_records_winning_percentage,
      team_records_wild_card_games_back,
      team_records_elimination_number,
      team_records_streak_streak_code
    )
  ) %>%
  fmt_percent(
    columns = c(win_ws, Playoff_Odds_Pct),
    decimals = 0,
    scale_values = FALSE
  ) |>
  data_color(
    columns = c(win_ws, Playoff_Odds_Pct),
    domain = c(2.1, 100),
    na_color = "#FFFFFF",
    palette = "Reds"
  ) |>
  cols_label(
    team_label = "Team",
    team_records_wins = "W",
    team_records_losses = "L",
    team_records_wild_card_games_back = "GB",
    team_records_streak_streak_code = "Streak",
    Playoff_Odds_Pct = "Post",
    win_ws = "Win WS",
    team_records_winning_percentage = "Pct",
    team_records_elimination_number = "E#"
  ) %>%
  tab_options(
    table.width = pct(100),
    data_row.padding = px(4),
    table.font.size = px(12)
  ) %>%
  opt_all_caps(all_caps = TRUE)
wild_card_table
better_wild_card_standings_table_html <- as_raw_html(
  wild_card_table,
  inline_css = TRUE
)

# interactive column charrt ----
sorted_mlb_standings <- standings_with_odds |>
  select(
    team_label,
    team_records_wins,
    team_records_losses,
    team_records_winning_percentage,
    league
  ) |>
  arrange(if_else(league == "AL", (team_records_winning_percentage), NA)) |>
  arrange(if_else(league == "NL", desc(team_records_winning_percentage), NA)) |>
  mutate(league = factor(league)) |>
  mutate(
    league = fct_relevel(
      league,
      c("AL", "NL")
    )
  ) |>
  mutate(win_pct_text = team_records_winning_percentage) |>
  mutate(
    team_records_winning_percentage = as.numeric(
      team_records_winning_percentage
    )
  ) |>
  mutate(
    al_win_pct = (if_else(
      league == "AL",
      (team_records_winning_percentage),
      NA
    ))
  ) |>
  mutate(
    nl_win_pct = (if_else(
      league == "NL",
      (team_records_winning_percentage),
      NA
    ))
  )

fig <- hchart(
  sorted_mlb_standings,
  "column",
  borderWidth = 0,
  animation = FALSE,
  hcaes(x = team_label, y = al_win_pct, group = league),
  colorKey = "al_win_pct",
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
    pointFormat = "{point.team_label}:<br>{point.team_records_wins} – {point.team_records_losses}, {point.win_pct_text}"
  )
) |>
  hc_add_series(
    sorted_mlb_standings,
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
    hcaes(x = team_label, y = nl_win_pct, group = league),
    colorKey = "nl_win_pct",
    colorAxis = 0,
    grouping = FALSE,
    groupPadding = 0,
    pointPadding = 0,
    tooltip = list(
      headerFormat = "",
      pointFormat = "{point.team_label}:<br>{point.team_records_wins} – {point.team_records_losses}, {point.win_pct_text}"
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
        label = list(text = "American League"),
        color = hex_to_rgba("white", 0),
        zIndex = 2,
        from = -0.5,
        to = 14.5
      ),
      list(
        label = list(text = "National League"),
        color = hex_to_rgba("white", 0),
        zIndex = 2,
        from = 14.5,
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
  file = "interactive/mlb_team_rank.html",
  selfcontained = FALSE,
  libdir = "interactive"
)

# net wins interactives ----

# 1. Fetch the schedule for the desired season (e.g., 2025)
raw_schedule <- raw_schedule

# 2. Filter for Regular Season games and clean the data
mlb_data <- raw_schedule %>%
  # Filter for regular season games that have actually been played/completed
  filter(game_type == "R", status_abstract_game_state == "Final") %>%
  filter(
    game_type == "R",
    status_abstract_game_state == "Final",
    !is.na(teams_home_score),
    !is.na(teams_away_score)
  ) |>
  select(
    game_pk,
    date,
    teams_home_team_name,
    teams_home_team_id,
    teams_home_score,
    teams_away_team_name,
    teams_away_team_id,
    teams_away_score
  )

# 3. Reshape data so every team has its own row per game
teams_processed <- bind_rows(
  # Home team perspective
  mlb_data %>%
    transmute(
      game_pk,
      date,
      team = teams_home_team_id,
      is_win = if_else(teams_home_score > teams_away_score, 1, 0),
      is_loss = if_else(teams_home_score < teams_away_score, 1, 0)
    ),
  # Away team perspective
  mlb_data %>%
    transmute(
      game_pk,
      date,
      team = teams_away_team_id,
      is_win = if_else(teams_away_score > teams_home_score, 1, 0),
      is_loss = if_else(teams_away_score < teams_home_score, 1, 0)
    )
)

# 4. Calculate game numbers and cumulative net wins
team_lookup <- mlb_teams(season = current_season, sport_ids = 1) %>%
  select(team_id)

team_details <- standings_cleaned |>
  select(
    team_label,
    team_id = team_records_team_id,
    division_id,
    division,
    league_id,
    league
  ) |>
  left_join(team_lookup)

net_wins_table <- teams_processed %>%
  # Arrange by team and date to ensure chronological order
  arrange(team, date, game_pk) %>%
  group_by(team) %>%
  mutate(
    game_number = row_number(),
    cum_wins = cumsum(is_win),
    cum_losses = cumsum(is_loss),
    net_wins = cum_wins - cum_losses
  ) %>%
  ungroup() %>%
  # Select and order your requested columns
  select(team, game_number, cum_wins, cum_losses, net_wins, date) |>
  mutate(team_id = team) |>
  left_join(team_details)

# View the final table
print(head(net_wins_table))

standings_interactive <- function(target_division_id) {
  # 1. Renamed parameter to avoid conflict

  # Filter the data first so we can use it cleanly for both the chart and the title
  filtered_data <- net_wins_table %>%
    filter(division_id == target_division_id)

  # 2. Safely grab the actual division name from the filtered data
  division_title <- filtered_data %>%
    pluck("division", 1) # Grabs the first entry, or use unique(filtered_data$division)

  hchart(
    filtered_data,
    "line",
    hcaes(x = game_number, y = net_wins, group = team_label),
    animation = FALSE,
    label = list(enabled = TRUE),
    tooltip = list(
      pointFormat = "{point.team_label}: {point.cum_wins}-{point.cum_losses}"
    )
  ) %>%
    hc_colors(brewer.pal(9, "Set1")) %>%
    hc_legend(enabled = FALSE) %>%
    hc_title(text = division_title) %>% # 3. Updated title
    hc_yAxis(title = "", endOnTick = FALSE, startOnTick = FALSE) %>%
    hc_xAxis(title = "", max = 162) %>%
    hc_add_theme(hc_theme_bloom())
}

# Now call it using your division ID
interactive <- standings_interactive(202)
interactive
# 1. Map your specific MLB division IDs to their file names
divisions <- c(
  "al_west" = 200,
  "al_east" = 201,
  "al_central" = 202,
  "nl_west" = 203,
  "nl_east" = 204,
  "nl_central" = 205
)

# 2. Run the loop to generate and save all 6 interactive files
iwalk(divisions, function(id, name) {
  # Generate the unique chart for this division
  chart <- standings_interactive(id)

  # Construct the precise file path dynamically
  file_path <- paste0("interactive/", name, "_interactive.html")

  # Save the widget using your settings
  saveWidget(
    widget = chart,
    file = file_path,
    selfcontained = FALSE,
    libdir = "interactive"
  )
})

standings_interactive <- function(target_league_id) {
  # 1. Renamed parameter to avoid conflict

  # Filter the data first so we can use it cleanly for both the chart and the title
  filtered_data <- net_wins_table %>%
    filter(league_id == target_league_id)

  # 2. Safely grab the actual division name from the filtered data
  league_title <- filtered_data %>%
    pluck("league", 1) # Grabs the first entry, or use unique(filtered_data$division)

  hchart(
    filtered_data,
    "line",
    hcaes(x = game_number, y = net_wins, group = team_label),
    animation = FALSE,
    label = list(enabled = TRUE),
    tooltip = list(
      pointFormat = "{point.team_label}: {point.cum_wins}-{point.cum_losses}"
    )
  ) %>%
    hc_chart(backgroundColor = "white") |>
    hc_colors(brewer.pal(8, "Dark2")) %>%
    hc_legend(enabled = FALSE) %>%
    hc_title(text = league_title) %>% # 3. Updated title
    hc_yAxis(
      title = "",
      endOnTick = FALSE,
      startOnTick = FALSE
    ) %>%
    hc_xAxis(title = "", max = 162) %>%
    hc_add_theme(hc_theme_bloom())
}

# Now call it using your division ID
interactive <- standings_interactive(103)
interactive
# 1. Map your specific MLB division IDs to their file names
leagues <- c(
  "al" = 103,
  "nl" = 104
)

# 2. Run the loop to generate and save all 6 interactive files
iwalk(leagues, function(id, name) {
  # Generate the unique chart for this division
  chart <- standings_interactive(id)

  # Construct the precise file path dynamically
  file_path <- paste0("interactive/", name, "_standings.html")

  # Save the widget using your settings
  saveWidget(
    widget = chart,
    file = file_path,
    selfcontained = FALSE,
    libdir = "interactive"
  )
})


# playoffs bracket ----
## Define the URL
url <- paste0(
  "https://en.wikipedia.org/wiki/",
  current_season,
  "_Major_League_Baseball_postseason"
)

# Read the HTML content
## check if website is accessible

status <- GET(url)$status_code
if (status != 200) {
  bracket_table_html <- ""
  cat("Failed to retrieve the webpage. Status code:", as.numeric(status))
} else {
  page <- read_html(url)

  bracket_h2 <- html_node(
    page,
    xpath = "//h2[normalize-space(text())='Playoff bracket']"
  )

  # Extract all tables from the page
  tables <- bracket_h2 |>
    html_node(xpath = "following::table[1]") |>
    html_table(fill = TRUE, header = TRUE, na.strings = "")

  # Identify the bracket table
  # Assuming the bracket is the first table; adjust the index if necessary
  rows_to_keep <- c(2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16)
  bracket_table <- tables |>
    #html_table(fill = TRUE, header = TRUE, na.strings = "") |>
    janitor::clean_names() |>
    select(
      c(
        wild_card_series_alwcs_nlwcs_2,
        wild_card_series_alwcs_nlwcs_3,
        division_series_alds_nlds_2,
        division_series_alds_nlds_3,
        championship_series_alcs_nlcs_2,
        championship_series_alcs_nlcs_3,
        world_series_2,
        world_series_3
      )
    ) |>
    # remove "American League" and "National League" cells
    mutate(
      division_series_alds_nlds_2 = if_else(
        division_series_alds_nlds_2 == "American League" |
          division_series_alds_nlds_2 == "National League",
        NA_character_,
        division_series_alds_nlds_2
      )
    ) |>
    mutate(
      division_series_alds_nlds_3 = if_else(
        division_series_alds_nlds_3 == "American League" |
          division_series_alds_nlds_3 == "National League",
        NA_character_,
        division_series_alds_nlds_3
      )
    ) |>
    #filter(wild_card_series_alwcs_nlwcs_2 != "Eastern Conference") |>
    #filter(wild_card_series_alwcs_nlwcs_2 != "Western Conference") |>
    slice(rows_to_keep) |>
    mutate(across(everything(), ~ str_remove(., "\\*$"))) |>
    rename(wcs_round = wild_card_series_alwcs_nlwcs_2) |>
    rename(wcs_round_wins = wild_card_series_alwcs_nlwcs_3) |>
    rename(division_series = division_series_alds_nlds_2) |>
    rename(division_series_wins = division_series_alds_nlds_3) |>
    rename(championship_series = championship_series_alcs_nlcs_2) |>
    rename(championship_series_wins = championship_series_alcs_nlcs_3) |>
    rename(world_series = world_series_2) |>
    rename(world_series_wins = world_series_3) |>
    mutate(across(everything(), as.character)) |>
    mutate(across(where(is.character), ~ replace_na(., "")))

  # add nonbreaking space to empty rows
  bracket_table <- bracket_table |>
    mutate(across(everything(), ~ if_else(. == "", "\u00A0", .)))

  # View the bracket table

  gt_tbl <- bracket_table |>
    gt() %>%
    gt_theme_espn() %>%
    cols_label(
      wcs_round = "Wild Card Series",
      wcs_round_wins = "",
      division_series = "Division Series",
      division_series_wins = "",
      championship_series = "Championship Series",
      championship_series_wins = "",
      world_series = "World Series",
      world_series_wins = ""
    ) |>
    opt_row_striping(FALSE) |>
    opt_table_lines("none") |>
    tab_style(
      style = cell_fill(color = "gray90"),
      locations = cells_body(
        columns = c(wcs_round, wcs_round_wins),
        rows = c(2, 3, 6, 7, 10, 11, 14, 15)
      )
    ) |>
    tab_style(
      style = cell_fill(color = "gray90"),
      locations = cells_body(
        columns = c(division_series, division_series_wins),
        rows = c(1, 2, 5, 6, 9, 10, 13, 14)
      )
    ) |>
    tab_style(
      style = cell_fill(color = "gray90"),
      locations = cells_body(
        columns = c(championship_series, championship_series_wins),
        rows = c(3, 4, 11, 12)
      )
    ) |>
    tab_style(
      style = cell_fill(color = "gray90"),
      locations = cells_body(
        columns = c(world_series, world_series_wins),
        rows = c(7, 8)
      )
    ) |>
    # tab_style(
    #   style = cell_borders(
    #     sides = "bottom",
    #     color = "black",
    #     weight = px(1)
    #   ),
    #   locations = cells_body(
    #     columns = c(first_round, first_round_wins),
    #     rows = c(2, 4, 6, 8, 10, 12, 14)
    #   )
    # ) |>
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
}


# web text ----
now <- as_datetime(now())
now_formatted <- strftime(
  x = now,
  tz = "US/Central",
  format = "%I:%M% %p CT, %B %d"
)

now_html <- paste(
  "<p class=\"updated_time\"> Latest data: ",
  local_display_time,
  "</p>",
  sep = ""
)

web_text <- paste(
  "---
layout: page
title: Baseball Standings
permalink: /projects/baseball
imageurl: https://bzigterman.com/plots/mlb_wild_card.png
---

",
  now_html,
  bracket_table_html,
  "
### Games Above .500

<div class = \"standings\">
<iframe src=\"/interactive/al_standings.html\" width=\"100%\" height=\"400\"> 
</iframe>

<iframe src=\"/interactive/nl_standings.html\" width=\"100%\" height=\"400\"> 
</iframe>
</div>


",
  better_wild_card_standings_table_html,
  "

## Wild Card

<iframe src=\"/interactive/mlb_team_rank.html\" width=\"100%\" height=\"400\"> 
</iframe>

Chart inspired by those in the [Pennant app](http://www.pennantapp.com).

",
  better_division_standings_table_html,
  "



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

<p class=\"updated_time\">Source: MLB. World Series odds are based on a simple projection based on runs scored and runs allowed that runs 1,000 times. </p> 

",
  sep = ""
)

write_lines(web_text, "projects/baseball.md")
