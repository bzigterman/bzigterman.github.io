options(install.packages.check.source = "no")

install.packages("tidyverse")
install.packages("rio")
install.packages("lubridate")
install.packages("imputeTS")
install.packages("httr")
install.packages("zoo")
install.packages("gt")
install.packages("sf", 
                 type = "mac.binary",
                 configure.args = "--with-proj-lib=/usr/local/lib/")
install.packages("RColorBrewer")
install.packages("ggforce")
install.packages("htmltools")
install.packages("cowplot")
install.packages("fredr")
install.packages("tidyRSS")
install.packages("svglite")
install.packages("htmlwidgets")
install.packages("highcharter")

install.packages("remotes")
remotes::install_github("rstudio/webshot2")
remotes::install_github("jthomasmock/gtExtras")

update.packages(ask = FALSE,
                checkBuilt = TRUE)

