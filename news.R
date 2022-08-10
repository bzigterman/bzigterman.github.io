library(tidyRSS)
library(tidyverse)
library(lubridate)
library(httr)
library(rvest)

past_week <- now(tzone = "US/Central") - days(1)
past_midnight <- ymd_hms(paste(today(tzone = "US/Central"),"00:00:00")
                         ,tz = "US/Central")
past_midnight
# gather news ----

## politics ----
memeorandum_html <- read_html("https://www.memeorandum.com/feed.xml", options = "NOCDATA")

links <- memeorandum_html %>%
  html_elements("description") %>% 
  html_elements("b") %>% 
  html_elements("a") %>% 
  html_attr("href")
links
titles <- memeorandum_html %>%
  html_elements("description") %>% 
  html_elements("b") %>% 
  html_elements("a") %>% 
  html_text()
titles
pubdate <- memeorandum_html %>%
  html_elements("pubdate") %>%
  html_text() %>%
  tail(-1)
pubdate
pubdate <- memeorandum_html %>%
  html_elements("pubdate") %>%
  html_text() %>%
  tail(-1)
pubdate
publication <- memeorandum_html %>%
  html_elements("description") %>%
  html_elements("a") %>%
  html_text() 
publication <- publication[ c( FALSE, TRUE, FALSE ) ]
publication
description <- memeorandum_html %>%
  html_elements("description") %>%
  html_text() %>%
  str_replace("]]>","") %>%
  str_squish() %>%
  tail(-1)
description
memeorandum <- data.frame(
  item_title = titles,
  item_description = description,
  item_pub_date = dmy_hms( pubdate, tz = "America/New_York"),
  item_link = links,
  feed = publication
) %>%
  mutate(item_description = str_replace(item_description,item_title,""))

politics_data <- read_csv(file = "data/politics_news.csv") 
politics_news_update <- full_join(memeorandum,politics_data) %>%
  distinct(item_title,.keep_all = TRUE) %>%
  distinct(item_link,.keep_all = TRUE) %>%
  arrange(desc(item_pub_date)) %>%
  filter(item_pub_date > past_week) %>%
  filter(feed == "ABC News" |feed == "Politico" |feed == "Associated Press" |feed == "NBC News" |feed == "New York Times" |feed == "Wall Street Journal" |feed == "Los Angeles Times" |feed == "The Guardian"|feed == "Reuters"|feed == "CBS News"|feed == "CNBC"|feed == "CBS News"|feed == "BBC"|feed == "Axios"| feed == "Bloomberg"| feed == "The Economist") %>%
  filter(!grepl("opinion",item_link)) %>%
  filter(!is.na(item_description)) %>%
  filter(!grepl("Opinion",item_title, ignore.case = TRUE)) %>%
  filter(!grepl("fact check",item_title, ignore.case = TRUE)) 

write_csv(x = politics_news_update,
          file = "data/politics_news.csv")


memeorandum_feed <- politics_news_update %>%
  mutate(utc_time = force_tz(item_pub_date, tz = "US/Eastern")) %>%
  mutate(central_time = with_tz(utc_time, tz = "America/Chicago")) %>%
  mutate(clean_time = strftime(x = central_time, 
                               tz = "US/Central",
                               format = "%I:%M% %p CT")) 

politics_news <- memeorandum_feed %>%
  filter(central_time > past_week) %>%
  arrange(desc(central_time)) %>%
  mutate(item_md_link = paste("[",item_title,"](",item_link,")",
                              sep = "")) %>%
  mutate(item_html_link = paste("<a href=\"",
                                item_link,"\">",
                                item_title,"</a>",
                                sep = "")) 

politics_today <- politics_news %>%
  filter(central_time >= past_midnight)
politics_yesterday <- politics_news %>%
  filter(central_time < past_midnight)

politics_news_today <- c()
for (x in 1:nrow(politics_today)) {
  if (nrow(politics_today) > 0){
    line=paste0("<details><summary><span class=\"pub_time\">",
                politics_today$clean_time[[x]]," — ",
                politics_today$feed[[x]], 
                ":</span>",
                " ",
                politics_today$item_html_link[[x]], 
                "</summary><p>",
                politics_today$item_description[[x]],
                "</p></details>",
                "\n")
    politics_news_today = paste(politics_news_today,line)
  }}
politics_news_today 
politics_news_yesterday <- c()
for (x in 1:nrow(politics_yesterday)) {
  if (nrow(politics_yesterday) > 0){
    line=paste0("<details><summary><span class=\"pub_time\">",
                politics_yesterday$clean_time[[x]]," — ",
                politics_yesterday$feed[[x]], 
                ":</span>",
                " ",
                politics_yesterday$item_html_link[[x]], 
                "</summary><p>",
                politics_yesterday$item_description[[x]],
                "</p></details>",
                "\n")
    politics_news_yesterday = paste(politics_news_yesterday,line)
  }}
politics_news_yesterday 

politics_news_lines <- paste0(
  if(nrow(politics_today) > 0) {
    paste0("<p>",
      strftime(x = today(tzone = "US/Central"), 
               tz = "US/Central",
               format = "%B %d"),"</p>",
      politics_news_today)},
  if(nrow(politics_yesterday) >0){
    paste0("<p>",
      strftime(x = today(tzone = "US/Central")- days(1), 
               tz = "US/Central",
               format = "%B %d"),"</p>",
      politics_news_yesterday)},"\n")
politics_news_lines

## tech ----
memeorandum_html <- read_html("https://www.techmeme.com/feed.xml", options = "NOCDATA")

links <- memeorandum_html %>%
  html_elements("description") %>% 
  html_elements("b") %>% 
  html_elements("a") %>% 
  html_attr("href")
links
titles <- memeorandum_html %>%
  html_elements("description") %>% 
  html_elements("b") %>% 
  html_elements("a") %>% 
  html_text()
titles
pubdate <- memeorandum_html %>%
  html_elements("pubdate") %>%
  html_text() %>%
  tail(-1)
pubdate
pubdate <- memeorandum_html %>%
  html_elements("pubdate") %>%
  html_text() %>%
  tail(-1)
pubdate
publication <- memeorandum_html %>%
  html_elements("description") %>%
  html_elements("a") %>%
  html_text() 
publication <- publication[ c( FALSE, TRUE, FALSE ) ]
publication
description <- memeorandum_html %>%
  html_elements("description") %>%
  html_text() %>%
  str_replace("]]>","") %>%
  str_squish() %>%
  tail(-1)
description
memeorandum <- data.frame(
  item_title = titles,
  item_description = description,
  item_pub_date = dmy_hms( pubdate, tz = "America/New_York"),
  item_link = links,
  feed = publication
) %>%
  mutate(item_description = str_replace(item_description,item_title,""))

politics_data <- read_csv(file = "data/tech_news.csv", col_types = "ccTcc") 
politics_news_update <- full_join(memeorandum,politics_data) %>%
  distinct(item_title,.keep_all = TRUE) %>%
  distinct(item_link,.keep_all = TRUE) %>%
  arrange(desc(item_pub_date)) %>%
  filter(item_pub_date > past_week) %>%
  filter(feed == "Bloomberg" | feed == "The Verge" |feed == "Wall Street Journal" |feed == "9to5Mac" |feed == "MacRumors" |feed == "New York Times" |feed == "Ars Technica" |feed == "Rest of World" |feed == "The Guardian"|feed == "Reuters"|feed == "CBS News"|feed == "CNBC"|feed == "CBS News"|feed == "BBC"|feed == "TechCrunch"|feed == "Wired"|feed == "Politico"|feed == "Axios"|feed == "BBC"|feed == "CNET") %>%
  filter(!grepl("opinion",item_link)) %>%
  filter(!is.na(item_description)) %>%
  filter(!grepl("Opinion",item_title, ignore.case = TRUE)) %>%
  filter(!grepl("reports Q",item_title, ignore.case = TRUE)) %>%
  filter(!grepl("Q1",item_title, ignore.case = TRUE)) %>%
  filter(!grepl("Q2",item_title, ignore.case = TRUE)) %>%
  filter(!grepl("Q3",item_title, ignore.case = TRUE)) %>%
  filter(!grepl("Q4",item_title, ignore.case = TRUE)) %>%    
  filter(!grepl("NFT",item_title)) %>%
  filter(!grepl("revenue",item_title, ignore.case = TRUE)) %>%
  filter(!grepl("raise",item_title, ignore.case = TRUE)) %>%
  filter(!grepl("series",item_title, ignore.case = TRUE)) %>%
  filter(!grepl("crypto",item_description, ignore.case = TRUE)) %>%
  filter(!grepl("bitcoin",item_description, ignore.case = TRUE)) %>%
  filter(!grepl("blockchain",item_description, ignore.case = TRUE)) %>%
  filter(!grepl("game",item_description, ignore.case = TRUE)) 

write_csv(x = politics_news_update,
          file = "data/tech_news.csv")


memeorandum_feed <- politics_news_update %>%
  mutate(utc_time = force_tz(item_pub_date, tz = "US/Eastern")) %>%
  mutate(central_time = with_tz(utc_time, tz = "America/Chicago")) %>%
  mutate(clean_time = strftime(x = central_time, 
                               tz = "US/Central",
                               format = "%I:%M% %p CT")) 

politics_news <- memeorandum_feed %>%
  filter(central_time > past_week) %>%
  arrange(desc(central_time)) %>%
  mutate(item_md_link = paste("[",item_title,"](",item_link,")",
                              sep = "")) %>%
  mutate(item_html_link = paste("<a href=\"",
                                item_link,"\">",
                                item_title,"</a>",
                                sep = "")) 

politics_today <- politics_news %>%
  filter(central_time >= past_midnight)
politics_yesterday <- politics_news %>%
  filter(central_time < past_midnight)

politics_news_today <- c()
for (x in 1:nrow(politics_today)) {
  if (nrow(politics_today) > 0){
  line=paste0("<details><summary><span class=\"pub_time\">",
              politics_today$clean_time[[x]]," — ",
              politics_today$feed[[x]], 
              ":</span>",
              " ",
              politics_today$item_html_link[[x]], 
              "</summary><p>",
              politics_today$item_description[[x]],
              "</p></details>",
              "\n")
  politics_news_today = paste(politics_news_today,line)
}}
politics_news_today 
politics_news_yesterday <- c()
for (x in 1:nrow(politics_yesterday)) {
  if (nrow(politics_yesterday) > 0){
  line=paste0("<details><summary><span class=\"pub_time\">",
              politics_yesterday$clean_time[[x]]," — ",
              politics_yesterday$feed[[x]], 
              ":</span>",
              " ",
              politics_yesterday$item_html_link[[x]], 
              "</summary><p>",
              politics_yesterday$item_description[[x]],
              "</p></details>",
              "\n")
  politics_news_yesterday = paste(politics_news_yesterday,line)
}}
politics_news_yesterday 

tech_news_lines <- paste0(
  if(nrow(politics_today) > 0) {
    paste0("<p>",
           strftime(x = today(tzone = "US/Central"), 
                    tz = "US/Central",
                    format = "%B %d"),"</p>",
           politics_news_today)},
  if(nrow(politics_yesterday) >0){
    paste0("<p>",
           strftime(x = today(tzone = "US/Central")- days(1), 
                    tz = "US/Central",
                    format = "%B %d"),"</p>",
           politics_news_yesterday)},"\n")
tech_news_lines

# create frequency plot ----

politics_news <- politics_news %>%
  mutate(length = nchar(item_title))

ggplot(data = politics_news,
       aes(x = central_time,
           y = length)) +
  geom_smooth(fill = "blue4",
              alpha = 1,
              color = "blue4") +
  theme_void() 

ggsave("plots/news.png", bg = "white",
       width = 8, height = 8*(628/1200), dpi = 320)

# web text ----

web_text <- paste(
  "---
layout: page
title: Politics
permalink: /projects/news/politics
imageurl: https://bzigterman.com/plots/news.png
webappicon: /plots/news.png
---

  <div class=\"container\">
      {% include breadcrumbs.html %}
  </div>

",politics_news_lines,"

Thanks to [memeorandum](https://www.memeorandum.com) for the RSS feed powering this news river.

",
sep = ""
)

write_lines(web_text,"projects/news/politics.md")

web_text <- paste(
  "---
layout: page
title: Tech
permalink: /projects/news/tech
imageurl: https://bzigterman.com/plots/news.png
webappicon: /plots/news.png
---

  <div class=\"container\">
      {% include breadcrumbs.html %}
  </div>

",tech_news_lines,"

Thanks to [Techmeme](https://www.techmeme.com/about) for the RSS feed powering this news river.

",
sep = ""
)

write_lines(web_text,"projects/news/tech.md")




