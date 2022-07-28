library(tidyRSS)
library(tidyverse)
library(lubridate)
library(httr)
library(rvest)

past_week <- ymd_hms(now()) - days(3)

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
  tail(-1)
description
memeorandum <- data.frame(
  item_title = titles,
  item_description = description,
  item_pub_date = dmy_hms( pubdate, tz = "America/New_York"),
  item_link = links,
  feed = publication
)

politics_data <- read_csv(file = "data/politics_news.csv") 
politics_news_update <- full_join(memeorandum,politics_data) %>%
  distinct(item_title,.keep_all = TRUE) %>%
  arrange(desc(item_pub_date)) %>%
  filter(item_pub_date > past_week)

write_csv(x = politics_news_update,
          file = "data/politics_news.csv")


memeorandum_feed <- politics_news_update %>%
  mutate(utc_time = force_tz(item_pub_date, tz = "US/Eastern")) %>%
  mutate(central_time = with_tz(utc_time, tz = "America/Chicago")) %>%
  mutate(clean_time = strftime(x = central_time, 
                               tz = "US/Central",
                               format = "%I:%M% %p CT, %b. %d")) %>%
  filter(feed == "CNN" | feed == "ABC News" |feed == "Politico" |feed == "Washington Post" |feed == "Associated Press" |feed == "NBC News" |feed == "New York Times" |feed == "Atlanta Journal-Constitution" |feed == "Los Angeles Times" |feed == "The Guardian"|feed == "Reuters"|feed == "CBS News"|feed == "CNBC"|feed == "CBS News"|feed == "BBC"|feed == "Axios") %>%
  filter(!grepl("opinion",item_link))

politics_news <- memeorandum_feed %>%
  filter(!is.na(item_description)) %>%
  filter(!grepl("Opinion",item_title)) %>%
  filter(central_time > past_week) %>%
  arrange(desc(central_time)) %>%
  distinct(item_link, .keep_all = TRUE) %>%
  mutate(item_md_link = paste("[",item_title,"](",item_link,")",
                              sep = "")) %>%
  mutate(item_html_link = paste("<a href=\"",
                                item_link,"\">",
                                item_title,"</a>",
                                sep = "")) 



politics_news_lines <- c()
for (x in 1:nrow(politics_news)) {
  line=paste("<p class=\"updated_time\">",
             politics_news$clean_time[[x]],
             "</p>",
             "\n",
             politics_news$item_html_link[[x]], 
             politics_news$item_description[[x]],
             "\n")
  politics_news_lines = paste(politics_news_lines, line)
}
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
  tail(-1)
description
memeorandum <- data.frame(
  item_title = titles,
  item_description = description,
  item_pub_date = dmy_hms( pubdate, tz = "America/New_York"),
  item_link = links,
  feed = publication
)

politics_data <- read_csv(file = "data/tech_news.csv") 
politics_news_update <- full_join(memeorandum,politics_data) %>%
  distinct(item_title,.keep_all = TRUE) %>%
  arrange(desc(item_pub_date)) %>%
  filter(item_pub_date > past_week)

write_csv(x = politics_news_update,
          file = "data/tech_news.csv")


memeorandum_feed <- politics_news_update %>%
  mutate(utc_time = force_tz(item_pub_date, tz = "US/Eastern")) %>%
  mutate(central_time = with_tz(utc_time, tz = "America/Chicago")) %>%
  mutate(clean_time = strftime(x = central_time, 
                               tz = "US/Central",
                               format = "%I:%M% %p CT, %b. %d")) %>%
  filter(feed == "Bloomberg" | feed == "The Verge" |feed == "Wall Street Journal" |feed == "9to5Mac" |feed == "MacRumors" |feed == "New York Times" |feed == "Ars Technica" |feed == "Rest of World" |feed == "The Guardian"|feed == "Reuters"|feed == "CBS News"|feed == "CNBC"|feed == "CBS News"|feed == "BBC") %>%
  filter(!grepl("opinion",item_link))

politics_news <- memeorandum_feed %>%
  filter(!is.na(item_description)) %>%
  filter(!grepl("Opinion",item_title)) %>%
  filter(central_time > past_week) %>%
  arrange(desc(central_time)) %>%
  distinct(item_link, .keep_all = TRUE) %>%
  mutate(item_md_link = paste("[",item_title,"](",item_link,")",
                              sep = "")) %>%
  mutate(item_html_link = paste("<a href=\"",
                                item_link,"\">",
                                item_title,"</a>",
                                sep = "")) 


tech_news_lines <- c()
for (x in 1:nrow(politics_news)) {
  line=paste("<p class=\"updated_time\">",
             politics_news$clean_time[[x]],
             "</p>",
             "\n",
             politics_news$item_html_link[[x]], 
             politics_news$item_description[[x]],
             "\n")
  tech_news_lines = paste(tech_news_lines, line)
}
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
title: News Rivers
permalink: /projects/news
imageurl: https://bzigterman.com/plots/news.png
webappicon: /plots/news.png
---

<details open>
<summary>Politics</summary>

",politics_news_lines,"

</details>

---

<details open>
<summary>Tech</summary>

",tech_news_lines,"

</details>


",
sep = ""
)

write_lines(web_text,"projects/news.md")


