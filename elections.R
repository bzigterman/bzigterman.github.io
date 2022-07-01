library(tidyverse)
library(rvest)
library(readr)

results_url <- "https://ccco-results.s3.us-east-2.amazonaws.com/2022/docs/june/EL45A.HTM"
results_html <- download.file(url = results_url, destfile = "results.txt")
fwf <- read_fwf(file = "results.txt",
         fwf_cols(name = 40, total = 12, pct = 8, early = 14, mail = 14, election_day = 14),
         col_types = "cnnnnn",
         skip = 20
)
fwf_clean <- fwf %>%
  filter_all(any_vars(!is.na(.))) %>%
  filter(name != "</PRE>") %>%
  filter(!grepl("Over Votes", name)) %>%
  filter(!grepl("Under Votes", name)) %>%
  filter(!grepl("VOTE FOR", name)) %>%
  select(name, total)


