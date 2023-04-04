library(tidyverse)
library(httr)
library(jsonlite)
library(janitor)

# get data ----
get_usbr_records <- function(itemID,max_pages) {
  data_list <- list()
  
  for (page_num in 1:max_pages) {
      url <- paste0("https://data.usbr.gov/rise/api/result?itemId=",itemID,"&itemsPerPage=10000&page=",page_num)
      response <- GET(url,
                  accept("application/vnd.api+json"))
      data <- fromJSON(content(response, as = "text"),flatten = TRUE)$data
      
      if (is.null(data)) {
        break
      }
      
      data_list[[page_num]] <- data
  }
  combined_data <- do.call(rbind, data_list)|> 
    clean_names() |> 
    select(attributes_date_time, attributes_result) |> 
    mutate(date = as_date( ymd_hms(attributes_date_time))) |> 
    select(!attributes_date_time)
  
  return(combined_data)
  
}

mead_elevation <- get_usbr_records(6123,10) |> 
  mutate(elevation = attributes_result) |> 
  select(!attributes_result)
mead_volume <- get_usbr_records(6124,10)|> 
  mutate(volume = attributes_result) |> 
  select(!attributes_result)
mead_records <- full_join(mead_elevation,mead_volume) |> 
  arrange(date)

write_csv(mead_records, file = "data/mead.csv")

powell_elevation <- get_usbr_records(508,10)|> 
  mutate(elevation = attributes_result) |> 
  select(!attributes_result)
powell_volume <- get_usbr_records(509,10)|> 
  mutate(volume = attributes_result) |> 
  select(!attributes_result)
powell_records <- full_join(powell_elevation,powell_volume) |> 
  arrange(date)

write_csv(powell_records, file = "data/powell.csv")



