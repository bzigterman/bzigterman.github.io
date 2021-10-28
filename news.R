library(tidyRSS)
library(tidyverse)
library(lubridate)

past_week <- ymd_hms(now()) - days(7)


# gather news ----

## politics ----
politico_politics <- tidyfeed("http://rss.politico.com/congress.xml") %>%
  select(feed_title, item_pub_date,item_title, item_link, item_description) %>%
  mutate(feed = "Politico")
politico_playbook <- tidyfeed("http://rss.politico.com/playbook.xml") %>%
  select(feed_title, item_pub_date,item_title, item_link, item_description) %>%
  mutate(feed = "Politico")
nyt_politics <- tidyfeed("https://rss.nytimes.com/services/xml/rss/nyt/Politics.xml") %>%
  select(feed_title, item_pub_date,item_title, item_link, item_description) %>%
  mutate(feed = "NYT")


politics_news <- full_join(politico_politics, politico_playbook) %>%
  full_join(nyt_politics) %>%
  filter(item_pub_date > past_week) %>%
  arrange(desc(item_pub_date)) %>%
  mutate(item_md_link = paste("[",item_title,"](",item_link,")",
                              sep = "")) %>%
  mutate(item_html_link = paste("<a href=\"",
                                item_link,"\">",
                                item_title,"</a>",
                                sep = "")) %>%
  mutate(feed_plus_description = paste(feed,": ",item_description,
                                       sep = ""))%>%
  mutate(utc_time = force_tz(item_pub_date, tz = "UTC")) %>%
  mutate(central_time = with_tz(utc_time, tz = "America/Chicago")) %>%
  mutate(clean_time = strftime(x = central_time, 
                               tz = "US/Central",
                               format = "%I:%M% %p CT, %b. %d"))


### create list ----
politics_news_lines <- c()
for (x in 1:nrow(politics_news)) {
  line=paste("<p class=\"updated_time\">",
             politics_news$clean_time[[x]],
             "</p>",
             "\n",
             politics_news$item_html_link[[x]], 
             politics_news$feed_plus_description[[x]],
             "\n")
  politics_news_lines = paste(politics_news_lines, line)
}
politics_news_lines 

## world ----

nyt <- tidyfeed("https://rss.nytimes.com/services/xml/rss/nyt/World.xml") %>%
  select(feed_title, item_pub_date,item_title, item_link, item_description) %>%
  mutate(feed = "NYT")
wsj <- tidyfeed("https://feeds.a.dj.com/rss/RSSWorldNews.xml")%>%
  select(feed_title, item_pub_date,item_title, item_link, item_description)%>%
  mutate(feed = "WSJ")
bbc <- tidyfeed("http://feeds.bbci.co.uk/news/world/rss.xml")%>%
  select(feed_title, item_pub_date,item_title, item_link, item_description)%>%
  mutate(feed = "BBC")

world_news <- full_join(nyt, wsj) %>%
  full_join(bbc) %>%
  filter(item_pub_date > past_week) %>%
  arrange(desc(item_pub_date)) %>%
  mutate(item_md_link = paste("[",item_title,"](",item_link,")",
                              sep = "")) %>%
  mutate(item_html_link = paste("<a href=\"",
                                item_link,"\">",
                                item_title,"</a>",
                                sep = "")) %>%
  mutate(feed_plus_description = paste(feed,": ",item_description,
                                       sep = ""))%>%
  mutate(utc_time = force_tz(item_pub_date, tz = "UTC")) %>%
  mutate(central_time = with_tz(utc_time, tz = "America/Chicago")) %>%
  mutate(clean_time = strftime(x = central_time, 
                               tz = "US/Central",
                               format = "%I:%M% %p CT, %b. %d"))

### create list ----
world_news_lines <- c()
for (x in 1:nrow(world_news)) {
  line=paste("<p class=\"updated_time\">",
             world_news$clean_time[[x]],
             "</p>",
             "\n",
             world_news$item_html_link[[x]], 
             world_news$feed_plus_description[[x]],
             "\n")
  world_news_lines = paste(world_news_lines, line)
}
world_news_lines 

# web text ----

web_text <- paste(
  "---
layout: page
title: News Rivers
permalink: /projects/news/
---

<details>
<summary>World News</summary>

",world_news_lines,"

</details>

<details>
<summary>Politics</summary>

",politics_news_lines,"

</details>

",
sep = ""
)

write_lines(web_text,"projects/news.md")


