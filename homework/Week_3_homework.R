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
