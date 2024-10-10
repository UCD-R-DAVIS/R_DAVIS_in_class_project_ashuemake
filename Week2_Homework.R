set.seed(15)
hw2 <- runif(50, 4, 50)
hw2 <- replace(hw2, c(4,12,22,27), NA)
hw2

#this is how to identify the NA values in a vector
is.na(hw2)

#this is how to remove the NA values from your vector
# !is - way of saying "is not" 
# could also use na.omit(hw2) to achieve the same outcome
# hw2[complete.cases(hw2)] can also be used

hw2[!is.na(hw2)]

hw2[!is.na(hw2)] [hw2[!is.na(hw2)]>= 14 & hw2[!is.na(hw2)]<=38] 
# hw2[!is.na(hw2) & hw2>= 14 & hw2 <= 38]

prob1 <- hw2[!is.na(hw2)] [hw2[!is.na(hw2)]>= 14 & hw2[!is.na(hw2)]<=38]

times3<-prob1*3
times3 #question2

plus10<- times3 + 10
plus10 #question2

plus10[c(TRUE, FALSE)]
