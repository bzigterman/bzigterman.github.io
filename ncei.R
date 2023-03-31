library(tidyverse)
library(httr)

# NCEI ----
earliest <- "1902-08-01"
year_ago <- as.character(ymd(today(tzone = "America/Chicago")- days(366)))
latest <- as.character(ymd(today(tzone = "America/Chicago")))
url = paste0("https://www.ncei.noaa.gov/access/services/data/v1?dataset=daily-summaries&dataTypes=PRCP,TMAX,TMIN&stations=USC00118740&startDate=",earliest,"&endDate=",latest,"&units=standard")
ncei_GET <- GET(url)
ncei_status <- status_code(ncei_GET)
if (ncei_status == 200) {
  ncei <- content(ncei_GET)
}
empty_check <- identical(ncei$PRCP, character(0))

write_csv(ncei,
          file = "data/ncei.csv")


