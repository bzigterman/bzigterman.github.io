library(tidyRSS)
library(tidyverse)
library(lubridate)
library(httr)
library(rvest)

past_week <- ymd_hms(now()) - days(3)

# gather news ----

## politics ----
# memeorandum_html <- tidyfeed("https://www.memeorandum.com/feed.xml", clean_tags = FALSE) %>%
#   mutate(url = str_extract(item_description, "<A HREF=\"(.*?)\""))
# memeorandum_html$url
# memeorandum_html$item_description <- memeorandum_html$item_description %>%
#   read_html()

memeorandum <- tidyfeed("https://www.memeorandum.com/feed.xml") %>%
  select(feed_title, item_pub_date,item_title, item_link, item_description) %>%
  mutate(utc_time = force_tz(item_pub_date, tz = "US/Eastern")) %>%
  mutate(central_time = with_tz(utc_time, tz = "America/Chicago")) %>%
  mutate(clean_time = strftime(x = central_time, 
                               tz = "US/Central",
                               format = "%I:%M% %p CT, %b. %d")) %>%
  mutate(outlet1 = str_extract(item_description, "(.*?):")) %>%
  mutate(outlet2 = str_replace(outlet1, ".*(?=/)","")) %>%
  mutate(feed = str_trim(str_extract(outlet2, "[^/].[^:]*"))) %>%
  #select(feed_title, item_pub_date,item_title, item_link, item_description, feed) %>%
  filter(feed == "CNN" | feed == "ABC News" |feed == "Politico" |feed == "Associated Press" |feed == "NBC News" |feed == "New York Times" |feed == "Atlanta Journal-Constitution" |feed == "Los Angeles Times" |feed == "The Guardian"|feed == "Reuters"|feed == "CBS News"|feed == "CNBC"|feed == "CBS News"|feed == "BBC")

politics_news <- memeorandum %>%
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
                                sep = "")) %>%
  mutate(feed_plus_description = paste(feed,": ",item_description,
                                       sep = ""))

techmeme <- tidyfeed("https://www.techmeme.com/feed.xml") %>%
  select(feed_title, item_pub_date,item_title, item_link, item_description) %>%
  mutate(utc_time = force_tz(item_pub_date, tz = "US/Eastern")) %>%
  mutate(central_time = with_tz(utc_time, tz = "America/Chicago")) %>%
  mutate(clean_time = strftime(x = central_time, 
                               tz = "US/Central",
                               format = "%I:%M% %p CT, %b. %d")) %>%
  mutate(outlet1 = str_extract(item_description, "(.*?):")) %>%
  mutate(outlet2 = str_replace(outlet1, ".*(?=/)","")) %>%
  mutate(feed = str_trim(str_extract(outlet2, "[^/].[^:]*"))) %>%
  #select(feed_title, item_pub_date,item_title, item_link, item_description, feed) %>%
  filter(feed == "Bloomberg" | feed == "The Verge" |feed == "Wall Street Journal" |feed == "9to5Mac" |feed == "MacRumors" |feed == "New York Times" |feed == "Ars Technica" |feed == "Rest of World" |feed == "The Guardian"|feed == "Reuters"|feed == "CBS News"|feed == "CNBC"|feed == "CBS News"|feed == "BBC")

tech_news <- techmeme %>%
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
                                sep = "")) %>%
  mutate(feed_plus_description = paste(feed,": ",item_description,
                                       sep = ""))

### create list ----
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

### create list ----
tech_news_lines <- c()
for (x in 1:nrow(tech_news)) {
  line=paste("<p class=\"updated_time\">",
             tech_news$clean_time[[x]],
             "</p>",
             "\n",
             tech_news$item_html_link[[x]], 
             tech_news$feed_plus_description[[x]],
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

<details open>
<summary>Tech</summary>

",tech_news_lines,"

</details>


",
sep = ""
)

write_lines(web_text,"projects/news.md")


