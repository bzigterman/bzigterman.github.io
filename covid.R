library(httr)
library(rio)
library(tidyverse)
library(lubridate)
library(zoo)

# make variables ----
## Champaign County ----
### get data ----
idph_cases_champaign <- rio::import("https://idph.illinois.gov/DPHPublicInformation/api/COVID/GetCountyHistorical?countyName=Champaign",
                                    format = "json") 
idph_cases_champaign <- idph_cases_champaign$values %>%
  mutate(new_cases = confirmed_cases - lag(confirmed_cases)) %>%
  mutate(new_cases = replace(new_cases, which(new_cases<0), NA)) %>%
  mutate(new_deaths = deaths - lag(deaths)) %>%
  mutate(avg_new_cases = rollapply(new_cases, width = 7, FUN = mean, na.rm = TRUE, fill = NA, align = "right")) %>%
  mutate(monthlydead = rollmean(new_deaths, k = 31, 
                                fill = NA, align = "right")*31)  %>%
  mutate(Date = ymd_hms(reportDate)) 

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
  mutate(CountyName = "Champaign")

### set variables ----
champaign_avg_hospitalized <- format(round(signif(tail(hospitalizations_by_date$avg_hospitalized,1),3)),big.mark=",")
champaign_dead_last_month <- format(round(signif(tail(idph_cases_champaign$monthlydead,1),3)),big.mark=",")
champaign_avg_new_cases <- format(round(signif(tail(idph_cases_champaign$avg_new_cases,1),3)),big.mark=",")
champaign_pct_fully_vaccinated <- round(100*tail(idph_vax_champaign$PctVaccinatedPopulation,1), digits = 1)
champaign_avg_new_vaccine_doses <- 
  format(round(signif(tail(idph_vax_champaign$AdministeredCountRollAvg,1),3)),big.mark=",")
champaign_weekday <- wday(tail(idph_cases_champaign$Date,1), label = TRUE, abbr = FALSE)
champaign_month_ago_hospitalized <- 
  format(round(signif(tail(lag(hospitalizations_by_date$avg_hospitalized,2),1),3)),big.mark=",")
champaign_month_ago_deaths <- format(round(signif(tail(lag(idph_cases_champaign$monthlydead, 14),1),3)),big.mark=",")
champaign_month_ago_cases <- format(round(signif(tail(lag(idph_cases_champaign$avg_new_cases, 14),1),3)),big.mark=",")
champaign_month_ago_vaccinated <- round(100*tail(lag(idph_vax_champaign$PctVaccinatedPopulation, 14),1), digits = 1)
champaign_month_ago_new_doses <- 
  format(round(signif(tail(lag(idph_vax_champaign$AdministeredCountRollAvg, 14),1),3)),big.mark=",")
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
  mutate(new_cases = confirmed_cases - lag(confirmed_cases)) %>%
  mutate(new_cases = replace(new_cases, which(new_cases<0), NA)) %>%
  mutate(new_deaths = deaths - lag(deaths)) %>%
  mutate(avg_new_cases = rollapply(new_cases, width = 7, FUN = mean, na.rm = TRUE, fill = NA, align = "right")) %>%
  mutate(avg_new_deaths = rollmean(new_deaths, k = 7, 
                                fill = NA, align = "right"))  %>%
  mutate(Date = ymd_hms(reportDate)) 

idph_vax_il <- rio::import("https://idph.illinois.gov/DPHPublicInformation/api/COVIDExport/GetVaccineAdministration?format=csv&countyName=Illinois",
                                  format = "csv") %>%
  mutate(Date = mdy_hms(Report_Date)) 

idph_hosp <- rio::import("https://idph.illinois.gov/DPHPublicInformation/api/COVIDExport/GetHospitalUtilizationResults?format=csv",
                         format = "csv") %>%
  mutate(Date = ymd(mdy_hms(ReportDate))) %>%
  select(Date, TotalInUseBedsCOVID)


### set variables ----
il_hosp <- format(round(signif(tail(idph_hosp$TotalInUseBedsCOVID,1),3)),big.mark=",")
il_avg_new_deaths <- format(round(signif(tail(idph_cases_il$avg_new_deaths,1),3)),big.mark=",")
il_avg_new_cases <- format(round(signif(tail(idph_cases_il$avg_new_cases,1),3)),big.mark=",")
il_pct_fully_vaccinated <- round(100*tail(idph_vax_il$PctVaccinatedPopulation,1), digits = 1)
il_avg_new_vaccine_doses <- format(round(signif(tail(idph_vax_il$AdministeredCountRollAvg,1),3)),big.mark=",")
il_weekday <- wday(tail(idph_cases_il$Date,1), label = TRUE, abbr = FALSE)
il_month_ago_avg_new_deaths <- format(round(signif(tail(lag(idph_cases_il$avg_new_deaths, 14),1),3)),big.mark=",")
il_month_ago_hosp <- format(round(signif(tail(lag(idph_hosp$TotalInUseBedsCOVID, 14),1),3)),big.mark=",")
il_month_ago_cases <- format(round(signif(tail(lag(idph_cases_il$avg_new_cases, 14),1),3)),big.mark=",")
il_month_ago_vaccinated <- round(100*tail(lag(idph_vax_il$PctVaccinatedPopulation, 14),1), digits = 1)
il_month_ago_new_doses <- format(round(signif(tail(lag(idph_vax_il$AdministeredCountRollAvg, 14),1),3)),big.mark=",")

il_case_pct_change <- round(100*(tail(idph_cases_il$avg_new_cases,1)-tail(lag(idph_cases_il$avg_new_cases, 14),1))/tail(lag(idph_cases_il$avg_new_cases, 14),1), digits = 0)
il_death_pct_change <- round(100*(tail(idph_cases_il$avg_new_deaths,1)-tail(lag(idph_cases_il$avg_new_deaths, 14),1))/tail(lag(idph_cases_il$avg_new_deaths, 14),1), digits = 0)
il_hosp_pct_change <- round(100*(tail(idph_hosp$TotalInUseBedsCOVID,1)-tail(lag(idph_hosp$TotalInUseBedsCOVID, 14),1))/tail(lag(idph_hosp$TotalInUseBedsCOVID, 14),1), digits = 0)

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

### text ----

il_text <- paste(
  "As of ",il_weekday," in Illinois (vs. two weeks ago):
  
",
"- Average new cases: ",il_avg_new_cases," (vs. ",il_month_ago_cases,") ",il_case_pct_change_text,"
",
"- Hospitalized: ",il_hosp," (vs. ",il_month_ago_hosp,") ",il_hosp_pct_change_text,"
",
"- Average new deaths: ",il_avg_new_deaths," (vs. ",il_month_ago_avg_new_deaths,") ",il_death_pct_change_text,"
",
"- Percent of Illinois fully vaccinated: ",il_pct_fully_vaccinated,"% (vs. ",il_month_ago_vaccinated,"%)
",
"- Average new vaccine doses: ",il_avg_new_vaccine_doses," (vs. ",il_month_ago_new_doses,")",
"
",
sep = ""
)

## USA ----

### get data ----
#### cases ----
usa_jhu_new_cases_url <- "https://github.com/owid/covid-19-data/raw/master/public/data/jhu/new_cases.csv"
usa_jhu_new_cases <- rio::import(usa_jhu_new_cases_url, format = "csv") %>%
  select(date,"United States") %>%
  rename(new_cases = "United States") %>%
  mutate(avg_new_cases = rollmean(new_cases, k = 7, 
                                  fill = NA, align = "right"))

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
                                   fill = NA, align = "right"))

#### vaccines ----
usa_owid_vaccines_url <- "https://github.com/owid/covid-19-data/raw/master/public/data/vaccinations/vaccinations.csv"
usa_owid_vaccines <- rio::import(usa_owid_vaccines_url, format = "csv") %>%
  filter(iso_code == "USA") %>%
  select(date, people_fully_vaccinated,daily_vaccinations, people_fully_vaccinated_per_hundred)

### set variables ----
usa_hosp <- format(round(signif(tail(owid_hosp$hosp_patients,1),3)),big.mark=",")
usa_avg_new_deaths <- format(round(signif(tail(usa_jhu_new_deaths$avg_new_deaths,1),3)),big.mark=",")
usa_avg_new_cases <- format(round(signif(tail(usa_jhu_new_cases$avg_new_cases,1),3)),big.mark=",")
usa_pct_fully_vaccinated <- round(tail(usa_owid_vaccines$people_fully_vaccinated_per_hundred,1), digits = 1)
usa_avg_new_vaccine_doses <- format(signif(tail(usa_owid_vaccines$daily_vaccinations,1),3),big.mark=",")
usa_weekday <- wday(tail(usa_jhu_new_cases$date,1), label = TRUE, abbr = FALSE)
usa_month_ago_avg_new_deaths <- format(round(signif(tail(lag(usa_jhu_new_deaths$avg_new_deaths, 14),1),3)),big.mark=",")
usa_month_ago_hosp <- format(round(signif(tail(lag(owid_hosp$hosp_patients,14),1),3)),big.mark=",")
usa_month_ago_cases <- format(round(signif(tail(lag(usa_jhu_new_cases$avg_new_cases, 14),1),3)),big.mark=",")
usa_month_ago_vaccinated <- round(tail(lag(usa_owid_vaccines$people_fully_vaccinated_per_hundred, 14),1), digits = 1)
usa_month_ago_new_doses <- format(signif(tail(lag(usa_owid_vaccines$daily_vaccinations, 14),1),3),big.mark=",")

usa_case_pct_change <- round(100*(tail(usa_jhu_new_cases$avg_new_cases,1)-tail(lag(usa_jhu_new_cases$avg_new_cases, 14),1))/tail(lag(usa_jhu_new_cases$avg_new_cases, 14),1), digits = 0)
usa_death_pct_change <- round(100*(tail(usa_jhu_new_deaths$avg_new_deaths,1)-tail(lag(usa_jhu_new_deaths$avg_new_deaths, 14),1))/tail(lag(usa_jhu_new_deaths$avg_new_deaths, 14),1), digits = 0)
usa_hosp_pct_change <- round(100*(tail(owid_hosp$hosp_patients,1)-tail(lag(owid_hosp$hosp_patients, 14),1))/tail(lag(owid_hosp$hosp_patients, 14),1), digits = 0)


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
  mutate(new_cases = confirmed_cases - lag(confirmed_cases)) %>%
  mutate(new_cases = replace(new_cases, which(new_cases<0), NA)) %>%
  mutate(new_deaths = deaths - lag(deaths)) %>%
  mutate(avg_new_cases = rollapply(new_cases, width = 7, FUN = mean, na.rm = TRUE, fill = NA, align = "right")) %>%
  mutate(monthlydead = rollmean(new_deaths, k = 7, 
                                fill = NA, align = "right"))  %>%
  mutate(Date = ymd_hms(reportDate, truncated = 0)) %>%
  mutate(pct_change_new_cases = 
           ((avg_new_cases - lag(avg_new_cases,14))/lag(avg_new_cases,14))) %>%
  mutate(location = "Champaign County")


#### IL cases -----
idph_cases_il <- rio::import("https://idph.illinois.gov/DPHPublicInformation/api/COVID/GetCountyHistorical?countyName=Illinois",
                             format = "json") 
idph_cases_il <- idph_cases_il$values %>%
  mutate(new_cases = confirmed_cases - lag(confirmed_cases)) %>%
  mutate(new_cases = replace(new_cases, which(new_cases<0), NA)) %>%
  mutate(new_deaths = deaths - lag(deaths)) %>%
  mutate(avg_new_cases = rollapply(new_cases, width = 7, FUN = mean, na.rm = TRUE, fill = NA, align = "right")) %>%
  mutate(monthlydead = rollmean(new_deaths, k = 7, 
                                fill = NA, align = "right"))  %>%
  mutate(Date = ymd_hms(reportDate, truncated = 0)) %>%
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
acceleration_il <- round(100*tail(idph_cases_il$pct_change_new_cases,1), digits = 0)
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


# make web text ----

web_text <- paste(
  "---
layout: page
title: COVID-19
permalink: /charts/covid
---

During the COVID-19 pandemic, I've been making charts with data from the [Champaign-Urbana Public Health District](https://www.c-uphd.org/champaign-urbana-illinois-coronavirus-information.html), the [University of Illinois](https://go.illinois.edu/COVIDTestingData), the [Illinois Department of Public Health](http://www.dph.illinois.gov/covid19), the [CDC](https://covid.cdc.gov/covid-data-tracker/), the [U.S. Department of Health and Human Services](https://healthdata.gov/Hospital/COVID-19-Reported-Patient-Impact-and-Hospital-Capa/anag-cw7u), [Our World in Data](https://github.com/owid/covid-19-data/tree/master/public/data) and the [COVID-19 Data Repository by the Center for Systems Science and Engineering (CSSE) at Johns Hopkins University](https://github.com/CSSEGISandData/COVID-19).

## Champaign County

",champaign_county_text,
"
![Champaign County Metrics](https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/Champaign_facet.png)

Charts for Champaign County are posted weekdays on Twitter [@ChampaignCovid](https://twitter.com/ChampaignCovid).

## Illinois

",il_text,
"
![Illinois Metrics](https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/IL_facet.png)

![Illinois CDC_vax_combined map](https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/IL_vax_combined.png)

![IL CDC_cases_transmission_IL map](https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/IL_cases_transmission.png)

Community transmission levels are calculated by the CDC based on new cases per capita in the past week and test positivity.

## United States

",usa_text,
"
![USA Metrics](https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/US_facet.png)

![USA fully vaccinated map](https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/usa_vax_total.png)

![USA transmission levels map](https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/usa_transmission.png)

## World

",world_text,
"
![World Metrics](https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/world_facet.png)

## Case Acceleration

",acceleration_text,
"
![Case Acceleration](https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/new_cases_change_facet.png)

This chart measures how quickly the average number of new cases is changing, or roughly, the slope of the new-cases charts above. If the case acceleration is positive, then the average number of new cases is increasing. If it is negative, then the average number of new cases is decreasing.
","
## Death Acceleration

",death_acceleration_text,
"
![Death Acceleration](https://raw.githubusercontent.com/bzigterman/CUcovid/main/gh_action/new_deaths_change_facet.png)

This chart measures how quickly the average number of new deaths is changing, or roughly, the slope of the new-deaths charts above. If the death acceleration is positive, then the average number of new deaths is increasing. If it is negative, then the average number of new deaths is decreasing.

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
write_lines(web_text,"charts/covid.md")
}