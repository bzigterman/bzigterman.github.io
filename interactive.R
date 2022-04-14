library(tidyverse)
library(lubridate)
library(scales)
library(fredr)
library(plotly)
library(htmlwidgets)
library(rsconnect)
library(shiny)

fredr_set_key(Sys.getenv("FRED_API_KEY"))

recent_year <- ymd((today() - years(1)))
recent_years <- ymd((today() - years(5)))
less_recent_years <- ymd((today() - years(6)))
past_ten_years <- ymd((today() - years(11)))

# usa ----

## initial unemployment claims ----
data <- fredr(series_id = "ICSA")
recent_data <- data %>%
  filter(date > recent_year) %>%
  mutate(short_date = paste(month(date, label = TRUE, abbr = TRUE),
                            day(date)))



p <- ggplot(data = data, 
            aes(x = date,
                y = value/1000000)) +
  geom_line() +
  labs(title = "Initial Unemployment Claims",
       caption = paste("Source: U.S. Census Bureau, retrieved from the St. Louis Fed. Latest data:",
                       tail(recent_data$short_date,1))) +
  xlab(NULL) +
  ylab(NULL) +
  scale_y_continuous(position = "right",
                     labels = label_comma(suffix = "M",
                                          accuracy = .1)) +
  scale_x_date(expand = expansion(mult = c(0, 0))) +
  theme_bw() +
  theme(axis.text.y = element_text(size = 10),
        axis.text.x = element_text(size = 8),
        # panel.grid.minor = element_blank(),
        # panel.background = element_blank(),
        # panel.grid.major.x = element_line(colour = "grey93"),
        panel.grid.major.y = element_line(colour = "grey93"),
        # #strip.text = element_text(size = 11),
        #strip.background = element_blank(),
        plot.caption = element_text(colour = "grey40"))

p

fig <- ggplotly(p) %>% layout(
  xaxis = list(
    rangeslider = list(type = "date"))
)
config(fig, displayModeBar = FALSE)
fig
saveWidget(widget = fig, file = "interactive/initial_claims.html")

