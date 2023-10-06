library(tidyverse)
library(itscalledsoccer)

asa_client <- AmericanSoccerAnalysis$new()
df <- asa_client$get_games(leagues = "mls", seasons = "2022",
                           team_ids = "1")

asa_players <- asa_client$get_players(names = "Dax")
