surveys <- read.csv("data/portal_data_joined.csv")
colnames(surveys)
surveys_base <- surveys[1:5000, c(6,9,13)]
surveys_base$species_id <- factor(surveys_base$species_id)
class(surveys_base$species_id)
surveys_base$plot_type <- factor(surveys_base$plot_type)
class(surveys_base$plot_type)

#deleting the NAs = complete.cases
surveys_base <- surveys_base[complete.cases(surveys_base),]
surveys_base


levels(surveys_base$species_id)


## hw 3 review

# Homework 3 Review -----
#Load your survey data frame with the read.csv() function. Create a new data frame called surveys_base with only the species_id, the weight, and the plot_type columns. Have this data frame only be the first 5,000 rows. 


#Convert both species_id and plot_type to factors. Remove all rows where there is an NA in the weight column. 


#Explore these variables and try to explain why a factor is different from a character. Why might we want to use factors? Can you think of any examples?

#CHALLENGE: Create a second data frame called challenge_base that only consists of individuals from your surveys_base data frame with weights greater than 150g.
