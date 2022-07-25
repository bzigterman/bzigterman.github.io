---
layout: post
title:  Recreating the NYT Weather Year Chart
---

I recently added a weather year chart to my Champaign weather page. It's modeled after the classic *New York Times* weather chart highlighted by Ed Tufte in his book *The Visual Display of Quantitative Information*. It's nearly identical to the NYT chart, with a few modifications. For example, it is constantly updated with the latest weather, rather than just showing last year's data. And the precipitation normals are based on a month-to-date normal, rather than just the monthly normal. This way you can compare the pace of rain throughout the month to the normal pace of rain.

## Collecting the data. 

For one of my other weather charts, I already collected historical data for Champaign, IL, back to 1888. The [Midwestern Regional Climate Center](https://mrcc.purdue.edu) had the historical data, with the highs and lows for each day, and I used `pivot_longer` to flatten the data. And since March, I've been using OpenWeather's free API to get the current temperature and append it to a CSV file.

The 1991-2020 normals for temperature and precipitation were both downloadable from the [National Centers for Environmental Information](https://www.ncei.noaa.gov/products/land-based-station/us-climate-normals).

Historical precipitation data was also downloaded from the MRCC, and hourly data is scraped from the [National Weather Service's local weather page](https://w1.weather.gov/data/obhistory/KCMI.html). 

```
willard_url <- "https://w1.weather.gov/data/obhistory/KCMI.html"
willard_html <- read_html(willard_url) %>%
  html_table()
willard <- willard_html[[4]] %>%
  tail(-2) %>%
  head(-3) %>%
  clean_names() %>%
  mutate(date = ymd_hm(paste0(year(today(tzone = "America/Chicago")),"-",
                              month((today(tzone = "America/Chicago"))),"-",
                              date,"-",
                              time_cdt),
                       tz = "America/Chicago")
  ) %>%
  mutate(precip_one_hour = as.numeric(precipitation_in)) %>%
  select(date, precip_one_hour)
```

I then compare the latest data to the previously saved data, remove duplicates and then save the data again.

```
willard_data <- read_csv(file = "data/willard_weather.csv") 
willard_data_update <- full_join(willard,willard_data) %>%
  unique() %>%
  arrange(date)
write_csv(x = willard_data_update,
          file = "data/willard_weather.csv")
```

## Tidying the data

With the data in place, I needed to calculate record highs and lows for each day of the year. First I grouped the data by month and day, and then I used the `summarise` function to calculate the records, first for the highs and then for the lows.

```
temp_history <- read_csv("data/champaign_weather.csv") %>%
  mutate(central_time = with_tz(utc_time, tzone = "America/Chicago")) 

record_maxs <- temp_history %>%
  mutate(date = date(central_time)) %>%
  mutate(month = month(date)) %>%
  mutate(day = day(date)) %>%
  group_by(month, day) %>%
  summarise(Record_max = max(temp)) %>%
  ungroup() %>%
  mutate(date = paste0(year(today(tzone = "America/Chicago")),"-",month,"-",day)) %>%
  filter(date != paste0(year(today(tzone = "America/Chicago")),"-2-29")) %>%
  mutate(date = ymd(date)) %>%
  select(date, Record_max)

record_mins <- temp_history %>%
  mutate(date = date(central_time)) %>%
  mutate(month = month(date)) %>%
  mutate(day = day(date)) %>%
  group_by(month, day) %>%
  summarise(Record_min = min(temp)) %>%
  ungroup() %>%
  mutate(date = paste0(year(today(tzone = "America/Chicago")),"-",month,"-",day)) %>%
  filter(date != paste0(year(today(tzone = "America/Chicago")),"-2-29")) %>%
  mutate(date = ymd(date)) %>%
  select(date, Record_min)

records <- full_join(record_maxs,record_mins)
```

I did roughly the same thing to calculate each day's actual highs and lows. I also filtered my data to the past 48 weeks so that there would be a bit of a gap between the current date and the data from a year ago. And because the chart updates throughout the year, I also had to convert the prior year's to the current year so that it will plot to the right of the current date.

For precipitation normals:
```
normal_monthly_precip <- read_csv("data/normals_willard.csv") %>%
  clean_names() %>%
  select(date,mtd_prcp_normal) %>%
  filter(date != "02-29") %>%
  mutate(date = ymd(paste0(year(today(tzone = "America/Chicago")),
                           "-",date))) %>%
  mutate(normal_monthly_precip = mtd_prcp_normal) %>%
  select(date, normal_monthly_precip) %>%
  mutate(month = month(date))
df_new <- as.data.frame(lapply(normal_monthly_precip, as.character), stringsAsFactors = FALSE)
df_newer <- head(do.call(rbind, by(df_new, normal_monthly_precip$month, rbind, "")), -1 ) %>%
  mutate(date = ymd(date)) %>%
  mutate(normal_monthly_precip = as.numeric(normal_monthly_precip)) %>%
  select(date,normal_monthly_precip)
```

For precipitation results: 
```
eleven_months_ago <- ceiling_date(now(tzone = "America/Chicago")-weeks(48),"month")

monthly_rain <- willard_data_updated %>%
  select(date, precip_one_hour) %>%
  filter(date > eleven_months_ago) %>%
  mutate(year = year(date)) %>%
  mutate(month = month(date)) %>%
  mutate(day = day(date)) %>%
  group_by(year, month, day) %>%
  summarise(daily_precip_total = sum(precip_one_hour,na.rm = TRUE)) %>%
  ungroup() %>%
  mutate(date = ymd(paste0(year,"-",month,"-",day))) %>%
  select(date,year, month, daily_precip_total) %>%
  group_by(year,month) %>%
  mutate(month_precip_sum = cumsum(daily_precip_total)) %>%
  ungroup() %>%
  select(date,daily_precip_total,month_precip_sum) %>%
  mutate(date = paste0(year(today(tzone = "America/Chicago")),"-",month(date),"-",day(date))) %>%
  filter(date != paste0(year(today(tzone = "America/Chicago")),"-2-29")) %>%
  mutate(date = ymd(date)) %>%
  select(date,daily_precip_total,month_precip_sum)
```

