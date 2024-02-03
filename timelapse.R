library(tidyverse)
library(magick)

url <- "https://cctv.travelmidwest.com/snapshots/IL-IDOTD4_5_Champaign_SEB_I-74_4015791_-8829825_1_E.jpg"

animation <- image_read("timelapse/animation.gif")
frames <- length(animation)
new_frame <- frames+1
latest <- image_read(url)
updated_animation <- animation[c(1:frames,frames)]
updated_animation[new_frame] <- latest

image_write(image = updated_animation,
            path = "timelapse/animation.gif")
