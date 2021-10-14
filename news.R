library(tidyRSS)
library(gt)
library(tidyverse)

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

# politico <- tidyfeed("http://rss.politico.com/politics.xml")%>%
#select(feed_title, item_pub_date,item_title, item_link, item_description)%>%
#mutate(feed = "Politico")

world_news <- full_join(nyt, wsj) %>%
  full_join(bbc) %>%
  arrange(desc(item_pub_date)) %>%
  mutate(item_md_link = paste("[",item_title,"](",item_link,")",
                              sep = "")) %>%
  mutate(feed_plus_description = paste(feed,": ",item_description,
                                       sep = "")) 


# create list ----

#x <- 1
lines <- c()
for (x in 1:nrow(world_news)) {
  line=paste("-",world_news$item_md_link[[x]], 
        world_news$feed_plus_description[[x]])
  lines = c(lines, line)
}
lines <- c(lines)

# create table ----

world_news_table <- world_news %>%
  select(item_md_link, feed_plus_description) %>%
  gt() %>%
  fmt_markdown(item_md_link) %>%
  cols_label(
    item_md_link = "",
    feed_plus_description = ""
  ) %>% 
  opt_table_lines(extent = c("none"))
world_news_table


world_news_table_html <- as_raw_html(world_news_table)


# web text ----

web_text <- paste(
  "---
layout: page
title: News River
permalink: /charts/news/
---

## World News

",world_news_table_html,"

",
sep = ""
)

write_lines(web_text,"charts/news.md")


