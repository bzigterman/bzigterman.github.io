library(tidyverse)
library(magick)
library(jsonlite)

webcam_url <- "https://cctv.travelmidwest.com/snapshots/IL-IDOTD4_5_Champaign_NEB_I-57_4014275_-8828686_1_N.jpg"
json_url <- "https://www.travelmidwest.com/lmiga/cameraReport.json?path=GATEWAY.IL.I-74"
webcams_json <- fromJSON(json_url) 
webcams <- webcams_json$reportTables$cells[[1]] |> 
  unnest(cols = c(imageDirections),
         names_repair = "universal") |> 
  janitor::clean_names() |> 
  select(location, s,n,e,w) |> 
  pivot_longer(!location)  |> 
  unnest(cols = c(value)) |> 
  select(location,age,url) |> 
  drop_na() |> 
  mutate(age = as.numeric( ms(age))) |> 
  filter(url == webcam_url)

if (webcams$age < 10800) {
  animation <- image_read("timelapse/animation.gif")
  frames <- length(animation)
  new_frame <- frames+1
  latest <- image_read(url)
  updated_animation <- animation[c(1:frames,frames)]
  updated_animation[new_frame] <- latest
  
  image_write(image = updated_animation,
              path = "timelapse/animation.gif")
}



