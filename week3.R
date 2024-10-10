#Other data types 
## lists ----

c(4,6, "dog")
list(4,6, "dog")
a<- list(4,6, "dog")
class(a)

# data.frames
letters
data.frame(letters)
df<- data.frame(letters)
length(df)
dim(df) #rows, columns
nrow(df) #number of rows
ncol(df)

#factors
animals <- factor(c("duck", "duck", "goose", "goose"))
animals #organizes alphabetically

class(animals)
levels(animals)
nlevels(animals)

animals <- factor(x = animals, levels = c("goose", "pigs", "duck"))
animals

year <- factor(c(1978, 1980, 1934, 1979))
year
class(year)
as.numeric(year)
levels(year)


## SPREADSHEETS
?read.csv
surveys <- read.csv("data/portal_data_joined.csv")
nrow(surveys)
ncol(surveys)
dim (surveys)
str(surveys)
surveys

summary(surveys)

surveys[1,5]
1:5
surveys[1:5,]

surveys[c(1,5,24,3001),]

head(surveys,1)
dim(surveys[1])
colnames(surveys)
head(surveys["genus"])
head(surveys[["genus"]]) 

surveys$hindfoot_length

class(surveys$hindfoot_length)

surveys$plot_id

install.packages('tidyverse')
library(tidyverse)
