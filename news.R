library(tidyRSS)
library(tidyverse)
library(lubridate)

past_week <- ymd_hms(now()) - days(7)

# gather news ----

## politics ----

npr_politics <- tidyfeed("feeds.npr.org/1014/rss.xml") %>%
  select(feed_title, item_pub_date,item_title, item_link, item_description) %>%
  mutate(feed = "NPR") %>%
  mutate(utc_time = force_tz(item_pub_date, tz = "US/Eastern")) %>%
  mutate(central_time = with_tz(utc_time, tz = "America/Chicago")) %>%
  mutate(clean_time = strftime(x = central_time, 
                               tz = "US/Central",
                               format = "%I:%M% %p CT, %b. %d"))

politico_congress <- tidyfeed("http://rss.politico.com/congress.xml") %>%
  select(feed_title, item_pub_date,item_title, item_link, item_description) %>%
  mutate(feed = "Politico") %>%
  mutate(utc_time = force_tz(item_pub_date, tz = "US/Central")) %>%
  mutate(central_time = with_tz(utc_time, tz = "America/Chicago")) %>%
  mutate(clean_time = strftime(x = central_time, 
                               tz = "US/Central",
                               format = "%I:%M% %p CT, %b. %d"))

politico_politics <- tidyfeed("https://www.politico.com/rss/politicopicks.xml") %>%
  select(feed_title, item_pub_date,item_title, item_link, item_description) %>%
  filter(!grepl("magazine",item_link)) %>%
  filter(!grepl("politico.eu",item_link)) %>%
  mutate(feed = "Politico") %>%
  mutate(utc_time = force_tz(item_pub_date, tz = "US/Central")) %>%
  mutate(central_time = with_tz(utc_time, tz = "America/Chicago")) %>%
  mutate(clean_time = strftime(x = central_time, 
                               tz = "US/Central",
                               format = "%I:%M% %p CT, %b. %d"))

politico_playbook <- tidyfeed("http://rss.politico.com/playbook.xml") %>%
  select(feed_title, item_pub_date,item_title, item_link, item_description) %>%
  mutate(feed = "Politico") %>%
  mutate(utc_time = force_tz(item_pub_date, tz = "US/Central")) %>%
  mutate(central_time = with_tz(utc_time, tz = "America/Chicago")) %>%
  mutate(clean_time = strftime(x = central_time, 
                               tz = "US/Central",
                               format = "%I:%M% %p CT, %b. %d"))


politico_huddle <- tidyfeed("http://rss.politico.com/huddle.xml") %>%
  mutate(item_description = feed_description) %>%
  select(feed_title, item_pub_date,item_title, item_link, item_description) %>%
  mutate(feed = "Politico") %>%
  mutate(utc_time = force_tz(item_pub_date, tz = "US/Central")) %>%
  mutate(central_time = with_tz(utc_time, tz = "America/Chicago")) %>%
  mutate(clean_time = strftime(x = central_time, 
                               tz = "US/Central",
                               format = "%I:%M% %p CT, %b. %d"))

nyt_politics <- tidyfeed("https://rss.nytimes.com/services/xml/rss/nyt/Politics.xml") %>%
  select(feed_title, item_pub_date,item_title, item_link, item_description) %>%
  mutate(feed = "NYT") %>%
  mutate(utc_time = force_tz(item_pub_date, tz = "UTC")) %>%
  mutate(central_time = with_tz(utc_time, tz = "America/Chicago")) %>%
  mutate(clean_time = strftime(x = central_time, 
                               tz = "US/Central",
                               format = "%I:%M% %p CT, %b. %d"))

cnn_politics <- tidyfeed("http://rss.cnn.com/rss/cnn_allpolitics.rss") %>%
  select(feed_title, item_pub_date,item_title, item_link, item_description) %>%
  mutate(feed = "CNN") %>%
  mutate(utc_time = force_tz(item_pub_date, tz = "UTC")) %>%
  mutate(central_time = with_tz(utc_time, tz = "America/Chicago")) %>%
  mutate(clean_time = strftime(x = central_time, 
                               tz = "US/Central",
                               format = "%I:%M% %p CT, %b. %d"))

bloomberg_politics <- tidyfeed("https://feeds.bloomberg.com/politics/news.rss") %>%
  select(feed_title, item_pub_date,item_title, item_link, item_description) %>%
  mutate(feed = "Bloomberg") %>%
  mutate(utc_time = force_tz(item_pub_date, tz = "UTC")) %>%
  mutate(central_time = with_tz(utc_time, tz = "America/Chicago")) %>%
  mutate(clean_time = strftime(x = central_time, 
                               tz = "US/Central",
                               format = "%I:%M% %p CT, %b. %d"))

wapo_politics <- tidyfeed("http://feeds.washingtonpost.com/rss/politics") %>%
  select(feed_title, item_pub_date,item_title, item_link, item_description) %>%
  mutate(feed = "WaPo") %>%
  mutate(utc_time = force_tz(item_pub_date, tz = "US/Eastern")) %>%
  mutate(central_time = with_tz(utc_time, tz = "US/Eastern")) %>%
  mutate(clean_time = strftime(x = central_time, 
                               tz = "US/Central",
                               format = "%I:%M% %p CT, %b. %d"))

politics_news <- full_join(politico_politics, nyt_politics) %>%
  full_join(politico_playbook) %>%
  full_join(politico_huddle) %>%
  full_join(politico_congress) %>%
  full_join(npr_politics) %>%
  full_join(cnn_politics) %>%
  #full_join(bloomberg_politics) %>%
  #full_join(wapo_politics) %>%
  filter(!is.na(item_description)) %>%
  filter(central_time > past_week) %>%
  arrange(desc(central_time)) %>%
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
             politics_news$feed_plus_description[[x]],
             "\n")
  politics_news_lines = paste(politics_news_lines, line)
}
politics_news_lines 

## world ----

nyt <- tidyfeed("https://rss.nytimes.com/services/xml/rss/nyt/World.xml") %>%
  select(feed_title, item_pub_date,item_title, item_link, item_description) %>%
  mutate(feed = "NYT") %>%
  filter(!grepl("briefing",item_link)) %>%
  mutate(utc_time = force_tz(item_pub_date, tz = "UTC")) %>%
  mutate(central_time = with_tz(utc_time, tz = "America/Chicago")) %>%
  mutate(clean_time = strftime(x = central_time, 
                               tz = "US/Central",
                               format = "%I:%M% %p CT, %b. %d"))

wsj <- tidyfeed("https://feeds.a.dj.com/rss/RSSWorldNews.xml")%>%
  select(feed_title, item_pub_date,item_title, item_link, item_description)%>%
  mutate(feed = "WSJ") %>%
  mutate(utc_time = force_tz(item_pub_date, tz = "UTC")) %>%
  mutate(central_time = with_tz(utc_time, tz = "America/Chicago")) %>%
  mutate(clean_time = strftime(x = central_time, 
                               tz = "US/Central",
                               format = "%I:%M% %p CT, %b. %d"))

bbc <- tidyfeed("http://feeds.bbci.co.uk/news/world/rss.xml")%>%
  select(feed_title, item_pub_date,item_title, item_link, item_description)%>%
  mutate(feed = "BBC") %>%
  mutate(utc_time = force_tz(item_pub_date, tz = "UTC")) %>%
  mutate(central_time = with_tz(utc_time, tz = "America/Chicago")) %>%
  mutate(clean_time = strftime(x = central_time, 
                               tz = "US/Central",
                               format = "%I:%M% %p CT, %b. %d"))

npr_world <- tidyfeed("feeds.npr.org/1004/rss.xml") %>%
  select(feed_title, item_pub_date,item_title, item_link, item_description) %>%
  mutate(feed = "NPR") %>%
  mutate(utc_time = force_tz(item_pub_date, tz = "US/Eastern")) %>%
  mutate(central_time = with_tz(utc_time, tz = "America/Chicago")) %>%
  mutate(clean_time = strftime(x = central_time,
                               tz = "US/Central",
                               format = "%I:%M% %p CT, %b. %d"))


world_news <- full_join(nyt, wsj) %>%
  full_join(bbc) %>%
  full_join(npr_world) %>%
  filter(!is.na(item_description)) %>%
  filter(central_time > past_week) %>%
  arrange(desc(central_time)) %>%
  mutate(item_md_link = paste("[",item_title,"](",item_link,")",
                              sep = "")) %>%
  mutate(item_html_link = paste("<a href=\"",
                                item_link,"\">",
                                item_title,"</a>",
                                sep = "")) %>%
  mutate(feed_plus_description = paste(feed,": ",item_description,
                                       sep = "")) 

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

<details open>
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


