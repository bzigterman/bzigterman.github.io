library(tidyverse)

url <- "https://cctv.travelmidwest.com/snapshots/IL-IDOTD4_5_Champaign_SEB_I-74_4015791_-8829825_1_E.jpg"
now <- now(tzone = "America/Chicago")
now_formatted <- strftime(x = now, 
                          tz = "US/Central",
                          format = "%Y-%m-%d_%H-%M")
download.file(url = url, 
              destfile = paste0("timelapse/",now_formatted,".jpg"))
