library(tidyverse)
url <- 'https://raw.githubusercontent.com/ucd-cepb/R-DAVIS/refs/heads/main/data/tyler_activity_laps_10-24.csv'
lap <- read_csv(url)
laps_running <- lap %>% 
  filter(sport == 'running') %>% 
  filter(minutes_per_mile < 10 & minutes_per_mile > 5) %>% 
  filter(total_elapsed_time_s > 60)

laps_running <- mutate(pace_cat = case_when( pace <= 6, "fast",
                           ifelse(pace >=6  & pace < 8, "medium", pace <8, "slow")))
