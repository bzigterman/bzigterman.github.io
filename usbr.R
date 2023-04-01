library(tidyverse)
library(httr)

# get data ----

## lake mead ----
get_mead_records <- function(page) {
  url <- paste0("https://data.usbr.gov/rise/api/result?itemId=6123&itemsPerPage=10000&page=",page)
  powell <- GET(url,
                accept("application/vnd.api+json"))
  powell <- content(powell, as = "text")
  powell <-  fromJSON(powell, flatten = TRUE)
  powell <- powell$data %>%
    clean_names()
  powell_data <- powell %>%
    select(attributes_date_time, attributes_result) 
}
page_1 <- get_mead_records(1)
page_2 <- get_mead_records(2)
page_3 <- get_mead_records(3)
page_4 <- get_mead_records(4)
mead_records <- full_join(page_1,
                          page_2) %>%
  full_join(page_3) %>%
  full_join(page_4) %>%
  mutate(date = as_date( ymd_hms(attributes_date_time))) %>%
  mutate(value = attributes_result) %>%
  select(date, value) %>%
  filter(date >= ymd( "1935-06-25"))

write_csv(mead_records, file = "data/mead.csv")

## lake powell ----
get_powell_records <- function(page) {
  url <- paste0("https://data.usbr.gov/rise/api/result?itemId=508&itemsPerPage=10000&page=",page)
  powell <- GET(url,
                accept("application/vnd.api+json"))
  powell <- content(powell, as = "text")
  powell <-  fromJSON(powell, flatten = TRUE)
  powell <- powell$data %>%
    clean_names()
  powell_data <- powell %>%
    select(attributes_date_time, attributes_result) 
}
powell_1 <- get_powell_records(1)
powell_2 <- get_powell_records(2)
powell_3 <- get_powell_records(3)
powell_records <- full_join(powell_1,
                            powell_2) %>%
  full_join(powell_3) %>%
  mutate(date = as_date( ymd_hms(attributes_date_time))) %>%
  mutate(value = attributes_result) %>%
  select(date, value)

write_csv(powell_records, file = "data/powell.csv")



