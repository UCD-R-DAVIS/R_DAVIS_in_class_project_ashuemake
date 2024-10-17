#selecting, filtering, and piping

#learning dplyr and tidyr: select, filter, and pipes
#only do this once ever:
install.packages(
  #We've learned bracket subsetting
  #It can be hard to read and prone to error
  #dplyr is great for data table manipulation!
  #tidyr helps you switch between data formats
  
  #Packages in R are collections of additional functions
  #tidyverse is an "umbrella package" that
  #includes several packages we'll use this quarter:
  #tidyr, dplyr, ggplot2, tibble, etc.
  
  #benefits of tidyverse
  #1. Predictable results (base R functionality can vary by data type) 
  #2. Good for new learners, because syntax is consistent. 
  #3. Avoids hidden arguments and default settings of base R functions
  
  #To load the package type:
  library(tidyverse)
    #now let's work with a survey dataset
    surveys <- read_csv("data/portal_data_joined.csv")
      
      
        

#select columns
month_day_year <- select(surveys, month, day, year)

month_day_year

#filtering by equals

year_1981 <- filter(surveys, year == 1981)
sum(year_1981$year != 1981, na.rm = T)        

year_1981_baser <- surveys[surveys$year == 1981,]

## filtering by range


filter(surveys, year %in% 1981:1983)
filter(surveys, year %in% c(1981:1983))


# filtering by multiple conditions

small_animals <- filter(surveys, weight < 5)

## same process, using nested functions

small_animals_ids <- select (filter(surveys_weight < 5), recond_id, plot_id, species_id
                             
  
# same process using a pipe

##|> 

# control shift M
# %>% 
  
small_animals_ids <- surveys %>% filter(., weight <5) 

small_animals_ids <- surveys %>% filter(., weight <5) %>% select(., record_id, plot_id, species_id)

# how to do line breaks with pipes

surveys %>% filter(
  month==1)

## notice the indentation, that means it recognizes its the same line of code


mini <- surveys[190:209,]
table(mini$species_id)

nrow(mini)

mini %>% filter(species_id %in% c("DM","NL"))
nrow(mini)


# adding a new column
#mutate: adds a new column

surveys <- surveys %>% 
  mutate(., weight_kg = weight/1000)

str(surveys) #check code

surveys <- surveys %>% 
  mutate(., 
         weight_kg = weight/1000,
         weight_kg2 = weight_kg*2)

surveys$weight_kg2 = as.character(surveys$weight_kg2)

ave_weight <- surveys %>% 
  filter(!is.na(weight)) %>% 
  mutate(mean_weight = mean(weight))
str(ave_weight)

nrow(ave_weight)

ave_weight <- surveys %>% 
  filter(complete.cases(.))

nrow(ave_weight)

surveys_challenge <- surveys %>%
  filter(year < 1995) %>%
  select(year, sex, weight)
