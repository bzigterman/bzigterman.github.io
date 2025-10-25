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

# get data ----

year_long <- year(today(tzone = "America/Chicago"))
year_short <- substr(year_long, nchar(year_long) - 1, nchar(year_long))

# playoffs bracket ----

# Define the URL
url <- paste0(
  "https://en.wikipedia.org/wiki/",
  year_long,
  "_Major_League_Baseball_postseason"
)

# Read the HTML content
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

bracket_table_html <- as_raw_html(
  gt_tbl,
  inline_css = TRUE
)


# ployoff odds ----
get_market_prices <- function(ticker) {
  ticker <- ticker
  url <- paste0("https://api.elections.kalshi.com/trade-api/v2/events/", ticker)
  response <- VERB(
    "GET",
    url,
    content_type("application/octet-stream"),
    accept("application/json")
  )
  content <- content(response, "text")
  json <- fromJSON(content)
  markets <- json$markets
  prices <- markets |>
    select(ticker, yes_sub_title, last_price) |>
    mutate(team_label = substr(ticker, 10, nchar(ticker)))
}

finals <- get_market_prices(paste0("KXMLB-", year_short)) |>
  mutate(win_ws = last_price) |>
  select(team_label, win_ws)

table <- finals |>
  mutate(
    team_label = case_when(
      team_label == "A" ~ "ATH",
      team_label == "WAS" ~ "WSH",
      team_label == "TB" ~ "TB ",
      team_label == "SF" ~ "SF ",
      team_label == "SD" ~ "SD ",
      team_label == "KAN" ~ "KC ",
      team_label == "FLA" ~ "MIA",
      .default = team_label
    )
  )

# get team results ----
get_team_records <- function(abbreviation) {
  records <- bref_team_results(abbreviation, year_long) |>
    mutate(game_n = as.numeric(Gm)) |>
    mutate(
      result = case_when(
        Result == "W" ~ "W",
        Result == "L" ~ "L",
        Result == "L-wo" ~ "L",
        Result == "W-wo" ~ "W",
      )
    ) |>
    separate(Record, c("wins", "losses"), convert = TRUE) |>
    mutate(win_pct = wins / game_n) %>%
    mutate(
      win_pct_text = if_else(
        win_pct == 1,
        paste("1.000"),
        paste0(".", round(win_pct * 1000))
      )
    ) %>%
    mutate(net_wins = wins - losses) %>%
    mutate(games_remaining = 162 - game_n) |>
    mutate(
      team = case_when(
        abbreviation == "CHW" ~ "CWS",
        abbreviation == "KCR" ~ "KC ",
        abbreviation == "TBR" ~ "TB ",
        abbreviation == "WSN" ~ "WSH",
        abbreviation == "SFG" ~ "SF ",
        abbreviation == "SDP" ~ "SD ",
        TRUE ~ abbreviation
      )
    ) |>
    mutate(team_label = if_else(game_n == max(na.omit(game_n)), team, NA)) %>%
    mutate(win = if_else(result == "W", 1, 0)) |>
    mutate(
      outcomes = list(
        tail(na.omit(win), 10)
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
team5 <- get_team_records("MIN") %>%
  mutate(logo_url = "https://www.mlbstatic.com/team-logos/142.svg")

al_central <- full_join(team1, team2) %>%
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
  mutate(
    division_magic_number = ifelse(
      division_place == 1,
      ifelse(
        163 - wins - second_place_losses <= 0,
        "✓",
        163 - wins - second_place_losses
      ),
      ""
    )
  ) %>%
  mutate(
    division_elimination_number = ifelse(
      division_place != 1,
      ifelse(
        (163 - first_place_wins - losses) <= 0,
        "—",
        (163 - first_place_wins - losses)
      ),
      ""
    )
  ) %>%
  mutate(
    division_magic_or_eliminated = ifelse(
      division_place == 1,
      division_magic_number,
      division_elimination_number
    )
  ) %>%
  mutate(first_place_net_wins = al_central_standings$net_wins[[1]]) %>%
  mutate(division_games_behind = (first_place_net_wins - net_wins) / 2)


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

al_east <- full_join(team1, team2) %>%
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
  mutate(
    division_magic_number = ifelse(
      division_place == 1,
      ifelse(
        163 - wins - second_place_losses <= 0,
        "✓",
        163 - wins - second_place_losses
      ),
      ""
    )
  ) %>%
  mutate(
    division_elimination_number = ifelse(
      division_place != 1,
      ifelse(
        (163 - first_place_wins - losses) <= 0,
        "—",
        (163 - first_place_wins - losses)
      ),
      ""
    )
  ) %>%
  mutate(
    division_magic_or_eliminated = ifelse(
      division_place == 1,
      division_magic_number,
      division_elimination_number
    )
  ) %>%
  mutate(first_place_net_wins = al_east_standings$net_wins[[1]]) %>%
  mutate(division_games_behind = (first_place_net_wins - net_wins) / 2)


## al west ----

team1 <- get_team_records("HOU") %>%
  mutate(logo_url = "https://www.mlbstatic.com/team-logos/117.svg")
team2 <- get_team_records("ATH") %>%
  mutate(logo_url = "https://www.mlbstatic.com/team-logos/133.svg")
team3 <- get_team_records("SEA") %>%
  mutate(logo_url = "https://www.mlbstatic.com/team-logos/136.svg")
team4 <- get_team_records("LAA") %>%
  mutate(logo_url = "https://www.mlbstatic.com/team-logos/108.svg")
team5 <- get_team_records("TEX") %>%
  mutate(logo_url = "https://www.mlbstatic.com/team-logos/140.svg")

al_west <- full_join(team1, team2) %>%
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
  mutate(
    division_magic_number = ifelse(
      division_place == 1,
      ifelse(
        163 - wins - second_place_losses <= 0,
        "✓",
        163 - wins - second_place_losses
      ),
      ""
    )
  ) %>%
  mutate(
    division_elimination_number = ifelse(
      division_place != 1,
      ifelse(
        (163 - first_place_wins - losses) <= 0,
        "—",
        (163 - first_place_wins - losses)
      ),
      ""
    )
  ) %>%
  mutate(
    division_magic_or_eliminated = ifelse(
      division_place == 1,
      division_magic_number,
      division_elimination_number
    )
  ) %>%
  mutate(first_place_net_wins = al_west_standings$net_wins[[1]]) %>%
  mutate(division_games_behind = (first_place_net_wins - net_wins) / 2)


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

nl_central <- full_join(team1, team2) %>%
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
  mutate(
    division_magic_number = ifelse(
      division_place == 1,
      ifelse(
        163 - wins - second_place_losses <= 0,
        "✓",
        163 - wins - second_place_losses
      ),
      ""
    )
  ) %>%
  mutate(
    division_elimination_number = ifelse(
      division_place != 1,
      ifelse(
        (163 - first_place_wins - losses) <= 0,
        "—",
        (163 - first_place_wins - losses)
      ),
      ""
    )
  ) %>%
  mutate(
    division_magic_or_eliminated = ifelse(
      division_place == 1,
      division_magic_number,
      division_elimination_number
    )
  ) %>%
  mutate(first_place_net_wins = nl_central_standings$net_wins[[1]]) %>%
  mutate(division_games_behind = (first_place_net_wins - net_wins) / 2)


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

nl_east <- full_join(team1, team2) %>%
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
  mutate(
    division_magic_number = ifelse(
      division_place == 1,
      ifelse(
        163 - wins - second_place_losses <= 0,
        "✓",
        163 - wins - second_place_losses
      ),
      ""
    )
  ) %>%
  mutate(
    division_elimination_number = ifelse(
      division_place != 1,
      ifelse(
        (163 - first_place_wins - losses) <= 0,
        "—",
        (163 - first_place_wins - losses)
      ),
      ""
    )
  ) %>%
  mutate(
    division_magic_or_eliminated = ifelse(
      division_place == 1,
      division_magic_number,
      division_elimination_number
    )
  ) %>%
  mutate(first_place_net_wins = nl_east_standings$net_wins[[1]]) %>%
  mutate(division_games_behind = (first_place_net_wins - net_wins) / 2)


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

nl_west <- full_join(team1, team2) %>%
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
  mutate(
    division_magic_number = ifelse(
      division_place == 1,
      ifelse(
        163 - wins - second_place_losses <= 0,
        "✓",
        163 - wins - second_place_losses
      ),
      ""
    )
  ) %>%
  mutate(
    division_elimination_number = ifelse(
      division_place != 1,
      ifelse(
        (163 - first_place_wins - losses) <= 0,
        "—",
        (163 - first_place_wins - losses)
      ),
      ""
    )
  ) %>%
  mutate(
    division_magic_or_eliminated = ifelse(
      division_place == 1,
      division_magic_number,
      division_elimination_number
    )
  ) %>%
  mutate(first_place_net_wins = nl_west_standings$net_wins[[1]]) %>%
  mutate(division_games_behind = (first_place_net_wins - net_wins) / 2)

division_standings <- full_join(
  al_central_standings_magic,
  al_east_standings_magic
) %>%
  full_join(al_west_standings_magic) %>%
  full_join(nl_central_standings_magic) %>%
  full_join(nl_east_standings_magic) %>%
  full_join(nl_west_standings_magic) %>%
  full_join(table) |>
  select(
    logo_url,
    team_label,
    wins,
    losses,
    net_wins,
    win_pct,
    win_pct_text,
    games_remaining,
    division_games_behind,
    division_magic_number,
    division_elimination_number,
    division_magic_or_eliminated,
    win_ws,
    outcomes,
    division,
    division_place,
    league
  )


al_games <- full_join(al_central, al_east) %>%
  full_join(al_west)
nl_games <- full_join(nl_central, nl_east) %>%
  full_join(nl_west)

mlb_games <- full_join(al_games, nl_games) |>
  full_join(table)

# standings check ----
old_standings <- read_csv(
  "data/standings.csv",
  col_types = cols(
    league = col_character(),
    team_label = col_character(),
    wins = col_integer(),
    losses = col_integer(),
    win_pct_text = col_character(),
    games_remaining = col_number(),
    #post = col_number(),
    #div = col_number(),
    win_ws = col_number()
  ),
  trim_ws = FALSE
)
#old_standings <- as_tibble(2)
standings_check <- mlb_games %>%
  filter(!is.na(team_label)) %>%
  group_by(league) %>%
  arrange(league, desc(win_pct)) %>%
  select(
    league,
    team_label,
    wins,
    losses,
    win_pct_text,
    games_remaining,
    win_ws
  ) |>
  ungroup()
standings_the_same <- compare(standings_check, old_standings)
if (length(standings_the_same) > 0) {
  write_csv(standings_check, "data/standings.csv")

  # division standings ----
  mlb_standings <- mlb_games %>%
    filter(!is.na(team_label)) %>%
    select(
      logo_url,
      team_label,
      wins,
      losses,
      net_wins,
      win_pct,
      win_pct_text,
      games_remaining,
      outcomes,
      division,
      league
    )

  standings_table <- division_standings %>%
    group_by(division) %>%
    arrange(division, desc(win_pct)) %>%
    gt() %>%
    gt_theme_espn() %>%
    gt_plt_winloss(outcomes, max_wins = 10, type = "pill", width = 15) %>%
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
      columns = c(win_ws),
      decimals = 0,
      scale_values = FALSE
    ) |>
    data_color(
      columns = c(win_ws),
      domain = c(2.1, 100),
      na_color = "#FFFFFF",
      palette = "Reds"
    ) |>
    cols_hide(
      columns = c(
        win_pct,
        league,
        net_wins,
        games_remaining,
        division_magic_number,
        division_elimination_number,
        division_place
      )
    ) %>% # hide this until new playoffs figured out
    cols_align(
      align = c("right"),
      columns = c(
        win_pct_text,
        logo_url,
        outcomes,
        games_remaining,
        division_magic_or_eliminated
      )
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
      #div = "Win Div",
      win_ws = "Win WS",
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
  better_division_standings_table_html <- as_raw_html(
    standings_table,
    inline_css = TRUE
  )
  # better_divs_division_standings <- gsub("[#][a-z]{10}",
  #                                        "#division_standings_table",
  #                                        x = standings_table_html)
  # better_division_standings_table_html <- gsub("[\"][a-z]{10}",
  #                                              "\"division_standings_table",
  #                                              x = better_divs_division_standings)

  # games above 500 plots ----
  standings_interactive <- function(division) {
    hchart(
      division,
      "line",
      hcaes(x = game_n, y = net_wins, group = team),
      animation = FALSE,
      label = list(
        enabled = TRUE
      ),
      tooltip = list(
        pointFormat = "{point.team}: {point.wins}-{point.losses}, {point.win_pct_text}%"
      )
    ) %>%
      hc_colors(brewer.pal(9, "Set1")) %>%
      hc_legend(enabled = FALSE) %>%
      hc_title(text = tail(division$division, 1)) %>%
      hc_yAxis(title = "", endOnTick = FALSE, startOnTick = FALSE) %>%
      hc_xAxis(title = "", max = 162) %>%
      hc_add_theme(
        hc_theme_bloom()
      )
  }

  al_central_interactive <- standings_interactive(al_central)
  saveWidget(
    widget = al_central_interactive,
    file = "interactive/al_central_interactive.html",
    selfcontained = FALSE,
    libdir = "interactive"
  )
  al_east_interactive <- standings_interactive(al_east)
  saveWidget(
    widget = al_east_interactive,
    file = "interactive/al_east_interactive.html",
    selfcontained = FALSE,
    libdir = "interactive"
  )
  al_west_interactive <- standings_interactive(al_west)
  saveWidget(
    widget = al_west_interactive,
    file = "interactive/al_west_interactive.html",
    selfcontained = FALSE,
    libdir = "interactive"
  )

  nl_central_interactive <- standings_interactive(nl_central)
  saveWidget(
    widget = nl_central_interactive,
    file = "interactive/nl_central_interactive.html",
    selfcontained = FALSE,
    libdir = "interactive"
  )
  nl_east_interactive <- standings_interactive(nl_east)
  saveWidget(
    widget = nl_east_interactive,
    file = "interactive/nl_east_interactive.html",
    selfcontained = FALSE,
    libdir = "interactive"
  )
  nl_west_interactive <- standings_interactive(nl_west)
  saveWidget(
    widget = nl_west_interactive,
    file = "interactive/nl_west_interactive.html",
    selfcontained = FALSE,
    libdir = "interactive"
  )

  # wild card standings ----

  al_standings <- al_games %>%
    filter(!is.na(team_label)) %>%
    arrange(desc(win_pct)) %>%
    mutate(league_place = row_number())
  al_standings_elim <- al_standings %>%
    mutate(fifth_place_wins = al_standings$wins[[5]]) %>%
    mutate(sixth_place_wins = al_standings$wins[[6]]) %>%
    mutate(
      league_elimination_number = if_else(
        league_place > 6,
        (163 - sixth_place_wins - losses),
        NA
      )
    )
  nl_standings <- nl_games %>%
    filter(!is.na(team_label)) %>%
    arrange(desc(win_pct)) %>%
    mutate(league_place = row_number())
  nl_standings_elim <- nl_standings %>%
    mutate(fifth_place_wins = nl_standings$wins[[5]]) %>%
    mutate(sixth_place_wins = nl_standings$wins[[6]]) %>%
    mutate(
      league_elimination_number = if_else(
        league_place > 6,
        (163 - sixth_place_wins - losses),
        NA
      )
    )

  mlb_standings <- full_join(al_standings_elim, nl_standings_elim) %>%
    full_join(division_standings) %>%
    select(
      logo_url,
      team_label,
      wins,
      losses,
      net_wins,
      win_pct,
      win_pct_text,
      games_remaining,
      division,
      league,
      league_elimination_number,
      outcomes,
      division_place,
      league_place,
      division_magic_number
    )

  al_standings_magic <- mlb_standings %>%
    filter(league == "AL") %>%
    mutate(
      division_leaders = case_when(
        division_place == 1 & division == "AL Central" ~ "C",
        division_place == 1 & division == "AL East" ~ "E",
        division_place == 1 & division == "AL West" ~ "W",
        TRUE ~ ""
      )
    ) %>%
    group_by(division_leaders) %>%
    mutate(wild_card_rank = rank(desc(win_pct), ties.method = "first")) %>%
    mutate(
      wild_cardss = ifelse(
        division_leaders == "W" |
          division_leaders == "C" |
          division_leaders == "E",
        division_leaders,
        paste("WC", wild_card_rank, sep = "")
      )
    ) %>%
    mutate(
      wild_cards = ifelse(
        wild_cardss == "WC1",
        "WC",
        ifelse(
          wild_cardss == "WC2",
          "WC",
          ifelse(
            wild_cardss == "WC3",
            "WC",
            ifelse(
              division_magic_number == "✓",
              paste(division_leaders, division_magic_number, sep = ""),
              division_leaders
            )
          )
        )
      )
    ) %>%
    ungroup() %>%
    mutate(second_wc_wins = if_else(wild_cardss == "WC3", wins, NA)) %>%
    fill(second_wc_wins, .direction = "downup") %>%
    mutate(second_wc_losses = if_else(wild_cardss == "WC3", losses, NA)) %>%
    fill(second_wc_losses, .direction = "downup") %>%
    mutate(second_wc_net_wins = second_wc_wins - second_wc_losses) %>%
    mutate(
      league_elim_number = if_else(
        wild_cards == "",
        (163 - second_wc_wins - losses),
        NA
      )
    ) %>%
    mutate(
      division_or_elim = ifelse(
        wild_cards != "",
        wild_cards,
        ifelse(league_elim_number <= 0, "—", league_elim_number)
      )
    ) %>%
    mutate(wc_games_behind = (second_wc_net_wins - net_wins) / 2) %>%
    mutate(
      wc_games_behind = ifelse(
        division_leaders == "W" |
          division_leaders == "C" |
          division_leaders == "E",
        wild_cards,
        (second_wc_net_wins - net_wins) / 2
      )
    )

  nl_standings_magic <- mlb_standings %>%
    filter(league == "NL") %>%
    mutate(
      division_leaders = case_when(
        division_place == 1 & division == "NL Central" ~ "C",
        division_place == 1 & division == "NL East" ~ "E",
        division_place == 1 & division == "NL West" ~ "W",
        TRUE ~ ""
      )
    ) %>%
    group_by(division_leaders) %>%
    mutate(wild_card_rank = rank(desc(win_pct), ties.method = "first")) %>%
    mutate(
      wild_cardss = ifelse(
        division_leaders == "W" |
          division_leaders == "C" |
          division_leaders == "E",
        division_leaders,
        paste("WC", wild_card_rank, sep = "")
      )
    ) %>%
    mutate(
      wild_cards = ifelse(
        wild_cardss == "WC1",
        "WC",
        ifelse(
          wild_cardss == "WC2",
          "WC",
          ifelse(
            wild_cardss == "WC3",
            "WC",
            ifelse(
              division_magic_number == "✓",
              paste(division_leaders, division_magic_number, sep = ""),
              division_leaders
            )
          )
        )
      )
    ) %>%
    ungroup() %>%
    mutate(second_wc_wins = if_else(wild_cardss == "WC3", wins, NA)) %>%
    fill(second_wc_wins, .direction = "downup") %>%
    mutate(second_wc_losses = if_else(wild_cardss == "WC3", losses, NA)) %>%
    fill(second_wc_losses, .direction = "downup") %>%
    mutate(second_wc_net_wins = second_wc_wins - second_wc_losses) %>%
    mutate(
      league_elim_number = if_else(
        wild_cards == "",
        (163 - second_wc_wins - losses),
        NA
      )
    ) %>%
    mutate(
      division_or_elim = ifelse(
        wild_cards != "",
        wild_cards,
        ifelse(league_elim_number <= 0, "—", league_elim_number)
      )
    ) %>%
    mutate(wc_games_behind = (second_wc_net_wins - net_wins) / 2) %>%
    mutate(
      wc_games_behind = ifelse(
        division_leaders == "W" |
          division_leaders == "C" |
          division_leaders == "E",
        wild_cards,
        (second_wc_net_wins - net_wins) / 2
      )
    )

  mlb_standings_magic <- full_join(al_standings_magic, nl_standings_magic) |>
    full_join(table)

  wild_card_table <- mlb_standings_magic %>%
    select(
      logo_url,
      team_label,
      wins,
      losses,
      win_pct,
      win_pct_text,
      games_remaining,
      wc_games_behind,
      division_or_elim,
      win_ws,
      outcomes,
      league
    ) %>%
    group_by(league) %>%
    arrange(league, desc(win_pct)) %>%
    gt() %>%
    gt_theme_espn() %>%
    gt_plt_winloss(outcomes, max_wins = 10, type = "pill", width = 15) %>%
    text_transform(
      locations = cells_body(columns = logo_url),
      fn = function(x) {
        web_image(
          url = x,
          height = px(12)
        )
      }
    ) %>%
    cols_hide(columns = c(win_pct, games_remaining)) %>% #hide until figure out new playoffs
    cols_align(
      align = c("right"),
      columns = c(
        win_pct_text,
        logo_url,
        outcomes,
        games_remaining,
        wc_games_behind,
        division_or_elim
      )
    ) %>%
    fmt_percent(
      columns = c(win_ws),
      decimals = 0,
      scale_values = FALSE
    ) |>
    data_color(
      columns = c(win_ws),
      domain = c(2.1, 100),
      na_color = "#FFFFFF",
      palette = "Reds"
    ) |>
    cols_label(
      logo_url = "",
      team_label = "Team",
      wins = "W",
      losses = "L",
      # post = "Post",
      win_ws = "Win WS",
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
    ) %>%
    opt_all_caps(all_caps = TRUE)
  wild_card_table
  better_wild_card_standings_table_html <- as_raw_html(
    wild_card_table,
    inline_css = TRUE
  )
  # better_wild_card_divs <- gsub("[#][a-z]{10}",
  #                               "#wild_card_standings_table",
  #                               x = wild_card_table_html)
  # better_wild_card_standings_table_html <- gsub("[\"][a-z]{10}",
  #                                               "\"wild_card_standings_table",
  #                                               x = better_wild_card_divs)

  # wild card interactive ----
  sorted_mlb_standings <- mlb_standings |>
    select(team_label, wins, losses, win_pct, win_pct_text, league) |>
    arrange(if_else(league == "AL", (win_pct), NA)) |>
    arrange(if_else(league == "NL", desc(win_pct), NA)) |>
    mutate(league = factor(league)) |>
    mutate(
      league = fct_relevel(
        league,
        c("AL", "NL")
      )
    ) |>
    mutate(al_win_pct = (if_else(league == "AL", (win_pct), NA))) |>
    mutate(nl_win_pct = (if_else(league == "NL", (win_pct), NA)))

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
      allowOverlap = TRUE,
      crop = FALSE,
      y = 15
    ),
    groupPadding = 0,
    pointPadding = 0,
    tooltip = list(
      headerFormat = "",
      pointFormat = "{point.team_label}:<br>{point.wins} – {point.losses}, {point.win_pct_text}"
    )
  ) |>
    hc_add_series(
      sorted_mlb_standings,
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
      hcaes(x = team_label, y = nl_win_pct, group = league),
      colorKey = "nl_win_pct",
      colorAxis = 0,
      grouping = FALSE,
      groupPadding = 0,
      pointPadding = 0,
      tooltip = list(
        headerFormat = "",
        pointFormat = "{point.team_label}:<br>{point.wins} – {point.losses}, {point.win_pct_text}"
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
    file = "interactive/mlb_team_rank.html",
    selfcontained = FALSE,
    libdir = "interactive"
  )

  # wild card net wins plot ----

  hc_al_games <- mlb_standings_magic %>%
    filter(league == "AL") %>%
    ungroup() %>%
    full_join(al_games) %>%
    group_by(team) %>%
    #fill(post, .direction = "downup") |>
    fill(division_or_elim, .direction = "downup") %>%
    #filter(post > 0) |>
    select(team, game_n, net_wins, wins, losses, win_pct_text) %>%
    group_by(team) %>%
    arrange(game_n)

  hc_nl_games <- mlb_standings_magic %>%
    filter(league == "NL") %>%
    ungroup() %>%
    full_join(nl_games) %>%
    group_by(team) %>%
    #fill(post, .direction = "downup") |>
    fill(division_or_elim, .direction = "downup") %>%
    #filter(post > 0) |>
    select(team, game_n, net_wins, wins, losses, win_pct_text) %>%
    group_by(team) %>%
    arrange(game_n)

  fig1 <- hchart(
    hc_al_games,
    "line",
    hcaes(x = game_n, y = net_wins, group = team),
    animation = FALSE,
    label = list(
      enabled = TRUE
    ),
    tooltip = list(
      pointFormat = "{point.team}: {point.wins}-{point.losses}, {point.win_pct_text}%"
    )
  ) %>%
    hc_colors(brewer.pal(12, "Paired")) %>%
    hc_legend(
      enabled = TRUE,
      align = "right",
      verticalAlign = "middle",
      layout = "vertical"
    ) %>%
    hc_title(text = "AL") %>%
    hc_yAxis(title = "", endOnTick = FALSE, startOnTick = FALSE) %>%
    hc_xAxis(title = "", max = 162) %>%
    hc_add_theme(
      hc_theme_bloom()
    )

  fig1
  saveWidget(
    widget = fig1,
    file = "interactive/al_standings.html",
    selfcontained = FALSE,
    libdir = "interactive"
  )

  fig2 <- hchart(
    hc_nl_games,
    "line",
    hcaes(x = game_n, y = net_wins, group = team),
    animation = FALSE,
    label = list(
      enabled = TRUE
    ),
    tooltip = list(
      pointFormat = "{point.team}: {point.wins}-{point.losses}, {point.win_pct_text}%"
    )
  ) %>%
    hc_colors(brewer.pal(12, "Paired")) %>%
    hc_legend(
      enabled = TRUE,
      align = "right",
      verticalAlign = "middle",
      layout = "vertical"
    ) %>%
    hc_title(text = "NL") %>%
    hc_yAxis(title = "", endOnTick = FALSE, startOnTick = FALSE) %>%
    hc_xAxis(title = "", max = 162) %>%
    hc_add_theme(
      hc_theme_bloom()
    )

  fig2
  saveWidget(
    widget = fig2,
    file = "interactive/nl_standings.html",
    selfcontained = FALSE,
    libdir = "interactive"
  )

  # web text ----
  now <- as_datetime(now())
  now_formatted <- strftime(
    x = now,
    tz = "US/Central",
    format = "%I:%M% %p CT, %B %d"
  )

  now_html <- paste(
    "<p class=\"updated_time\"> Latest data: ",
    now_formatted,
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
    " 
### Playoffs Bracket
",
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

<p class=\"updated_time\">Source: <a href=\"https://www.baseball-reference.com\">Baseball Reference</a> and <a href=\"https://kalshi.com\">Kalshi</a>.</p> 

",
    sep = ""
  )

  write_lines(web_text, "projects/baseball.md")
}
