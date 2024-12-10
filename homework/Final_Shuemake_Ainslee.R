library(tidyverse)

read_csv <- "https://raw.githubusercontent.com/UCD-R-DAVIS/R-DAVIS/refs/heads/main/data/tyler_activity_laps_12-6.csv"
activity_data <- read_csv

running_data <- lap_dt %>% 
  filter(sport == 'running') %>%
  filter(total_elapsed_time_s >= 60) %>%
  filter(minutes_per_mile < 10 & minutes_per_mile > 5)

running_data_filtered<- running_data %>%
  mutate(time_period = case_when(
    timestamp < as.Date("2024-01-01") ~ "Pre-2024",
    timestamp >= as.Date("2024-01-01") & timestamp < as.Date("2024-07-01") ~ "Rehab (Jan-Jun 2024)",
    timestamp >= as.Date("2024-07-01") ~ "Post-Intervention (Jul 2024 - Present)"
  ))


ggplot(running_data_filtered, aes(x = Speed, y = SPM, color = time_period)) +
  geom_point(alpha = 0.7) + 
  geom_smooth(method = "lm", se = FALSE, aes(color = time_period), linetype = "solid") +
  labs(title = "SPM vs Speed by Lap",
       x = "Speed (mph)",
       y = "Strides Per Minute (SPM)",
       color = "Time Period") +
  theme_minimal() +  
  theme(legend.position = "top",  
        plot.title = element_text(hjust = 0.5), 
        axis.text = element_text(size = 12),  
        axis.title = element_text(size = 14),  
        panel.grid.major = element_line(color = "grey80", size = 0.5))

post_intervention_data <- running_data_filtered %>%
  filter(timestamp >= as.Date("2024-07-01"))
