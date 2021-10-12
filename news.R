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
# politico <- tidyfeed("http://rss.politico.com/politics.xml")%>%
  #select(feed_title, item_pub_date,item_title, item_link, item_description)%>%
  #mutate(feed = "Politico")

news <- full_join(nyt, wsj) %>%
  #full_join(politico) %>%
  arrange(desc(item_pub_date)) %>%
  mutate(item_md_link = paste("[",item_title,"](",item_link,")",
                              sep = "")) %>%
  mutate(feed_plus_description = paste(feed,": ",item_description,
                                       sep = "")) 


# check if new ----
# # old_news <- as_tibble(2)
# old_news <- read_csv("data/news.csv",
#                            col_types = cols())
#                              
#                           #   league = col_character(),
#                           #   team_label = col_character(),
#                           #   wins = col_number(),
#                           #   losses = col_number(),
#                           #   win_pct_text = col_character(),
#                           #   games_remaining = col_number(),
#                           #   last_ten = col_character()),
#                           # trim_ws = FALSE
#                           
# news_checker <- news %>%
#   select(item_title, feed)
#                              
#                              
# news_the_same <- all_equal(news_checker, old_news)
# 
# if (news_the_same != TRUE) { 
#   write_csv(news_checker,"data/news.csv")
# }


# create table ----

news_table <- news %>%
  select(item_md_link, feed_plus_description) %>%
  gt() %>%
  fmt_markdown(item_md_link) %>%
  cols_label(
    item_md_link = "",
    feed_plus_description = ""
  )
news_table


news_table_html <- as_raw_html(news_table)


# web text ----

web_text <- paste(
  "---
layout: page
title: News
permalink: /charts/news/
---

## World News

",news_table_html,"

",
sep = ""
)

write_lines(web_text,"charts/news.md")


