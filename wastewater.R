library(tidyverse)
library(httr)
library(highcharter)
library(htmlwidgets)

iwss_download_url <- "https://iwss.uillinois.edu/wastewater-treatment-plant/download/159/"
iwss_download <- content(GET(iwss_download_url))

iwss <- iwss_download %>%
  mutate(Date = ymd(sample_collect_date)) %>%
  filter(method == 1) |>
  mutate(
    sars_cov_2_avg = zoo::rollmean(
      sars_cov_2,
      k = 8,
      fill = NA,
      align = "right"
    )
  ) |>
  mutate(
    influenza_a_avg = zoo::rollmean(
      influenza_a,
      k = 8,
      fill = NA,
      align = "right"
    )
  ) |>
  mutate(
    influenza_b_avg = zoo::rollmean(
      influenza_b,
      k = 8,
      fill = NA,
      align = "right"
    )
  ) |>
  mutate(rsv_avg = zoo::rollmean(rsv, k = 8, fill = NA, align = "right"))


fig <- hchart(
  iwss,
  type = "line",
  hcaes(x = Date, y = sars_cov_2_avg),
  label = list(
    enabled = TRUE
  ),
  name = "SARS-CoV-2",
  states = list(
    inactive = list(
      enabled = FALSE
    )
  ),
  color = "#B45F06",
  yAxis = 0
) %>%
  hc_yAxis(
    title = list(text = "Gene Copies Per Liter (w/ Moving Avg.)"),
    endOnTick = FALSE,
    startOnTick = FALSE
  ) |>
  # hc_yAxis_multiples(create_axis(naxis = 2,
  #                                heights = c(1,1),
  #                                title = list(text = NULL),
  #                                endOnTick = FALSE,
  #                                startOnTick = FALSE,
  #                                max = c(NA,
  #                                        NA
  #                                ),
  #                                min = c(0,
  #                                        0
  #                                ))) %>%
  hc_add_series(
    data = iwss,
    label = list(
      enabled = TRUE
    ),
    hcaes(x = Date, y = influenza_a_avg),
    states = list(
      inactive = list(
        enabled = FALSE
      )
    ),
    name = "Influenza A",
    color = "blue",
    type = "line",
    yAxis = 0
  ) %>%
  hc_add_series(
    data = iwss,
    label = list(
      enabled = TRUE
    ),
    hcaes(x = Date, y = influenza_b_avg),
    name = "Influenza B",
    color = "purple",
    states = list(
      inactive = list(
        enabled = FALSE
      )
    ),
    type = "line",
    yAxis = 0
  ) %>%
  hc_add_series(
    data = iwss,
    zIndex = -1,
    hcaes(x = Date, y = sars_cov_2),
    states = list(
      inactive = list(
        enabled = FALSE
      )
    ),
    name = "SARS-CoV-2",
    color = "#f0dfcd",
    enableMouseTracking = FALSE,
    type = "line",
    yAxis = 0
  ) %>%
  hc_add_series(
    data = iwss,
    hcaes(x = Date, y = influenza_a),
    zIndex = -1,
    name = "Influenza A",
    enableMouseTracking = FALSE,
    color = "#e5e5ff",
    states = list(
      inactive = list(
        enabled = FALSE
      )
    ),
    type = "line",
    yAxis = 0
  ) %>%
  hc_add_series(
    data = iwss,
    zIndex = -1,
    hcaes(x = Date, y = influenza_b),
    enableMouseTracking = FALSE,
    name = "Influenza B",
    color = "#f2e5f2",
    states = list(
      inactive = list(
        enabled = FALSE
      )
    ),
    type = "line",
    yAxis = 0
  ) %>%
  hc_add_series(
    data = iwss,
    label = list(
      enabled = TRUE
    ),
    hcaes(x = Date, y = rsv_avg),
    name = "RSV",
    color = "black",
    states = list(
      inactive = list(
        enabled = FALSE
      )
    ),
    type = "line",
    yAxis = 0
  ) %>%
  hc_add_series(
    data = iwss,
    zIndex = -1,
    hcaes(x = Date, y = rsv),
    enableMouseTracking = FALSE,
    name = "RSV",
    color = "lightgray",
    states = list(
      inactive = list(
        enabled = FALSE
      )
    ),
    type = "line",
    yAxis = 0
  ) %>%
  hc_credits(
    enabled = TRUE,
    text = "Source: IWSS",
    href = "http://www.dph.illinois.gov/covid19"
  ) %>%
  hc_xAxis(title = list(text = NULL)) %>%
  hc_tooltip(shared = TRUE, valueDecimals = 0, table = TRUE, sort = TRUE) %>%
  hc_add_theme(
    hc_theme_bloom()
  ) %>%
  hc_rangeSelector(
    enabled = TRUE,
    buttons = list(
      list(type = 'month', count = 3, text = '3m'),
      list(type = 'month', count = 6, text = '6m'),
      list(type = 'month', count = 18, text = '18m'),
      #list(type = 'year', count = 2, text = '2y'),
      list(type = 'all', text = 'All')
    ),
    selected = 2
  )

fig
saveWidget(
  widget = fig,
  file = "interactive/wastewater.html",
  selfcontained = FALSE,
  libdir = "interactive"
)

# a ggplot version of the chart above, showing 18 months of data
## limit data to 18 months
iwss <- iwss_download %>%
  mutate(Date = ymd(sample_collect_date)) %>%
  filter(method == 1) |>
  mutate(
    sars_cov_2_avg = zoo::rollmean(
      sars_cov_2,
      k = 8,
      fill = NA,
      align = "right"
    )
  ) |>
  mutate(
    influenza_a_avg = zoo::rollmean(
      influenza_a,
      k = 8,
      fill = NA,
      align = "right"
    )
  ) |>
  mutate(
    influenza_b_avg = zoo::rollmean(
      influenza_b,
      k = 8,
      fill = NA,
      align = "right"
    )
  ) |>
  mutate(rsv_avg = zoo::rollmean(rsv, k = 8, fill = NA, align = "right"))
iwss_longer <- iwss |>
  select(
    sars_cov_2,
    influenza_a,
    influenza_b,
    rsv,
    Date,
    sars_cov_2_avg,
    influenza_a_avg,
    influenza_b_avg,
    rsv_avg
  ) |>
  pivot_longer(!Date) |>
  filter(
    Date > today(tzone = "America/Chicago") - period(num = 18, units = "months")
  ) |>
  mutate(contains_avg = str_detect(name, "avg")) |>
  mutate(contains_avg = if_else(contains_avg, "avg", "not_avg")) |>
  mutate(
    name = recode_factor(
      name,
      "sars_cov_2_avg" = "SARS-CoV-2",
      "influenza_a_avg" = "Influenza A",
      "influenza_b_avg" = "Influenza B",
      "rsv_avg" = "RSV"
    )
  )

all_colors <- c(
  #"#f0dfcd","#e5e5ff","#f2e5f2","lightgray",
  "#B45F06",
  "blue",
  "purple",
  "black"
)

p <- ggplot() +
  geom_line(
    data = iwss_longer |> filter(contains_avg == "not_avg"),
    aes(x = as.Date(Date), y = value, group = name),
    color = "lightgray",
    show.legend = FALSE,
    linewidth = .4,
    alpha = .75
  ) +
  geom_line(
    data = iwss_longer |> filter(contains_avg == "avg"),
    aes(x = as.Date(Date), y = value, color = name),
    linewidth = 1
  ) +
  scale_colour_manual(values = all_colors) +
  labs(caption = paste0("Latest data: ", latest_date_clean, ". Source: IWSS")) +
  xlab(NULL) +
  ylab("Gene copies per liter (moving avg.)") +
  scale_x_date(
    expand = expansion(mult = c(.01, .05)),
    # label breaks as "Apr 2026" or "Jan 2025"
    date_labels = "%b %Y"
  ) +
  scale_y_continuous(
    labels = label_number(scale_cut = cut_short_scale()),
    expand = expansion(mult = c(0, .05))
  ) +
  guides(colour = guide_legend(position = "inside")) +
  theme(
    legend.title = element_blank(),
    axis.text.y = element_text(size = 7),
    axis.title.y = element_text(size = 10, color = "grey40"),
    legend.position.inside = c(0.25, 0.75),
    legend.background = element_rect(
      fill = scales::alpha("white", 0.5),
      color = NA
    ),
    panel.grid.minor = element_blank(),
    panel.background = element_blank(),
    panel.grid.major.y = element_blank(),
    strip.background = element_blank(),
    plot.caption = element_text(size = 7, colour = "grey40")
  )
p
# save to a temp file
ggsave(
  file = "plots/wastewater.png",
  plot = p,
  device = "png",
  dpi = 320,
  width = 4,
  height = 4
)

# make web text ----
## covid ----
web_text <- paste(
  "---
layout: page
title: Wastewater
permalink: /projects/wastewater
imageurl: https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/Champaign_facet.png
---

## Champaign County Wastewater Surveillance

<iframe src=\"/interactive/wastewater.html\" width=\"100%\" height=\"400\"> 
</iframe>
<noscript>
<picture>
  <source srcset=\"{{ site.baseurl }}/plots/wastewater.png\"
          media=\"(min-width: 750px)\">
  <img src=\"{{ site.baseurl }}/plots/wastewater.png\" alt=\"\" />
</picture>
</noscript>
More information available from the [CDC](https://covid.cdc.gov/covid-data-tracker/#wastewater-surveillance) and the [Illinois Wastewater Surveillance System](https://iwss.uillinois.edu/wastewater-treatment-plant/159/).

Charts for Champaign County are posted weekly on Mastodon <a rel=\"me\" href=\"https://mastodon.social/@ChampaignCovid\">@ChampaignCovid@mastodon.social</a>.

",
  sep = ""
)

write_lines(web_text, "projects/wastewater.md")
