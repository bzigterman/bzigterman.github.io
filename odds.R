library(tidyverse)
library(httr)

x <- content(GET("https://gamma-api.polymarket.com/markets?tag_id=1721331249296"))
