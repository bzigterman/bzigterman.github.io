library(httr)
library(rio)
library(tidyverse)
library(lubridate)
library(zoo)
library(gt)
library(gtExtras)
library(highcharter)
library(RColorBrewer)
library(htmlwidgets)

# interactive maps ----
# hcmap("countries/us/us-all-all")
# hcmap("countries/us/us-il-all")
# 
# mapdata <- get_data_from_map(download_map_data("countries/us/us-il-all"))
# 
# glimpse(mapdata)

usa_cases_url <- "https://covid.cdc.gov/covid-data-tracker/COVIDData/getAjaxData?id=integrated_county_latest_external_data"
usa_cases <- rio::import(usa_cases_url,
                         format = "json")
usa_cases <- usa_cases$integrated_county_latest_external_data
usa_cases <- usa_cases %>%
  filter(County != "Unknown County") %>%
  filter(State_name != "Puerto Rico") %>%
  mutate(GEOID = fips_code) %>%
  mutate(fips = as.character(sprintf("%05d",fips_code))) %>%
  mutate(date = ymd(as_date(report_date))) %>%
  mutate(short_date = paste(month(date, label = TRUE, abbr = FALSE),
                            mday(date))) %>%
  mutate(new_cases = round(as.numeric(  cases_per_100K_7_day_count_change)/7))

champaign_point <- data.frame(
  name = "Champaign",
  lat = 40.116421,
  lon =-88.243385,
  z = 1
)

# fig4 <- hcmap("countries/us/us-all-all",
#               data = usa_cases,
#               value = "CCL_community_burden_level_integer",
#               joinBy = "fips",
#               nullColor = "#d3d3d3",
#               borderWidth = .1,
#               borderColor = "#787878",
#               tooltip = list(pointFormat = "{point.County}, {point.State}: {point.CCL_community_burden_level}"),
#               #dataLabels = list(enabled = TRUE, format = "{point.name}"),
#               name = "Level"
# ) %>%
#   hc_mapNavigation(enabled = TRUE) %>%
#   hc_add_series(
#     data = champaign_point,
#     type = "mappoint",
#     enableMouseTracking = FALSE,
#     dataLabels = list(enabled = TRUE, format = "{point.name}",
#                       overflow = "justify")
#   )  %>%
#   hc_title(text = "Community Levels")%>%
#   hc_caption(text = "Source: CDC") %>%
#   hc_tooltip(
#     
#   ) %>%
#   hc_colorAxis(
#     dataClasses = 
#       #   list(
#       #   from = c(-.5, .5, 1.5),
#       #   to = c(.5, 1.5, 2.5),
#       #   color = c("#99d594","#ffffbf","#fc8d59"),
#       #   name = c("Low","Medium","High")
#       # )
#       list(
#         c(from = -0.5,
#           to = 0.5,
#           color = '#99d594',
#           name = 'Low'),
#         c(from = 0.5,
#           to = 1.5,
#           color = '#ffffbf',
#           name = 'Medium'),
#         c(from = 1.5,
#           to = 2.5,
#           color = '#fc8d59',
#           name = 'High'))
#   ) %>%
#   hc_legend(
#     #floating = TRUE,
#     align = "right",
#     verticalAlign = "bottom",
#     layout = "vertical",
#     valueDecimals = 0
#   )
# fig4
# saveWidget(widget = fig4, file = "interactive/us_community_levels.html",
#            selfcontained = FALSE,
#            libdir = "interactive")


il_cases <- usa_cases %>%
  mutate(date = ymd(as_date(CCL_report_date))) %>%
  mutate(short_date = paste(month(date, label = TRUE, abbr = FALSE),
                            mday(date))) %>%
  filter(State == "IL") %>%
  mutate(
    value = round(as.numeric(  cases_per_100K_7_day_count_change)/7) ) %>%
  #mutate(value = new_cases_class) %>%
  #mutate(value = CCL_community_burden_level_integer) %>%
  select(fips, value,County) 

champaign_point <- data.frame(
  name = "Champaign",
  lat = 40.116421,
  lon =-88.243385,
  z = 1
)

fig1 <- hcmap("countries/us/us-il-all",
              data = il_cases,
              value = "value",
              joinBy = "fips",
              nullColor = "#d3d3d3",
              borderWidth = .5,
              borderColor = "#787878",
              #dataLabels = list(enabled = TRUE, format = "{point.name}"),
              name = "Per 100k"
) %>%
  hc_add_series(
    data = champaign_point,
    type = "mappoint",
    enableMouseTracking = FALSE,
    dataLabels = list(enabled = TRUE, format = "{point.name}",
                      overflow = "justify")
  )  %>%
  hc_title(text = "Avg. New Cases")%>%
  hc_credits(
    enabled = TRUE,
    text = "Source: CDC,",
    href = "https://covid.cdc.gov/covid-data-tracker/") %>%
  hc_colorAxis(
    dataClasses = color_classes(breaks = c(0,5,15,25,35,50,100,1000),
                                colors = c(brewer.pal(8,"Oranges")))
  ) %>%
  hc_legend(
    #floating = TRUE,
    align = "right",
    verticalAlign = "bottom",
    layout = "vertical",
    valueDecimals = 0
  )
fig1
saveWidget(widget = fig1, file = "interactive/il_new_cases.html",
           selfcontained = FALSE,
           libdir = "interactive")

il_community_levels <- usa_cases %>%
  mutate(date = ymd(as_date(CCL_report_date))) %>%
  mutate(short_date = paste(month(date, label = TRUE, abbr = FALSE),
                            mday(date))) %>%
  filter(State == "IL") %>%
  mutate(value = CCL_community_burden_level_integer) %>%
  #mutate(value = community_level) %>%
  select(fips, value,County,CCL_community_burden_level) 

champaign_point <- data.frame(
  name = "Champaign",
  lat = 40.116421,
  lon =-88.243385,
  z = 1
)

fig2 <- hcmap("countries/us/us-il-all",
              data = il_community_levels,
              value = "value",
              joinBy = "fips",
              nullColor = "#d3d3d3",
              borderWidth = .5,
              borderColor = "#787878",
              tooltip = list(pointFormat = "{point.name}: {point.CCL_community_burden_level}"),
              #dataLabels = list(enabled = TRUE, format = "{point.name}"),
              name = "Level"
) %>%
  hc_add_series(
    data = champaign_point,
    type = "mappoint",
    enableMouseTracking = FALSE,
    dataLabels = list(enabled = TRUE, format = "{point.name}",
                      overflow = "justify")
  )  %>%
  hc_title(text = "Community Levels")%>%
  hc_credits(
    enabled = TRUE,
    text = "Source: CDC,",
    href = "https://covid.cdc.gov/covid-data-tracker/") %>%
  hc_colorAxis(
    dataClasses = 
      #   list(
      #   from = c(-.5, .5, 1.5),
      #   to = c(.5, 1.5, 2.5),
      #   color = c("#99d594","#ffffbf","#fc8d59"),
      #   name = c("Low","Medium","High")
      # )
      list(
        c(from = -0.5,
          to = 0.5,
          color = '#99d594',
          name = 'Low'),
        c(from = 0.5,
          to = 1.5,
          color = '#ffffbf',
          name = 'Medium'),
        c(from = 1.5,
          to = 2.5,
          color = '#fc8d59',
          name = 'High'))
  ) %>%
  hc_legend(
    #floating = TRUE,
    align = "right",
    verticalAlign = "bottom",
    layout = "vertical",
    valueDecimals = 0
  )
fig2
saveWidget(widget = fig2, file = "interactive/il_community_levels.html",
           selfcontained = FALSE,
           libdir = "interactive")

il_transmission_levels <- usa_cases %>%
  mutate(date = ymd(as_date(CCL_report_date))) %>%
  mutate(short_date = paste(month(date, label = TRUE, abbr = FALSE),
                            mday(date))) %>%
  filter(State == "IL") %>%
  mutate(value = community_transmission_level_integer) %>%
  #mutate(value = community_level) %>%
  select(fips, value,County,community_transmission_level, short_date) 

champaign_point <- data.frame(
  name = "Champaign",
  lat = 40.116421,
  lon =-88.243385,
  z = 1
)

fig3 <- hcmap("countries/us/us-il-all",
              data = il_transmission_levels,
              value = "value",
              joinBy = "fips",
              nullColor = "#d3d3d3",
              borderWidth = .5,
              borderColor = "#787878",
              tooltip = list(pointFormat = "{point.name}: {point.community_transmission_level}"),
              #dataLabels = list(enabled = TRUE, format = "{point.name}"),
              name = "Level"
) %>%
  hc_add_series(
    data = champaign_point,
    type = "mappoint",
    enableMouseTracking = FALSE,
    dataLabels = list(enabled = TRUE, format = "{point.name}",
                      overflow = "justify")
  )  %>%
  hc_title(text = "Community Transmission Levels")%>%
  hc_credits(
    enabled = TRUE,
    text = "Source: CDC,",
    href = "https://covid.cdc.gov/covid-data-tracker/") %>%
  hc_colorAxis(
    dataClasses = 
      #   list(
      #   from = c(-.5, .5, 1.5),
      #   to = c(.5, 1.5, 2.5),
      #   color = c("#99d594","#ffffbf","#fc8d59"),
      #   name = c("Low","Medium","High")
      # )
      list(
        c(from = -0.5,
          to = 0.5,
          color = '#ffffd4',
          name = 'Low'),
        c(from = 0.5,
          to = 1.5,
          color = '#fed98e',
          name = 'Moderate'),
        c(from = 1.5,
          to = 2.5,
          color = '#fe9929',
          name = 'Substantial'),
        c(from = 2.5,
          to = 3.5,
          color = '#cc4c02',
          name = 'High'))
  ) %>%
  hc_legend(
    #floating = TRUE,
    align = "right",
    verticalAlign = "bottom",
    layout = "vertical",
    valueDecimals = 0
  )
fig3
saveWidget(widget = fig3, file = "interactive/il_transmission_levels.html",
           selfcontained = FALSE,
           libdir = "interactive")

## Champaign ----
### idph ----
champaignpop <- 209983

idph_cases_champaign <- rio::import("https://idph.illinois.gov/DPHPublicInformation/api/COVID/GetCountyHistorical?countyName=Champaign",
                                    format = "json") 
idph_cases_champaign <- idph_cases_champaign$values %>%
  mutate(population = champaignpop)  %>%
  mutate(new_cases = CasesChange) %>%
  mutate(new_cases = replace(new_cases, which(new_cases<0), NA)) %>%
  mutate(new_deaths = DeathsChange) %>%
  mutate(avg_new_cases = rollapply(new_cases, width = 7, FUN = mean, na.rm = TRUE, fill = NA, align = "right")) %>%
  mutate(monthlydead = rollmean(new_deaths, k = 31, 
                                fill = NA, align = "right")*31)  %>%
  mutate(Date = ymd_hms(ReportDate)) 

idph_vax_champaign <- rio::import("https://idph.illinois.gov/DPHPublicInformation/api/COVIDExport/GetVaccineAdministration?format=csv&countyName=Champaign",
                                  format = "csv") %>%
  mutate(Date = mdy_hms(Report_Date)) 


### hhs hospitalizations ----
hospitalizations_url <- "https://healthdata.gov/resource/anag-cw7u.json?zip=61801"
hospitalizations <- rio::import(hospitalizations_url,
                                format = "json") %>% 
  mutate(Date = ymd(ymd_hms(collection_week))) %>%
  mutate(total_adult = as.double(total_adult_patients_hospitalized_confirmed_and_suspected_covid_7_day_sum)) %>%
  mutate(total_pediatric = as.double(total_pediatric_patients_hospitalized_confirmed_and_suspected_covid_7_day_sum)) %>%
  select(Date,hospital_name,total_adult,total_pediatric) %>%
  pivot_longer(cols = c(total_adult,total_pediatric),
               names_to = "names",
               values_to = "values") %>%
  filter(values >= 0) 

hospitalizations_by_date <- hospitalizations %>%
  group_by(Date,hospital_name) %>%
  summarise(total = sum(values)) %>%
  group_by(Date) %>%
  summarise(sum_hospitalized = sum(total)) %>%
  mutate(avg_hospitalized = sum_hospitalized/7) %>%
  mutate(CountyName = "Champaign")

### cdc ----
cdc_champaign_url <- "https://covid.cdc.gov/covid-data-tracker/COVIDData/getAjaxData?id=integrated_county_timeseries_fips_17019_external"
cdc_champaign_data <- rio::import(
  cdc_champaign_url,
  format = "json")$integrated_county_timeseries_external_data

cdc_champaign_hosp <- cdc_champaign_data %>%
  select(date, percent_adult_inpatient_beds_used_confirmed_covid,
         percent_adult_icu_beds_used_confirmed_covid) %>%
  arrange(date) %>%
  mutate(date = ymd(date)) %>%
  mutate(Date = ymd(date))

### combined ----

idph_cases_vax_hosp <- full_join(idph_cases_champaign, idph_vax_champaign) %>%
  full_join(hospitalizations_by_date) %>%
  full_join(cdc_champaign_hosp) %>%
  mutate(Date = as_date(Date)) %>%
  select(Date, AdministeredCountRollAvg,
         monthlydead, avg_new_cases, avg_hospitalized,
         percent_adult_inpatient_beds_used_confirmed_covid,
         percent_adult_icu_beds_used_confirmed_covid) %>%
  arrange(Date) %>%
  mutate(short_date = paste(month(Date, label = TRUE, abbr = FALSE),
                            mday(Date))) %>%
  fill(avg_hospitalized, .direction = "down")



fig <- hchart(idph_cases_vax_hosp,
              type = "line", 
              hcaes(x = Date,
                    y = round(avg_new_cases)),
              name = "Avg. New Cases",
              label = list(
                enabled = TRUE),
              color = "#B45F06",
              yAxis = 0) %>%
  hc_yAxis_multiples(create_axis(naxis = 4, heights = c(1,1,1,1),
                                 title = list(text = NULL))) %>%
  hc_add_series(
    data = idph_cases_vax_hosp,
    hcaes(x = Date,
          y = monthlydead),
    label = list(
      enabled = TRUE),
    name = "Deaths in the Past Month",
    color = "black",
    type = "line",
    yAxis = 1) %>%
  hc_add_series(
    data = idph_cases_vax_hosp,
    hcaes(x = Date,
          y = AdministeredCountRollAvg),
    name = "Avg. New Vaccine Doses",
    color = "#35978f",
    label = list(
      enabled = TRUE),
    type = "line",
    yAxis = 2) %>%
  hc_add_series(
    data = idph_cases_vax_hosp,
    hcaes(x = Date,
          y = round(avg_hospitalized)),
    name = "Avg. Hospitalized",
    type = "line",
    label = list(
      enabled = TRUE),
    color = "#d90000",
    yAxis = 3) %>%
  # hc_add_series(
  #   data = idph_cases_vax_hosp,
  #   hcaes(x = Date,
  #         y = round(percent_adult_inpatient_beds_used_confirmed_covid,
  #                   digits = 1)),
  #   name = "Pct. Hosp. Beds Used",
  #   tooltip = list(valueSuffix = "%"),
  #   color = "#d90000",
  #   type = "line",
  #   label = list(
  #     enabled = TRUE),
#   yAxis = 4) %>%
# hc_add_series(
#   data = idph_cases_vax_hosp,
#   hcaes(x = Date,
#         y = round(percent_adult_icu_beds_used_confirmed_covid,
#                   digits = 1)),
#   name = "Pct. ICU Beds Used",
#   color = "#d90000",
#   tooltip = list(valueSuffix = "%"),
#   type = "line",
#   label = list(
#     enabled = TRUE),
#   yAxis = 5) %>%
#hc_title(text = "Housing Metrics") %>%
hc_credits(
  enabled = TRUE,
  text = paste("Source: CDC, HHS and IDPH. Latest data:",
               tail(idph_cases_vax_hosp$short_date,1)),
  href = "http://www.dph.illinois.gov/covid19") %>%
  hc_xAxis(title = list(text = NULL)) %>%
  hc_tooltip(shared = TRUE) %>%
  hc_add_theme(
    hc_theme_bloom()
  ) %>%
  hc_rangeSelector(enabled = TRUE,
                   buttons = list(
                     list(type = 'month', count = 3, text = '3m'),
                     list(type = 'month', count = 6, text = '6m'),
                     list(type = 'year', count = 1, text = '1y'),
                     list(type = 'year', count = 2, text = '2y'),
                     list(type = 'all', text = 'All')),
                   selected = 4)

fig
saveWidget(widget = fig, file = "interactive/champaign_covid.html",
           selfcontained = FALSE,
           libdir = "interactive")

### wastewater ----
url <- "https://covid.cdc.gov/covid-data-tracker/COVIDData/getAjaxData?id=HHS_NWSS_Concentration_Timeseries_Data"
water <- rio::import(url, format = "json")$HHS_NWSS_Concentration_Timeseries_Data %>%
  filter(key_plot_id == "NWSS_il_655_Treatment plant_raw wastewater") %>%
  arrange(date) %>%
  mutate(Date = ymd(date)) %>%
  mutate(smaller_conc = pcr_conc_smoothed/1000000000)


wastewater_url <- "https://data.cdc.gov/resource/2ew6-ywp6.csv?wwtp_id=655"
wastewater <- rio::import(wastewater_url,
                          format = "csv") %>%
  mutate(Date = ymd(date_end)) %>%
  select(Date,ptc_15d,detect_prop_15d,percentile) %>%
  arrange(Date) %>%
  mutate(short_date = paste(month(Date, label = TRUE, abbr = FALSE),
                            mday(Date))) 
wastewater_date <- tail(wastewater$short_date,1)

wastewater_plus_cases <- full_join(wastewater, idph_cases_champaign) %>%
  full_join(water) %>%
  select(Date,#ptc_15d,
         detect_prop_15d,percentile,
         avg_new_cases, smaller_conc) %>%
  arrange(Date)%>%
  filter(Date >= "2021-11-22") %>%
  mutate(Date = as_date(Date))

wastewater_plus_cases_longer <- wastewater_plus_cases %>%
  pivot_longer(!Date) %>%
  mutate(name = recode_factor(
    name, 
    "avg_new_cases" = "Avg. New Cases",
    "smaller_conc" = "Normalized SARS-CoV-2 Concentration",
    "detect_prop_15d" = "Pct. Tests Detecting SARS-CoV-2",
    "percentile" = "Percentile")) %>%
  drop_na()

fig <- hchart(wastewater_plus_cases,
              type = "line", 
              hcaes(x = Date,
                    y = round(avg_new_cases)),
              name = "Avg. New Cases",
              label = list(
                enabled = TRUE),
              color = "#B45F06",
              yAxis = 0) %>%
  hc_yAxis_multiples(create_axis(naxis = 4, heights = c(1,1,1,1),
                                 title = list(text = NULL))) %>%
  hc_add_series(
    data = wastewater_plus_cases,
    hcaes(x = Date,
          y = signif(smaller_conc, digits = 3)),
    label = list(
      enabled = TRUE),
    name = "Normalized Concentration",
    color = "black",
    type = "line",
    yAxis = 1) %>%
  hc_add_series(
    data = wastewater_plus_cases,
    hcaes(x = Date,
          y = round(detect_prop_15d, digits = 1)),
    name = "Pct. Tests Detecting SARS-CoV-2",
    color = "#35978f",
    tooltip = list(valueSuffix = "%"),
    label = list(
      enabled = TRUE),
    type = "line",
    yAxis = 2) %>%
  hc_add_series(
    data = wastewater_plus_cases,
    hcaes(x = Date,
          y = round(percentile, digits = 1)),
    name = "Percentile",
    tooltip = list(valueSuffix = "%"),
    type = "line",
    zones = list(
      c(value = 20,
        color = "#3a67a6"),
      c(value = 40,
        color = "#83b6d4"),
      c(value = 60,
        color = "#daf1f6"),
      c(value = 80,
        color = "#ff8355"),
      c(value = 100,
        color = "#d72a2a")),
    label = list(
      enabled = TRUE),
    color = "#d72a2a",
    yAxis = 3) %>%
  hc_credits(
    enabled = TRUE,
    text = paste("Source: CDC and IDPH. Latest data:",
                 tail(wastewater$short_date,1)),
    href = "http://www.dph.illinois.gov/covid19") %>%
  hc_xAxis(title = list(text = NULL)) %>%
  hc_tooltip(shared = TRUE) %>%
  hc_add_theme(
    hc_theme_bloom()
  ) %>%
  hc_rangeSelector(enabled = TRUE,
                   buttons = list(
                     list(type = 'month', count = 1, text = '1m'),
                     list(type = 'month', count = 3, text = '3m'),
                     list(type = 'month', count = 6, text = '6m'),
                     #list(type = 'year', count = 1, text = '1y'),
                     #list(type = 'year', count = 2, text = '2y'),
                     list(type = 'all', text = 'All')),
                   selected = 3) %>%
  hc_exporting(
    enabled = TRUE,
    sourceWidth = 400,
    sourceHeight = 400,
    buttons = list(
      contextButton = list(
        enabled = TRUE,
        menuItems = list("downloadPNG"),
        theme = list(
          fill = "white")
      )
    ),
    chartOptions = list(
      rangeSelector = list(
        enabled = FALSE))
  )

fig
saveWidget(widget = fig, file = "interactive/champaign_wastewater.html",
           selfcontained = FALSE,
           libdir = "interactive")

### hospitalizations ----
### hhs hospitalizations ----
hospitalizations_url <- "https://healthdata.gov/resource/anag-cw7u.json?zip=61801"
hospitalizations <- rio::import(hospitalizations_url,
                                format = "json") %>% 
  mutate(Date = ymd(ymd_hms(collection_week))) %>%
  mutate(total_adult = as.double(total_adult_patients_hospitalized_confirmed_and_suspected_covid_7_day_sum)) %>%
  mutate(total_pediatric = as.double(total_pediatric_patients_hospitalized_confirmed_and_suspected_covid_7_day_sum)) %>%
  select(Date,hospital_name,total_adult,total_pediatric) %>%
  pivot_longer(cols = c(total_adult,total_pediatric),
               names_to = "names",
               values_to = "values") %>%
  filter(values >= 0) 

hospitalizations_by_date <- hospitalizations %>%
  group_by(Date,hospital_name) %>%
  summarise(total = sum(values)) %>%
  group_by(Date) %>%
  summarise(sum_hospitalized = sum(total)) %>%
  mutate(avg_hospitalized = sum_hospitalized/7) %>%
  mutate(CountyName = "Champaign")

### cdc ----
cdc_champaign_url <- "https://covid.cdc.gov/covid-data-tracker/COVIDData/getAjaxData?id=integrated_county_timeseries_fips_17019_external"
cdc_champaign_data <- rio::import(
  cdc_champaign_url,
  format = "json")$integrated_county_timeseries_external_data

cdc_champaign_hosp <- cdc_champaign_data %>%
  select(date, percent_adult_inpatient_beds_used_confirmed_covid,
         percent_adult_icu_beds_used_confirmed_covid) %>%
  arrange(date) %>%
  mutate(date = ymd(date)) %>%
  mutate(Date = ymd(date))

### combined ----

champaign_hosp <- full_join(hospitalizations_by_date, cdc_champaign_hosp) %>%
  select(Date, avg_hospitalized,
         percent_adult_inpatient_beds_used_confirmed_covid,
         percent_adult_icu_beds_used_confirmed_covid) %>%
  arrange(Date) %>%
  fill(avg_hospitalized, .direction = "down") %>%
  mutate(short_date = paste(month(Date, label = TRUE, abbr = FALSE),
                            mday(Date)))

fig <- hchart(champaign_hosp,
              type = "line", 
              hcaes(x = Date,
                    y = round(avg_hospitalized)),
              name = "Avg. Hospitalized",
              label = list(
                enabled = TRUE),
              color = "#d90000",
              yAxis = 0) %>%
  hc_yAxis_multiples(create_axis(naxis = 3, heights = c(1,1,1),
                                 title = list(text = NULL))) %>%
hc_add_series(
  data = idph_cases_vax_hosp,
  hcaes(x = Date,
        y = round(percent_adult_inpatient_beds_used_confirmed_covid,
                  digits = 1)),
  name = "Pct. Hosp. Beds Used",
  tooltip = list(valueSuffix = "%"),
  color = "#d90000",
  type = "line",
  label = list(
    enabled = TRUE),
  yAxis = 1) %>%
hc_add_series(
  data = idph_cases_vax_hosp,
  hcaes(x = Date,
        y = round(percent_adult_icu_beds_used_confirmed_covid,
                  digits = 1)),
  name = "Pct. ICU Beds Used",
  color = "#d90000",
  tooltip = list(valueSuffix = "%"),
  type = "line",
  label = list(
    enabled = TRUE),
  yAxis = 2) %>%
hc_credits(
  enabled = TRUE,
  text = paste("Source: CDC and HHS. Latest data:",
               tail(champaign_hosp$short_date,1)),
  href = "http://www.dph.illinois.gov/covid19") %>%
  hc_xAxis(title = list(text = NULL)) %>%
  hc_tooltip(shared = TRUE) %>%
  hc_add_theme(
    hc_theme_bloom()
  ) %>%
  hc_rangeSelector(enabled = TRUE,
                   buttons = list(
                     list(type = 'month', count = 3, text = '3m'),
                     list(type = 'month', count = 6, text = '6m'),
                     list(type = 'year', count = 1, text = '1y'),
                     list(type = 'year', count = 2, text = '2y'),
                     list(type = 'all', text = 'All')),
                   selected = 4)

fig
saveWidget(widget = fig, file = "interactive/champaign_hospital.html",
           selfcontained = FALSE,
           libdir = "interactive")

# make variables ----
## Champaign County ----
### get data ----
idph_cases_champaign <- rio::import("https://idph.illinois.gov/DPHPublicInformation/api/COVID/GetCountyHistorical?countyName=Champaign",
                                    format = "json") 
idph_cases_champaign <- idph_cases_champaign$values %>%
  mutate(new_cases = CasesChange) %>%
  mutate(new_cases = replace(new_cases, which(new_cases<0), NA)) %>%
  mutate(new_deaths = DeathsChange) %>%
  mutate(avg_new_cases = rollapply(new_cases, width = 7, FUN = mean, na.rm = TRUE, fill = NA, align = "right")) %>%
  mutate(monthlydead = rollmean(new_deaths, k = 31, 
                                fill = NA, align = "right")*31)  %>%
  mutate(Date = ymd_hms(ReportDate))

idph_vax_champaign <- rio::import("https://idph.illinois.gov/DPHPublicInformation/api/COVIDExport/GetVaccineAdministration?format=csv&countyName=Champaign",
                                  format = "csv") %>%
  mutate(Date = mdy_hms(Report_Date))

## hhs hospitalizations ----
hospitalizations_url <- "https://healthdata.gov/resource/anag-cw7u.json?zip=61801"
hospitalizations <- rio::import(hospitalizations_url,
                                format = "json") %>% 
  mutate(Date = ymd(ymd_hms(collection_week))) %>%
  mutate(total_adult = as.double(total_adult_patients_hospitalized_confirmed_and_suspected_covid_7_day_sum)) %>%
  mutate(total_pediatric = as.double(total_pediatric_patients_hospitalized_confirmed_and_suspected_covid_7_day_sum)) %>%
  select(Date,hospital_name,total_adult,total_pediatric) %>%
  pivot_longer(cols = c(total_adult,total_pediatric),
               names_to = "names",
               values_to = "values") %>%
  filter(values >= 0) 

hospitalizations_by_date <- hospitalizations %>%
  group_by(Date,hospital_name) %>%
  summarise(total = sum(values)) %>%
  group_by(Date) %>%
  summarise(sum_hospitalized = sum(total)) %>%
  mutate(avg_hospitalized = sum_hospitalized/7) %>%
  mutate(CountyName = "Champaign") %>%
  mutate(Date = Date + days(7))

### set variables ----
champaign_total_deaths <- format(round(signif(tail(idph_cases_champaign$Deaths, 1),3)),big.mark = ",")
champaign_avg_hospitalized <- format(round(signif(tail(hospitalizations_by_date$avg_hospitalized,1),3)),big.mark=",")
champaign_dead_last_month <- format(round(signif(tail(idph_cases_champaign$monthlydead,1),3)),big.mark=",")
champaign_avg_new_cases <- format(round(signif(tail(idph_cases_champaign$avg_new_cases,1),3)),big.mark=",")
champaign_pct_fully_vaccinated <- round(100*tail(idph_vax_champaign$PctFullyVaccinatedPopulation,1), digits = 1)
champaign_avg_new_vaccine_doses <- 
  format(round(signif(tail(idph_vax_champaign$AdministeredCountRollAvg,1),3)),big.mark=",")
champaign_weekday <- wday(tail(idph_cases_champaign$Date,1), label = TRUE, abbr = FALSE)
champaign_month_ago_hospitalized <- 
  format(round(signif(tail(lag(hospitalizations_by_date$avg_hospitalized,2),1),3)),big.mark=",")
champaign_month_ago_deaths <- format(round(signif(tail(lag(idph_cases_champaign$monthlydead, 14),1),3)),big.mark=",")
champaign_month_ago_cases <- format(round(signif(tail(lag(idph_cases_champaign$avg_new_cases, 14),1),3)),big.mark=",")
champaign_month_ago_vaccinated <- round(100*tail(lag(idph_vax_champaign$PctFullyVaccinatedPopulation, 13),1), digits = 1)
champaign_month_ago_new_doses <- 
  format(round(signif(tail(lag(idph_vax_champaign$AdministeredCountRollAvg, 13),1),3)),big.mark=",")
champaign_case_pct_change <- round(100*(tail(idph_cases_champaign$avg_new_cases,1)-tail(lag(idph_cases_champaign$avg_new_cases, 14),1))/tail(lag(idph_cases_champaign$avg_new_cases, 14),1), digits = 0)
champaign_death_pct_change <- round(100*(tail(idph_cases_champaign$monthlydead,1)-tail(lag(idph_cases_champaign$monthlydead, 14),1))/tail(lag(idph_cases_champaign$monthlydead, 14),1), digits = 0)

champaign_case_pct_change_text <- 
  if (champaign_case_pct_change > 0) { 
    paste("+",champaign_case_pct_change,"%↑", sep = "")
  } else if (champaign_case_pct_change == 0) {
    paste("",champaign_case_pct_change,"%→", sep = "")
  } else { 
    paste("",champaign_case_pct_change,"%↓", sep = "")
  }
champaign_death_pct_change_text <- 
  if (champaign_death_pct_change > 0) { 
    paste("+",champaign_death_pct_change,"%↑", sep = "")
  } else if (champaign_death_pct_change == 0) {
    paste("",champaign_death_pct_change,"%→", sep = "")
  } else { 
    paste("",champaign_death_pct_change,"%↓", sep = "")
  }

### table ----

idph_cases_vax_hosp <- full_join(idph_cases_champaign, idph_vax_champaign) %>%
  full_join(hospitalizations_by_date) %>%
  select(Date,
         monthlydead, avg_new_cases, avg_hospitalized) %>%
  fill(avg_hospitalized, .direction = "down") 

idph_cases_vax_hosp_long <- idph_cases_vax_hosp %>%
  pivot_longer(!Date,
               values_to = "values",
               names_to = "names") %>%
  mutate(names = recode_factor(
    names, 
    "avg_new_cases" = "Cases",
    "avg_hospitalized" = "Hospitalized",
    "monthlydead" = "Monthly Deaths",
    #"AdministeredCountRollAvg" = "New Vaccine Doses",
    #"PersonsFullyVaccinated" = "Fully Vaccinated",
    #"PctFullyVaccinatedPopulation" = "Pct. Fully Vaccinated",
    .ordered = TRUE
  )) %>%
  mutate(values = signif(values, 3))

lists <- idph_cases_vax_hosp_long %>%
  group_by(names) %>%
  do(tail(na.omit(.), n = 90)) %>%
  summarise(lists = list(values)) 
add_latest_column <- idph_cases_vax_hosp_long %>%
  select(names,Date,values) %>%
  group_by(names) %>%
  do(tail(na.omit(.), n = 1)) %>%
  rename(latest = values) %>%
  full_join(lists) 

add_two_weeks_ago_column <- idph_cases_vax_hosp_long %>%
  select(names,values) %>%
  group_by(names) %>%
  do(tail(.,n = 15)) %>%
  do(head(.,n =1)) %>%
  rename(two_weeks_ago = values) %>%
  full_join(add_latest_column) %>%
  mutate(pct_change = (latest-two_weeks_ago)/two_weeks_ago)


latest_data_for_table <- add_two_weeks_ago_column

cu_covid_table <-   ungroup(latest_data_for_table) %>%
  gt() %>%
  gt_theme_espn() %>%
  # gt_sparkline(
  #   lists,
  #   line_color = "grey70",
  #   range_colors = c("blue", "red"),
  #   same_limit = FALSE
  # ) %>%
  tab_options(
    table.width = pct(100),
    data_row.padding = px(4),
    table.font.size = px(12),
    footnotes.marks = "standard",
  ) %>%
  opt_all_caps(  all_caps = TRUE) %>%
  cols_hide(columns = c(Date, lists)) %>%
  cols_move(
    columns = pct_change,
    after = latest) %>%
  fmt_number(
    columns = c(latest,two_weeks_ago),
    decimals = 0) %>%
  fmt_percent(
    columns = pct_change,
    decimals = 0,
    force_sign = TRUE
  ) %>%
  cols_align(
    align = "left",
    columns = names
  ) %>%
  cols_align(
    align = c("right"),
    columns = lists
  ) %>%
  cols_label(
    names = "",
    latest = "Latest",
    two_weeks_ago = html("14 Days<br>Ago"),
    pct_change = html("14 Day<br>Trend"),
    #lists = html("Past<br>90 Days")
  ) %>%
  tab_source_note(
    source_note = paste("Latest data:",champaign_weekday)
  ) %>%
  tab_footnote(
    footnote = paste(champaign_total_deaths," total deaths"),
    locations = cells_body(columns = names,
                           rows = 3)
  )

cu_covid_table
cu_covid_table_html <- as_raw_html(cu_covid_table, inline_css = FALSE)
better_divs_cu_covid_table <- gsub("[#][a-z]{10}",
                                   "#cu_covid_table", 
                                   x = cu_covid_table_html)
better_cu_covid_table_html <- gsub("[\"][a-z]{10}",
                                   "\"cu_covid_table",
                                   x = better_divs_cu_covid_table)



### text ----

champaign_county_text <- paste(
  "As of ",champaign_weekday," in Champaign County (vs. two weeks ago):
  
",
"- Average new cases: ",champaign_avg_new_cases," (vs. ",champaign_month_ago_cases,") ",champaign_case_pct_change_text,"
",
"- Average hospitalized: ",champaign_avg_hospitalized," (vs. ",champaign_month_ago_hospitalized,") ","
",
"- Deaths in the past month: ",champaign_dead_last_month," (vs. ",champaign_month_ago_deaths,")
",
"- Percent of Champaign County fully vaccinated: ",champaign_pct_fully_vaccinated,"% (vs. ",champaign_month_ago_vaccinated,"%)
",
"- Average new vaccine doses: ",champaign_avg_new_vaccine_doses," (vs. ",champaign_month_ago_new_doses,")",
"
",
sep = ""
)


## Illinois ----
### get data ----
idph_cases_il <- rio::import("https://idph.illinois.gov/DPHPublicInformation/api/COVID/GetCountyHistorical?countyName=Illinois",
                             format = "json") 
idph_cases_il <- idph_cases_il$values %>%
  mutate(new_cases = CasesChange) %>%
  mutate(new_cases = replace(new_cases, which(new_cases<0), NA)) %>%
  mutate(new_deaths = DeathsChange) %>%
  mutate(avg_new_cases = rollapply(new_cases, width = 7, FUN = mean, na.rm = TRUE, fill = NA, align = "right")) %>%
  mutate(avg_new_deaths = rollmean(new_deaths, k = 7, 
                                   fill = NA, align = "right"))  %>%
  mutate(Date = ymd_hms(ReportDate)) 

idph_vax_il <- rio::import("https://idph.illinois.gov/DPHPublicInformation/api/COVIDExport/GetVaccineAdministration?format=csv&countyName=Illinois",
                           format = "csv") %>%
  mutate(Date = mdy_hms(Report_Date)) 

idph_hosp <- rio::import("https://idph.illinois.gov/DPHPublicInformation/api/COVIDExport/GetHospitalUtilizationResults?format=csv",
                         format = "csv") %>%
  mutate(Date = ymd(mdy_hms(ReportDate))) %>%
  select(Date, TotalInUseBedsCOVID)




cdc_il_data_url <- "https://covid.cdc.gov/covid-data-tracker/COVIDData/getAjaxData?id=us_trend_by_IL"
cdc_il_data <- rio::import(cdc_il_data_url, format = "json")$us_trend_by_Geography
cdc_il_new_deaths <- cdc_il_data %>%
  select(date,seven_day_avg_new_deaths) %>%
  mutate(date = mdy(date)) %>%
  mutate(avg_new_deaths = seven_day_avg_new_deaths) %>%
  select(date,avg_new_deaths)

cdc_il_new_cases <- cdc_il_data %>%
  select(date,seven_day_avg_new_cases) %>%
  mutate(date = mdy(date)) %>%
  mutate(avg_new_cases = seven_day_avg_new_cases) %>%
  select(date,avg_new_cases)

cdc_il_hosp <- cdc_il_data %>%
  select(date,sum_inpatient_beds_used_covid_7DayAvg) %>%
  mutate(date = mdy(date)) %>%
  mutate(hosp_patients = sum_inpatient_beds_used_covid_7DayAvg) %>%
  select(date,hosp_patients)

cdc_il_vax <- cdc_il_data %>%
  select(date,Administered_7_Day_Rolling_Average) %>%
  mutate(date = mdy(date)) %>%
  mutate(daily_vaccinations = Administered_7_Day_Rolling_Average) %>%
  select(date,daily_vaccinations)


cdc_il_joined <- full_join(cdc_il_new_cases, cdc_il_vax) %>%
  full_join(cdc_il_hosp) %>%
  full_join(cdc_il_new_deaths) %>%
  select(date, daily_vaccinations,
         avg_new_deaths, avg_new_cases, hosp_patients) %>%
  fill(hosp_patients,.direction = "down")

cdc_il_longer <- cdc_il_joined %>%
  pivot_longer(!date,
               values_to = "values",
               names_to = "names") %>%
  mutate(names = recode_factor(names, 
                               "avg_new_cases" = "Average New Cases",
                               "hosp_patients" = "Hospitalized",     
                               "avg_new_deaths" = "Average New Deaths",
                               "daily_vaccinations" = "Average New Vaccine Doses"))  %>%
  mutate(short_date = paste(month(date, label = TRUE, abbr = FALSE),
                            mday(date))) 



### set variables ----
il_hosp <- format(round(signif(tail(cdc_il_joined$hosp_patients,1),3)),big.mark=",") 
il_avg_new_deaths <- format(round(signif(tail(cdc_il_joined$avg_new_deaths,1),3)),big.mark=",")
il_avg_new_cases <- format(round(signif(tail(cdc_il_joined$avg_new_cases,1),3)),big.mark=",")
# il_pct_fully_vaccinated <- round(100*tail(idph_vax_il$PctFullyVaccinatedPopulation,1), digits = 1)
il_avg_new_vaccine_doses <- format(round(signif(tail(cdc_il_joined$daily_vaccinations,1),3)),big.mark=",")
il_weekday <- wday(tail(cdc_il_joined$date,1), label = TRUE, abbr = FALSE)
il_month_ago_avg_new_deaths <- format(round(signif(tail(lag(cdc_il_joined$avg_new_deaths, 14),1),3)),big.mark=",")
il_month_ago_hosp <- format(round(signif(tail(lag(cdc_il_joined$hosp_patients, 13),1),3)),big.mark=",")
il_month_ago_cases <- format(round(signif(tail(lag(cdc_il_joined$avg_new_cases, 14),1),3)),big.mark=",")
# il_month_ago_vaccinated <- round(100*tail(lag(idph_vax_il$PctFullyVaccinatedPopulation, 13),1), digits = 1)
il_month_ago_new_doses <- format(round(signif(tail(lag(cdc_il_joined$daily_vaccinations, 13),1),3)),big.mark=",")

il_case_pct_change <- round(100*(tail(cdc_il_joined$avg_new_cases,1)-tail(lag(cdc_il_joined$avg_new_cases, 14),1))/tail(lag(cdc_il_joined$avg_new_cases, 14),1), digits = 0)
il_death_pct_change <- round(100*(tail(cdc_il_joined$avg_new_deaths,1)-tail(lag(cdc_il_joined$avg_new_deaths, 14),1))/tail(lag(cdc_il_joined$avg_new_deaths, 14),1), digits = 0)
il_hosp_pct_change <- round(100*(tail(cdc_il_joined$hosp_patients,1)-tail(lag(cdc_il_joined$hosp_patients, 13),1))/tail(lag(cdc_il_joined$hosp_patients, 13),1), digits = 0)

il_case_pct_change_text <- 
  if (il_case_pct_change > 0) { 
    paste("+",il_case_pct_change,"%↑", sep = "")
  } else if (il_case_pct_change == 0) { 
    paste("",il_case_pct_change,"%→", sep = "")
  } else {
    paste("",il_case_pct_change,"%↓", sep = "")
  }

il_death_pct_change_text <- 
  if (il_death_pct_change > 0) { 
    paste("+",il_death_pct_change,"%↑", sep = "")
  } else if (il_death_pct_change == 0) {
    paste("",il_death_pct_change,"%→", sep = "")
  } else { 
    paste("",il_death_pct_change,"%↓", sep = "")
  }

il_hosp_pct_change_text <- 
  if (il_hosp_pct_change > 0) { 
    paste("+",il_hosp_pct_change,"%↑", sep = "")
  } else if (il_hosp_pct_change == 0) {
    paste("",il_hosp_pct_change,"%→", sep = "")
  } else { 
    paste("",il_hosp_pct_change,"%↓", sep = "")
  }

### table ----

# il_combined <- full_join(idph_cases_il, idph_vax_il) %>%
#   full_join(idph_hosp) %>%
#   select(Date,
#          avg_new_deaths, avg_new_cases, TotalInUseBedsCOVID, 
#          AdministeredCountRollAvg,
#          PersonsFullyVaccinated,
#          PctFullyVaccinatedPopulation) %>%
#   mutate(PctFullyVaccinatedPopulation = PctFullyVaccinatedPopulation*100) %>%
#   fill(TotalInUseBedsCOVID, .direction = "down") %>%
#   fill(AdministeredCountRollAvg, .direction = "down") %>%
#   fill(PersonsFullyVaccinated, .direction = "down") %>%
#   fill(PctFullyVaccinatedPopulation, .direction = "down")
# 
# il_combined_longer <- il_combined %>%
#   pivot_longer(!Date,
#                values_to = "values",
#                names_to = "names") %>%
#   mutate(names = recode_factor(
#     names, 
#     "avg_new_cases" = "Cases",
#     "TotalInUseBedsCOVID" = "Hospitalized",
#     "avg_new_deaths" = "Deaths",
#     "AdministeredCountRollAvg" = "New Vaccine Doses",
#     "PersonsFullyVaccinated" = "Fully Vaccinated",
#     "PctFullyVaccinatedPopulation" = "Pct. Fully Vaccinated",
#     .ordered = TRUE
#   )) %>%
#   mutate(values = signif(values, 3))

lists <- cdc_il_longer %>%
  group_by(names) %>%
  do(tail(na.omit(.), n = 90)) %>%
  summarise(lists = list(values)) 
add_latest_column <- cdc_il_longer %>%
  select(names,date,values) %>%
  group_by(names) %>%
  do(tail(na.omit(.), n = 1)) %>%
  rename(latest = values) %>%
  full_join(lists) 

add_two_weeks_ago_column <- cdc_il_longer %>%
  select(names,values) %>%
  group_by(names) %>%
  do(tail(.,n = 15)) %>%
  do(head(.,n =1)) %>%
  rename(two_weeks_ago = values) %>%
  full_join(add_latest_column) %>%
  mutate(pct_change = (latest-two_weeks_ago)/two_weeks_ago)


latest_data_for_table <- add_two_weeks_ago_column

il_table <- ungroup(latest_data_for_table) %>%
  gt() %>%
  gt_theme_espn() %>%
  # gt_sparkline(
  #   column = lists,
  #              line_color = "grey70",
  #              range_colors = c("blue", "red"), 
  #              same_limit = FALSE
  # ) %>%
  tab_options(
    table.width = pct(100),
    data_row.padding = px(4),
    table.font.size = px(12)
  ) %>%
  opt_all_caps(  all_caps = TRUE) %>%
  cols_hide(columns = c(date, lists)) %>%
  cols_move(
    columns = pct_change,
    after = latest) %>%
  fmt_number(
    columns = c(latest,two_weeks_ago),
    decimals = 0,
    suffixing = TRUE) %>%
  fmt_percent(
    columns = pct_change,
    decimals = 0,
    force_sign = TRUE
  ) %>%
  cols_align(
    align = "left",
    columns = names
  ) %>%
  cols_align(
    align = c("right"),
    columns = lists
  ) %>%
  cols_label(
    names = "",
    latest = "Latest",
    two_weeks_ago = html("14 Days<br>Ago"),
    pct_change = html("14 Day<br>Trend"),
    #lists = html("Past<br>90 Days")
  ) %>%
  tab_source_note(
    source_note = paste("Latest data:",il_weekday)
  ) 

il_table
il_table_html <- as_raw_html(il_table, inline_css = FALSE)
better_divs_il_table <- gsub("[#][a-z]{10}",
                             "#il_table", 
                             x = il_table_html)
better_il_table_html <- gsub("[\"][a-z]{10}",
                             "\"il_table",
                             x = better_divs_il_table)



### text ----

## USA ----

### get data ----
#### cases ----
usa_jhu_new_cases_url <- "https://github.com/owid/covid-19-data/raw/master/public/data/jhu/new_cases.csv"
usa_jhu_new_cases <- rio::import(usa_jhu_new_cases_url, format = "csv") %>%
  select(date,"United States") %>%
  rename(new_cases = "United States") %>%
  mutate(avg_new_cases = rollmean(new_cases, k = 7, 
                                  fill = NA, align = "right")) %>%
  drop_na()

#### hospitalizations ----
owid_hosp_url <- "https://covid.ourworldindata.org/data/owid-covid-data.csv"
owid_hosp <- rio::import(owid_hosp_url, format = "csv") %>%
  filter(iso_code == "USA") %>%
  select(date, hosp_patients) %>%
  drop_na()

#### deaths ----
usa_jhu_new_deaths_url <- "https://github.com/owid/covid-19-data/raw/master/public/data/jhu/new_deaths.csv"
usa_jhu_new_deaths <- rio::import(usa_jhu_new_deaths_url, format = "csv") %>%
  select(date,"United States") %>%
  rename(new_deaths = "United States") %>%
  mutate(avg_new_deaths = rollmean(new_deaths, k = 7, 
                                   fill = NA, align = "right"))%>%
  drop_na()

#### vaccines ----
usa_owid_vaccines_url <- "https://github.com/owid/covid-19-data/raw/master/public/data/vaccinations/vaccinations.csv"
usa_owid_vaccines <- rio::import(usa_owid_vaccines_url, format = "csv") %>%
  filter(iso_code == "USA") %>%
  select(date, people_fully_vaccinated,daily_vaccinations,
         people_fully_vaccinated_per_hundred) %>%
  fill(people_fully_vaccinated_per_hundred, .direction = "down")



cdc_usa_data_url <- "https://covid.cdc.gov/covid-data-tracker/COVIDData/getAjaxData?id=us_trend_by_USA"
cdc_usa_data <- rio::import(cdc_usa_data_url, format = "json")$us_trend_by_Geography
cdc_new_deaths <- cdc_usa_data %>%
  select(date,seven_day_avg_new_deaths) %>%
  mutate(date = mdy(date)) %>%
  mutate(avg_new_deaths = seven_day_avg_new_deaths) %>%
  select(date,avg_new_deaths)

cdc_new_cases <- cdc_usa_data %>%
  select(date,seven_day_avg_new_cases) %>%
  mutate(date = mdy(date)) %>%
  mutate(avg_new_cases = seven_day_avg_new_cases) %>%
  select(date,avg_new_cases)

cdc_hosp <- cdc_usa_data %>%
  select(date,sum_inpatient_beds_used_covid_7DayAvg) %>%
  mutate(date = mdy(date)) %>%
  mutate(hosp_patients = sum_inpatient_beds_used_covid_7DayAvg) %>%
  select(date,hosp_patients)

cdc_vax <- cdc_usa_data %>%
  select(date,Administered_7_Day_Rolling_Average) %>%
  mutate(date = mdy(date)) %>%
  mutate(daily_vaccinations = Administered_7_Day_Rolling_Average) %>%
  select(date,daily_vaccinations)


### set variables ----
usa_hosp <- format(round(signif(tail(owid_hosp$hosp_patients,1),3)),big.mark=",")
usa_avg_new_deaths <- format(round(signif(tail(usa_jhu_new_deaths$avg_new_deaths,1),3)),big.mark=",")
usa_avg_new_cases <- format(round(signif(tail(usa_jhu_new_cases$avg_new_cases,1),3)),big.mark=",")
usa_pct_fully_vaccinated <- round(tail(usa_owid_vaccines$people_fully_vaccinated_per_hundred,1), digits = 1)
usa_avg_new_vaccine_doses <- format(signif(tail(usa_owid_vaccines$daily_vaccinations,1),3),big.mark=",")
usa_weekday <- wday(tail(cdc_new_cases$date,1), label = TRUE, abbr = FALSE)
usa_month_ago_avg_new_deaths <- format(round(signif(tail(lag(usa_jhu_new_deaths$avg_new_deaths, 14),1),3)),big.mark=",")
usa_month_ago_hosp <- format(round(signif(tail(lag(owid_hosp$hosp_patients,13),1),3)),big.mark=",")
usa_month_ago_cases <- format(round(signif(tail(lag(usa_jhu_new_cases$avg_new_cases, 14),1),3)),big.mark=",")
usa_month_ago_vaccinated <- round(tail(lag(usa_owid_vaccines$people_fully_vaccinated_per_hundred, 14),1), digits = 1)
usa_month_ago_new_doses <- format(signif(tail(lag(usa_owid_vaccines$daily_vaccinations, 14),1),3),big.mark=",")

usa_case_pct_change <- round(100*(tail(usa_jhu_new_cases$avg_new_cases,1)-tail(lag(usa_jhu_new_cases$avg_new_cases, 14),1))/tail(lag(usa_jhu_new_cases$avg_new_cases, 14),1), digits = 0)
usa_death_pct_change <- round(100*(tail(usa_jhu_new_deaths$avg_new_deaths,1)-tail(lag(usa_jhu_new_deaths$avg_new_deaths, 14),1))/tail(lag(usa_jhu_new_deaths$avg_new_deaths, 14),1), digits = 0)
usa_hosp_pct_change <- round(100*(tail(owid_hosp$hosp_patients,1)-tail(lag(owid_hosp$hosp_patients, 13),1))/tail(lag(owid_hosp$hosp_patients, 13),1), digits = 0)


usa_case_pct_change_text <- 
  if (usa_case_pct_change > 0) { 
    paste("+",usa_case_pct_change,"%↑", sep = "")
  } else if (usa_case_pct_change == 0) {
    paste("",usa_case_pct_change,"%→", sep = "")
  } else { 
    paste("",usa_case_pct_change,"%↓", sep = "")
  }
usa_death_pct_change_text <- 
  if (usa_death_pct_change > 0) { 
    paste("+",usa_death_pct_change,"%↑", sep = "")
  } else if (usa_death_pct_change == 0) {
    paste("",usa_death_pct_change,"%→", sep = "")
  } else { 
    paste("",usa_death_pct_change,"%↓", sep = "")
  }
usa_hosp_pct_change_text <- 
  if (usa_hosp_pct_change > 0) { 
    paste("+",usa_hosp_pct_change,"%↑", sep = "")
  } else if (usa_hosp_pct_change == 0) {
    paste("",usa_hosp_pct_change,"%→", sep = "")
  } else { 
    paste("",usa_hosp_pct_change,"%↓", sep = "")
  }



### table ----
usa_combined <- full_join(cdc_new_cases,cdc_hosp) %>%
  full_join(cdc_new_deaths) %>%
  full_join(cdc_vax) %>%
  select(date,hosp_patients, avg_new_deaths, avg_new_cases,
         #people_fully_vaccinated,
         #people_fully_vaccinated_per_hundred,
         daily_vaccinations
  ) %>%
  fill(hosp_patients, .direction = "down") 
#usa_combined$people_fully_vaccinated <- as.numeric(usa_combined$people_fully_vaccinated)

#usa_combined <- usa_combined %>%
#  fill(people_fully_vaccinated, .direction = "down")

usa_combined_longer <- usa_combined %>%
  pivot_longer(!date,
               values_to = "values",
               names_to = "names") %>%
  mutate(names = recode_factor(
    names, 
    "avg_new_cases" = "Cases",
    "hosp_patients" = "Hospitalized",
    "avg_new_deaths" = "Deaths",
    "daily_vaccinations" = "New Vaccine Doses",
    #"people_fully_vaccinated" = "Fully Vaccinated",
    #"people_fully_vaccinated_per_hundred" = "Pct. Fully Vaccinated",
    .ordered = TRUE
  )) %>%
  mutate(values = signif(values, 3))

lists <- usa_combined_longer %>%
  group_by(names) %>%
  do(tail(na.omit(.), n = 90)) %>%
  summarise(lists = list(values)) 
add_latest_column <- usa_combined_longer %>%
  select(names,date,values) %>%
  group_by(names) %>%
  do(tail(na.omit(.), n = 1)) %>%
  rename(latest = values) %>%
  full_join(lists) 

add_two_weeks_ago_column <- usa_combined_longer %>%
  select(names,values) %>%
  group_by(names) %>%
  do(tail(.,n = 15)) %>%
  do(head(.,n =1)) %>%
  rename(two_weeks_ago = values) %>%
  full_join(add_latest_column) %>%
  mutate(pct_change = (latest-two_weeks_ago)/two_weeks_ago)


latest_data_for_table <- add_two_weeks_ago_column

usa_table <- ungroup(latest_data_for_table) %>%
  gt() %>%
  gt_theme_espn() %>%
  # gt_sparkline(
  #   lists,
  #              line_color = "grey70",
  #              range_colors = c("blue", "red"),
  #              same_limit = FALSE
  # ) %>%
  tab_options(
    table.width = pct(100),
    data_row.padding = px(4),
    table.font.size = px(12)
  ) %>%
  opt_all_caps(  all_caps = TRUE) %>%
  cols_hide(columns = c(date, lists)) %>%
  cols_move(
    columns = pct_change,
    after = latest) %>%
  fmt_number(
    columns = c(latest,two_weeks_ago),
    decimals = 0,
    suffixing = TRUE) %>%
  fmt_percent(
    columns = pct_change,
    decimals = 0,
    force_sign = TRUE
  ) %>%
  cols_align(
    align = "left",
    columns = names
  ) %>%
  cols_align(
    align = c("right"),
    columns = lists
  ) %>%
  cols_label(
    names = "",
    latest = "Latest",
    two_weeks_ago = html("14 Days<br>Ago"),
    pct_change = html("14 Day<br>Trend"),
    # lists = html("Past<br>90 Days")
  ) %>%
  tab_source_note(
    source_note = paste("Latest data:",usa_weekday)
  ) 

usa_table
usa_table_html <- as_raw_html(usa_table, inline_css = FALSE)
better_divs_usa_table <- gsub("[#][a-z]{10}",
                              "#usa_table", 
                              x = usa_table_html)
better_usa_table_html <- gsub("[\"][a-z]{10}",
                              "\"usa_table",
                              x = better_divs_usa_table)



### text ----

usa_text <- paste(
  "As of ",usa_weekday," in the United States (vs. two weeks ago):
  
",
"- Average new cases: ",usa_avg_new_cases," (vs. ",usa_month_ago_cases,") ",usa_case_pct_change_text,"
",
"- Hospitalized: ",usa_hosp," (vs. ",usa_month_ago_hosp,") ",usa_hosp_pct_change_text,"
",
"- Average new deaths: ",usa_avg_new_deaths," (vs. ",usa_month_ago_avg_new_deaths,") ",usa_death_pct_change_text,"
",
"- Percent of the United States fully vaccinated: ",usa_pct_fully_vaccinated,"% (vs. ",usa_month_ago_vaccinated,"%)
",
"- Average new vaccine doses: ",usa_avg_new_vaccine_doses," (vs. ",usa_month_ago_new_doses,")",
"
",
sep = ""
)


## World ----
### get data ----
#### cases ----

world_jhu_new_cases_url <- "https://github.com/owid/covid-19-data/raw/master/public/data/jhu/new_cases.csv"
world_jhu_new_cases <- rio::import(world_jhu_new_cases_url, format = "csv") %>%
  select(date,"World") %>%
  rename(new_cases = "World") %>%
  mutate(avg_new_cases = rollmean(new_cases, k = 7, 
                                  fill = NA, align = "right"))

#### deaths ----
world_jhu_new_deaths_url <- "https://github.com/owid/covid-19-data/raw/master/public/data/jhu/new_deaths.csv"
world_jhu_new_deaths <- rio::import(world_jhu_new_deaths_url, format = "csv") %>%
  select(date,"World") %>%
  rename(new_deaths = "World") %>%
  mutate(avg_new_deaths = rollmean(new_deaths, k = 7, 
                                   fill = NA, align = "right"))

#### vaccines ----
world_owid_vaccines_url <- "https://github.com/owid/covid-19-data/raw/master/public/data/vaccinations/vaccinations.csv"
world_owid_vaccines <- rio::import(world_owid_vaccines_url, format = "csv") %>%
  filter(iso_code == "OWID_WRL") %>%
  select(date, people_fully_vaccinated,daily_vaccinations, people_fully_vaccinated_per_hundred)

### set variables ----
world_avg_new_deaths <- format(round(signif(tail(world_jhu_new_deaths$avg_new_deaths,1),3)),big.mark=",")
world_avg_new_cases <- format(round(signif(tail(world_jhu_new_cases$avg_new_cases,1),3)),big.mark=",")
world_pct_fully_vaccinated <- round(tail(world_owid_vaccines$people_fully_vaccinated_per_hundred,1), digits = 1)
world_avg_new_vaccine_doses <- format(signif(tail(world_owid_vaccines$daily_vaccinations,1),3),big.mark=",", scientific = FALSE)
world_weekday <- wday(tail(world_jhu_new_cases$date,1), label = TRUE, abbr = FALSE)
world_month_ago_avg_new_deaths <- 
  format(round(signif(tail(lag(world_jhu_new_deaths$avg_new_deaths, 14),1),3)),big.mark=",")
world_month_ago_cases <- format(round(signif(tail(lag(world_jhu_new_cases$avg_new_cases, 14),1),3)),big.mark=",")
world_month_ago_vaccinated <- round(tail(lag(world_owid_vaccines$people_fully_vaccinated_per_hundred, 14),1), digits = 1)
world_month_ago_new_doses <- format(signif(tail(lag(world_owid_vaccines$daily_vaccinations, 14),1),3),big.mark=",", scientific = FALSE)

world_case_pct_change <- round(100*(tail(world_jhu_new_cases$avg_new_cases,1)-tail(lag(world_jhu_new_cases$avg_new_cases, 14),1))/tail(lag(world_jhu_new_cases$avg_new_cases, 14),1), digits = 0)
world_death_pct_change <- round(100*(tail(world_jhu_new_deaths$avg_new_deaths,1)-tail(lag(world_jhu_new_deaths$avg_new_deaths, 14),1))/tail(lag(world_jhu_new_deaths$avg_new_deaths, 14),1), digits = 0)

world_case_pct_change_text <- 
  if (world_case_pct_change > 0) { 
    paste("+",world_case_pct_change,"%↑", sep = "")
  } else if (world_case_pct_change == 0) {
    paste("",world_case_pct_change,"%→", sep = "")
  } else { 
    paste("",world_case_pct_change,"%↓", sep = "")
  }
world_death_pct_change_text <- 
  if (world_death_pct_change > 0) { 
    paste("+",world_death_pct_change,"%↑", sep = "")
  } else if (world_death_pct_change == 0) {
    paste("",world_death_pct_change,"%→", sep = "")
  } else { 
    paste("",world_death_pct_change,"%↓", sep = "")
  }


### table ----
world_combined <- full_join(world_jhu_new_cases,world_jhu_new_deaths) %>%
  full_join(world_owid_vaccines) %>%
  select(date, avg_new_deaths, avg_new_cases, 
         people_fully_vaccinated,
         daily_vaccinations, 
         people_fully_vaccinated_per_hundred) 
world_combined$people_fully_vaccinated <- 
  as.numeric(world_combined$people_fully_vaccinated)
world_combined$daily_vaccinations <- 
  as.numeric(world_combined$daily_vaccinations)


world_combined_longer <- world_combined %>%
  pivot_longer(!date,
               values_to = "values",
               names_to = "names") %>%
  mutate(names = recode_factor(
    names, 
    "avg_new_cases" = "Cases",
    "avg_new_deaths" = "Deaths",
    "daily_vaccinations" = "New Vaccine Doses",
    "people_fully_vaccinated" = "Fully Vaccinated",
    "people_fully_vaccinated_per_hundred" = "Pct. Fully Vaccinated",
    .ordered = TRUE
  )) %>%
  mutate(values = signif(values, 3))

lists <- world_combined_longer %>%
  group_by(names) %>%
  do(tail(na.omit(.), n = 90)) %>%
  summarise(lists = list(values)) 
add_latest_column <- world_combined_longer %>%
  select(names,date,values) %>%
  group_by(names) %>%
  do(tail(na.omit(.), n = 1)) %>%
  rename(latest = values) %>%
  full_join(lists) 

add_two_weeks_ago_column <- world_combined_longer %>%
  select(names,values) %>%
  group_by(names) %>%
  do(tail(.,n = 15)) %>%
  do(head(.,n =1)) %>%
  rename(two_weeks_ago = values) %>%
  full_join(add_latest_column) %>%
  mutate(pct_change = (latest-two_weeks_ago)/two_weeks_ago)


latest_data_for_table <- add_two_weeks_ago_column

world_table <- ungroup(latest_data_for_table) %>%
  gt() %>%
  gt_theme_espn() %>%
  # gt_sparkline(
  #   lists,
  #              line_color = "grey70",
  #              range_colors = c("blue", "red"),
  #              same_limit = FALSE
  # ) %>%
  tab_options(
    table.width = pct(100),
    data_row.padding = px(4),
    table.font.size = px(12)
  ) %>%
  opt_all_caps(  all_caps = TRUE) %>%
  cols_hide(columns = c(date, lists)) %>%
  cols_move(
    columns = pct_change,
    after = latest) %>%
  fmt_number(
    columns = c(latest,two_weeks_ago),
    decimals = 0,
    suffixing = TRUE) %>%
  fmt_percent(
    columns = pct_change,
    decimals = 0,
    force_sign = TRUE
  ) %>%
  cols_align(
    align = "left",
    columns = names
  ) %>%
  cols_align(
    align = c("right"),
    columns = lists
  ) %>%
  cols_label(
    names = "",
    latest = "Latest",
    two_weeks_ago = html("14 Days<br>Ago"),
    pct_change = html("14 Day<br>Trend"),
    #lists = html("Past<br>90 Days")
  ) %>%
  tab_source_note(
    source_note = paste("Latest data:",world_weekday)
  ) 

world_table
world_table_html <- as_raw_html(world_table, inline_css = FALSE)
better_divs_world_table <- gsub("[#][a-z]{10}",
                                "#world_table", 
                                x = world_table_html)
better_world_table_html <- gsub("[\"][a-z]{10}",
                                "\"world_table",
                                x = better_divs_world_table)



### text ----

world_text <- paste(
  "As of ",world_weekday," (vs. two weeks ago):
  
",
"- Average new cases: ",world_avg_new_cases," (vs. ",world_month_ago_cases,") ",world_case_pct_change_text,"
",
"- Average new deaths: ",world_avg_new_deaths," (vs. ",world_month_ago_avg_new_deaths,") ",world_death_pct_change_text,"
",
"- Percent of the world fully vaccinated: ",world_pct_fully_vaccinated,"% (vs. ",world_month_ago_vaccinated,"%)
",
"- Average new vaccine doses: ",world_avg_new_vaccine_doses," (vs. ",world_month_ago_new_doses,")",
"
",
sep = ""
)



## case acceleration ----
### get data ----
#### Champaign cases ----
idph_cases_champaign <- rio::import("https://idph.illinois.gov/DPHPublicInformation/api/COVID/GetCountyHistorical?countyName=Champaign",
                                    format = "json") 
idph_cases_champaign <- idph_cases_champaign$values %>%
  mutate(new_cases = CasesChange) %>%
  mutate(new_cases = replace(new_cases, which(new_cases<0), NA)) %>%
  mutate(new_deaths = DeathsChange) %>%
  mutate(avg_new_cases = rollapply(new_cases, width = 7, FUN = mean, na.rm = TRUE, fill = NA, align = "right")) %>%
  mutate(monthlydead = rollmean(new_deaths, k = 7, 
                                fill = NA, align = "right"))  %>%
  mutate(Date = ymd_hms(ReportDate, truncated = 0)) %>%
  mutate(pct_change_new_cases = 
           ((avg_new_cases - lag(avg_new_cases,14))/lag(avg_new_cases,14))) %>%
  mutate(location = "Champaign County")


#### IL cases -----
idph_cases_il <- rio::import("https://idph.illinois.gov/DPHPublicInformation/api/COVID/GetCountyHistorical?countyName=Illinois",
                             format = "json") 
idph_cases_il <- idph_cases_il$values %>%
  mutate(new_cases = CasesChange) %>%
  mutate(new_cases = replace(new_cases, which(new_cases<0), NA)) %>%
  mutate(new_deaths = DeathsChange) %>%
  mutate(avg_new_cases = rollapply(new_cases, width = 7, FUN = mean, na.rm = TRUE, fill = NA, align = "right")) %>%
  mutate(monthlydead = rollmean(new_deaths, k = 7, 
                                fill = NA, align = "right"))  %>%
  mutate(Date = ymd_hms(ReportDate, truncated = 0)) %>%
  mutate(pct_change_new_cases = 
           ((avg_new_cases - lag(avg_new_cases,14))/lag(avg_new_cases,14))) %>%
  mutate(location = "Illinois")

#### USA cases ----
jhu_new_cases_url <- "https://github.com/owid/covid-19-data/raw/master/public/data/jhu/new_cases.csv"
jhu_new_cases_usa <- rio::import(jhu_new_cases_url, format = "csv") %>%
  select(date,"United States") %>%
  rename(new_cases = "United States") %>%
  mutate(avg_new_cases = rollmean(new_cases, k = 7, 
                                  fill = NA, align = "right")) %>%
  mutate(pct_change_new_cases = 
           ((avg_new_cases - lag(avg_new_cases,14))/lag(avg_new_cases,14))) %>%
  mutate(Date = ymd(date)) %>% 
  mutate(location = "United States")

#### World cases ----
jhu_new_cases_url <- "https://github.com/owid/covid-19-data/raw/master/public/data/jhu/new_cases.csv"
jhu_new_cases_world <- rio::import(jhu_new_cases_url, format = "csv") %>%
  select(date,"World") %>%
  rename(new_cases = "World") %>%
  mutate(avg_new_cases = rollmean(new_cases, k = 7, 
                                  fill = NA, align = "right")) %>%
  mutate(pct_change_new_cases = 
           ((avg_new_cases - lag(avg_new_cases,14))/lag(avg_new_cases,14))) %>%
  mutate(Date = ymd(date)) %>%
  mutate(location = "World")

### merge data ----
combined_cases <- full_join(idph_cases_champaign, idph_cases_il) %>%
  full_join(jhu_new_cases_usa) %>%
  full_join(jhu_new_cases_world) %>%
  select(location, Date,pct_change_new_cases)

### set variables ----
acceleration_weekday <- wday(tail(jhu_new_cases_world$Date,1), label = TRUE, abbr = FALSE)
acceleration_champaign <- round(100*tail(idph_cases_champaign$pct_change_new_cases,1), digits = 0)
acceleration_il <- il_case_pct_change
acceleration_usa <- round(100*tail(jhu_new_cases_usa$pct_change_new_cases,1), digits = 0)
acceleration_world <- round(100*tail(jhu_new_cases_world$pct_change_new_cases,1), digits = 0)

### text ----
acceleration_text <- paste(
  "As of ",acceleration_weekday,", the 14-day percent change in average new cases was:
  
",
"- ",acceleration_champaign,"% in Champaign County
",
"- ",acceleration_il,"% in Illinois
",
"- ",acceleration_usa,"% in the United States
",
"- ",acceleration_world,"% worldwide",
"
",
sep = ""
)

# death_acceleration_text ----

### text ----
death_acceleration_text <- paste(
  "As of ",acceleration_weekday,", the 14-day percent change in average new deaths was:
  
",
"- ",il_death_pct_change,"% in Illinois
",
"- ",usa_death_pct_change,"% in the United States
",
"- ",world_death_pct_change,"% worldwide",
"
",
sep = ""
)


# <picture>
#   <source srcset=\"https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/Champaign_facet.png\"
#           media=\"(min-width: 750px)\">
#   <img src=\"https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/Champaign_facet_mobile.png\" alt=\"\" />
# </picture>


# make web text ----
## covid ----
web_text <- paste(
  "---
layout: page
title: COVID-19
permalink: /projects/covid
imageurl: https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/Champaign_facet.png
webappicon: /covid.png
---

## Champaign County

<iframe src=\"/interactive/champaign_covid.html\" width=\"100%\" height=\"500\"> 
</iframe>

",better_cu_covid_table_html,"

Charts for Champaign County are posted weekdays on Twitter [@ChampaignCovid](https://twitter.com/ChampaignCovid).

### Hospitalized

<iframe src=\"/interactive/champaign_hospital.html\" width=\"100%\" height=\"375\"> 
</iframe>

### [Wastewater Surveillance](https://covid.cdc.gov/covid-data-tracker/#wastewater-surveillance)

<iframe src=\"/interactive/champaign_wastewater.html\" width=\"100%\" height=\"500\"> 
</iframe>

Definitions from the CDC: 

- Pct. Tests Detecting SARS-CoV-2: The proportion of tests with SARS-CoV-2 detected, meaning a cycle threshold (Ct) value <40 for RT-qPCR or at least 3 positive droplets/partitions for RT-ddPCR, by sewershed over the 15-day window defined by 'datestart' and 'dateend'. The detection proportion is the percent calculated by dividing the 15-day rolling sum of SARS-CoV-2 detections by the 15-day rolling sum of the number of tests for each sewershed and multiplying by 100.
- Percentile: This metric shows whether SARS-CoV-2 virus levels at a site are currently higher or lower than past historical levels at the same site. 0% means levels are the lowest they have been at the site; 100% means levels are the highest they have been at the site. Public health officials watch for increasing levels of the virus in wastewater over time and use this data to help make public health decisions.

## Illinois

<picture>
  <source srcset=\"https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/IL_facet.png\"
          media=\"(min-width: 750px)\">
  <img src=\"https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/IL_facet_mobile.png\" alt=\"\" />
</picture>

<div class = \"hcharts\">
<iframe src=\"/interactive/il_community_levels.html\" width=\"100%\" height=\"300\"> 
</iframe>

<iframe src=\"/interactive/il_transmission_levels.html\" width=\"100%\" height=\"300\"> 
</iframe>

<iframe src=\"/interactive/il_new_cases.html\" width=\"100%\" height=\"300\"> 
</iframe>
</div>

[Community levels](https://www.cdc.gov/coronavirus/2019-ncov/your-health/covid-by-county.html) are calculated by the CDC based on new cases and hospital data. [Community transmission levels](https://covid.cdc.gov/covid-data-tracker/#county-view) are calculated by the CDC based on new cases and test positivity.

## United States

<picture>
  <source srcset=\"https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/US_facet.png\"
          media=\"(min-width: 750px)\">
  <img src=\"https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/US_facet_mobile.png\" alt=\"\" />
</picture>

<picture>
  <source srcset=\"https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/usa_community_levels.png\"
          media=\"(min-width: 750px)\">
  <img src=\"https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/usa_community_level_mobile.png\" alt=\"\" />
</picture>

<picture>
  <source srcset=\"https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/usa_transmission.png\"
          media=\"(min-width: 750px)\">
  <img src=\"https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/usa_transmission_mobile.png\" alt=\"\" />
</picture>

<picture>
  <source srcset=\"https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/usa_new_cases.png\"
          media=\"(min-width: 750px)\">
  <img src=\"https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/usa_new_cases_mobile.png\" alt=\"\" />
</picture>

## World

<picture>
  <source srcset=\"https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/world_facet.png\"
          media=\"(min-width: 750px)\">
  <img src=\"https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/world_facet_mobile.png\" alt=\"\" />
</picture>

## Case Acceleration

",acceleration_text,
"
<picture>
  <source srcset=\"https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/new_cases_change_facet.png\"
          media=\"(min-width: 750px)\">
  <img src=\"https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/new_cases_change_facet_mobile.png\" alt=\"\" />
</picture>

This chart measures how quickly the average number of new cases is changing, or roughly, the slope of the new-cases charts above. If the case acceleration is positive, then the average number of new cases is increasing. If it is negative, then the average number of new cases is decreasing.
","
## Death Acceleration

",death_acceleration_text,
"
<picture>
  <source srcset=\"https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/new_deaths_change_facet.png\"
          media=\"(min-width: 750px)\">
  <img src=\"https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/new_deaths_change_facet_mobile.png\" alt=\"\" />
</picture>

This chart measures how quickly the average number of new deaths is changing, or roughly, the slope of the new-deaths charts above. If the death acceleration is positive, then the average number of new deaths is increasing. If it is negative, then the average number of new deaths is decreasing.

## [Vaccines »]({{ site.baseurl }}/projects/covid/vaccines)

### Sources

[Champaign-Urbana Public Health District](https://www.c-uphd.org/champaign-urbana-illinois-coronavirus-information.html), [University of Illinois](https://go.illinois.edu/COVIDTestingData), [Illinois Department of Public Health](http://www.dph.illinois.gov/covid19), [Centers for Disease Control and Prevention](https://covid.cdc.gov/covid-data-tracker/), [U.S. Department of Health and Human Services](https://healthdata.gov/Hospital/COVID-19-Reported-Patient-Impact-and-Hospital-Capa/anag-cw7u), [Our World in Data](https://github.com/owid/covid-19-data/tree/master/public/data) and the [COVID-19 Data Repository by the Center for Systems Science and Engineering (CSSE) at Johns Hopkins University](https://github.com/CSSEGISandData/COVID-19).

",
sep = ""
)

if (champaign_avg_new_cases >= 0 && 
    champaign_dead_last_month >= 0 && 
    champaign_pct_fully_vaccinated >= 0 &&
    champaign_pct_fully_vaccinated <= 100 &&
    champaign_avg_new_vaccine_doses >= 0 &&
    champaign_month_ago_cases >= 0 && 
    champaign_month_ago_deaths >= 0 && 
    champaign_month_ago_vaccinated >= 0 &&
    champaign_month_ago_vaccinated <= 100 &&
    champaign_month_ago_new_doses >= 0
) {
  write_lines(web_text,"projects/covid.md")
}
## vaccines ----
web_text <- paste(
  "---
layout: page
title: COVID-19 Vaccines
permalink: /projects/covid/vaccines
imageurl: https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/Champaign_facet.png
webappicon: /covid.png
---

![Illinois CDC_vax_combined map](https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/IL_vax_combined.png)

<picture>
  <source srcset=\"https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/usa_vax_total.png\"
          media=\"(min-width: 750px)\">
  <img src=\"https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/usa_vax_total_mobile.png\" alt=\"\" />
</picture>

### Sources

[Champaign-Urbana Public Health District](https://www.c-uphd.org/champaign-urbana-illinois-coronavirus-information.html), [University of Illinois](https://go.illinois.edu/COVIDTestingData), [Illinois Department of Public Health](http://www.dph.illinois.gov/covid19), [Centers for Disease Control and Prevention](https://covid.cdc.gov/covid-data-tracker/), [U.S. Department of Health and Human Services](https://healthdata.gov/Hospital/COVID-19-Reported-Patient-Impact-and-Hospital-Capa/anag-cw7u), [Our World in Data](https://github.com/owid/covid-19-data/tree/master/public/data) and the [COVID-19 Data Repository by the Center for Systems Science and Engineering (CSSE) at Johns Hopkins University](https://github.com/CSSEGISandData/COVID-19).

",
sep = ""
)

if (champaign_avg_new_cases >= 0 && 
    champaign_dead_last_month >= 0 && 
    champaign_pct_fully_vaccinated >= 0 &&
    champaign_pct_fully_vaccinated <= 100 &&
    champaign_avg_new_vaccine_doses >= 0 &&
    champaign_month_ago_cases >= 0 && 
    champaign_month_ago_deaths >= 0 && 
    champaign_month_ago_vaccinated >= 0 &&
    champaign_month_ago_vaccinated <= 100 &&
    champaign_month_ago_new_doses >= 0
) {
  write_lines(web_text,"projects/covid/vaccines.md")
}

