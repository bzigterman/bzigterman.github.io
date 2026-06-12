library(tidyverse)
library(rtoot)
library(scales)
library(httr)

# mastodon api setup ----
token <- Sys.getenv("RTOOT_DEFAULT_TOKEN")
verify_envvar(verbose = TRUE)

iwss_download_url <- "https://iwss.uillinois.edu/wastewater-treatment-plant/download/159/"
iwss_download <- content(GET(iwss_download_url))

# data ----

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

# variables ----

latest_date <- tail(iwss_longer, n = 1)$Date
latest_date_clean <- format(latest_date, "%b. %d")
sarscov_latest <- tail(iwss, n = 1)$sars_cov_2
influenza_a_latest <- tail(iwss, n = 1)$influenza_a
influenza_b_latest <- tail(iwss, n = 1)$influenza_b
rsv_latest <- tail(iwss, n = 1)$rsv

# chart ----

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
file <- tempfile(fileext = ".png")
ggsave(file, plot = p, device = "png", dpi = 320, width = 4, height = 4)

# make text ----

champaign_county_text <- paste(
  "More data: https://bzigterman.com/projects/wastewater",
  sep = ""
)
champaign_county_text
typeof(champaign_county_text)

# post ----
if (
  sarscov_latest >= 0 &&
    influenza_a_latest >= 0 &&
    influenza_b_latest >= 0 &&
    rsv_latest >= 0 &&
    latest_date >= now(tzone = "America/Chicago") - days(x = 14)
) {
  post_toot(
    status = champaign_county_text,
    media = file,
    alt_text = "Line charts with recent wastewater statistics for Champaign County, Illinois"
  )
}
