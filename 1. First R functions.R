
#Assigning value to an object
die <- 1:6

#Creating a function with sample function
Roll2 <- function() {
  Dice <- sample(die, size=2, replace = TRUE)
}
#Calling the created function
Roll2()

#Above function with weighted dice using probabilities.
Roll <- function(Big = 1:6) {
  win <- sample(Big, size= 2, replace = TRUE, prob = c(1/8,1/8,1/8,1/8,1/8,3/8))
  sum(win)
}

#Calling a funtion, using an argument
Rolls(1:20)

#Calling a package from library
library("ggplot2")

#Assigning values to x and y, for plotting
x <- c(-8, -6, -4, -2, 0, 2,4,6,8)
y<- -x

#qplot is used for plotting
qplot(x,y)

z <- c(1,2,2,3,5,6,7,7,7,2,2)

#Plotting a histogram
qplot(z, binwidth=0.5)

#Replicat function, to replicate a peice of code multiple times
replicate(10, Roll())

rolls <- replicate(10000, Roll())

qplot(rolls, binwidth=1)
