install.packages("tidyverse")
install.packages("rio")
install.packages("lubridate")
install.packages("httr")
install.packages("zoo")
install.packages("gt")
install.packages("sf", configure.args = "--with-proj-lib=/usr/local/lib/")
install.packages("RColorBrewer")
install.packages("ggforce")
install.packages("htmltools")
install.packages("cowplot")
install.packages("fredr")
install.packages("tidyRSS")

install.packages("remotes")
remotes::install_github("jthomasmock/gtExtras")

update.packages(ask = FALSE,
                checkBuilt = TRUE)

