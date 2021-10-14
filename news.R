library(tidyRSS)
library(gt)
library(tidyverse)
library(lubridate)

# gather news ----

nyt <- tidyfeed("https://rss.nytimes.com/services/xml/rss/nyt/World.xml") %>%
  select(feed_title, item_pub_date,item_title, item_link, item_description) %>%
  mutate(feed = "NYT")
wsj <- tidyfeed("https://feeds.a.dj.com/rss/RSSWorldNews.xml")%>%
  select(feed_title, item_pub_date,item_title, item_link, item_description)%>%
  mutate(feed = "WSJ")
bbc <- tidyfeed("http://feeds.bbci.co.uk/news/world/rss.xml")%>%
  select(feed_title, item_pub_date,item_title, item_link, item_description)%>%
  mutate(feed = "BBC")

past_week <- ymd_hms(now()) - days(7)

world_news <- full_join(nyt, wsj) %>%
  full_join(bbc) %>%
  filter(item_pub_date > past_week) %>%
  arrange(desc(item_pub_date)) %>%
  mutate(item_md_link = paste("[",item_title,"](",item_link,")",
                              sep = "")) %>%
  mutate(feed_plus_description = paste(feed,": ",item_description,
                                       sep = ""))%>%
  mutate(utc_time = force_tz(item_pub_date, tz = "UTC")) %>%
  mutate(central_time = with_tz(utc_time, tz = "America/Chicago")) %>%
  mutate(clean_time = strftime(x = central_time, 
                               tz = "US/Central",
                               format = "%I:%M% %p CT, %b. %d"))

# create list ----
lines <- c()
for (x in 1:nrow(world_news)) {
  line=paste("<p class=\"updated_time\">",
             world_news$clean_time[[x]],
             "</p>",
             "\n",
             world_news$item_md_link[[x]], 
             world_news$feed_plus_description[[x]],
             "\n")
  lines = paste(lines, line)
}
lines 

# web text ----

web_text <- paste(
  "---
layout: page
title: News River
permalink: /charts/news/
---

## World News

",lines,"

",
sep = ""
)

write_lines(web_text,"charts/news.md")


