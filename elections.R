library(rvest)
library(tidyverse)
library(dplyr)
library(knitr)
library(stringr)
library(gt)

# Load the raw HTML file
html_url <- "https://ccco-results.s3.us-east-2.amazonaws.com/modern/2024P_summary.HTM"
html_file <- html_url

# Read lines (already extracted <pre> if from HTML)
lines <- readLines(html_file) %>% str_trim() %>% discard(~ .x == "")

# 2. Find <pre> section (case-insensitive, handles attributes)
pre_start <- grep("<pre", lines, ignore.case = TRUE)
pre_end <- grep("</pre>", lines, ignore.case = TRUE)

if (length(pre_start) == 0 || length(pre_end) == 0) {
  stop("No <pre> section found in file.")
}

# 3. Extract and clean lines inside <pre>
pre_lines <- lines[(pre_start[1] + 1):(pre_end[1] - 1)] |>
  str_trim() |>
  discard(~ is.na(.x) || .x == "")

# Identify office headers (lines containing "(VOTE FOR)")
office_idx <- grep("\\(VOTE FOR\\)", lines)

race_list <- list()

for (i in seq_along(office_idx)) {
  office <- paste(pre_lines[office_idx[i] - 1], pre_lines[office_idx[i]]) %>%
    str_trim()

  start <- office_idx[i] + 1
  end <- ifelse(
    i < length(office_idx),
    office_idx[i + 1] - 1,
    length(pre_lines)
  )
  candidate_lines <- pre_lines[start:end] %>%
    discard(
      ~ is.na(.x) ||
        str_trim(.x) == "" ||
        str_detect(.x, "^\\s*(Over|Under) Votes")
    )
  for (cl in candidate_lines) {
    # Extract numbers (votes, percent, EV, ED, VBM, optional PROV)
    nums <- str_extract_all(cl, "[0-9,]+(?:\\.[0-9]+)?")[[1]] %>%
      str_replace_all(",", "") %>%
      as.numeric()

    # Only proceed if at least 5 numbers (Votes, Percent, EV, ED, VBM)
    if (length(nums) >= 5) {
      name <- str_remove(cl, paste0(nums[1], ".*$")) %>%
        str_remove_all("\\d") %>% # remove digits
        str_remove_all("\\.+$") %>% # remove trailing dots
        str_remove_all(",") %>% # remove commas
        str_trim()

      # Create tibble, add PROV if exists
      race_list <- append(
        race_list,
        list(
          tibble(
            Office = office,
            Candidate = name,
            Votes = round(nums[1]),
            Percent = nums[2],
            EV = nums[3],
            ED = nums[4],
            VBM = nums[5],
            PROV = ifelse(length(nums) >= 6, nums[6], NA)
          )
        )
      )
    }
  }
}

races_df <- bind_rows(race_list)


races_df

# Select only the columns you care about
race_summary <- races_df %>%
  select(Office, Candidate, Votes, Percent)

# Optionally, arrange by office and descending votes
race_summary <- race_summary %>%
  mutate(
    Candidate = Candidate %>%
      str_remove_all("\\d") %>% # remove digits
      str_remove_all("\\.+$") %>% # remove trailing dots
      str_remove_all(",") %>% # remove commas
      str_trim(), # trim whitespace
    # divide percent by 100
    Percent = Percent / 100
  ) %>%
  group_by(Office) %>%
  arrange(desc(Votes), .by_group = TRUE) %>%
  ungroup()

# Display as a nice table ----
kable(race_summary, caption = "Election Results by Race")

race_summary %>%
  gt(groupname_col = "Office") %>%
  fmt_number(
    columns = "Votes",
    decimals = 0
  ) %>%
  fmt_percent(
    columns = "Percent",
    decimals = 1
  ) %>%
  tab_header(
    title = "Election Results by Race" #,
    # subtitle = paste0(
    #  "Precincts Reporting: ",
    #      reporting_precincts,
    #     " of ",
    #    total_precincts
  )
