#project management ----

##working directory an file paths ----

getwd()

Set(wd)

d<-read.csv()

#code and data organization

dir.crate
#dir.create("./lectures")

#how R thinks about data----
weight_g <- c(50,60,65,82)
weight_one_value <- c(50)

animals <- c("mouse", "rat", "dog")

animals


### inspection ----
length(weight_g)
str(weight_g)

### change vectors ----

weight_g <- c(weight_g, 90)
weight_g


### challenge ----

num_char <- c(1,2,3,"a")
num_logical <- c(1,2,3, TRUE)
char_logical <- c("a","b","c",TRUE)
tricky <- c(1,2,3,"4")

# chooses lowest common denominator
# vectors have to be the SAMEE class of values
# coerces values to be all the same, e.g. when TRUE is included

class(num_logical)


num_logical <- c(1, 2, 3, TRUE)
char_logical <- c("a", "b", "c", TRUE)
combined_logical <- c(num_logical, char_logical)



## Subsetting ----

animals <- c("mouse", "rat", "dog", "cat")

animals
animals [2]
animals [c(2,3)]
# indexing: take items from a vector and create a new combination of values

## conditional subsetting

weight_g <- c(21, 34, 39, 54, 55)
weight_g > 50

## Symbols

## ==
## %in%

animals %in% c("rat", "cat", "dog", "duck", "goat")

