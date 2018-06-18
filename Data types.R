#Atomic vector

five <- 5
five

is.vector(five)

length(five)

#length more than 1
series <- c(1,3,5,7,9,11)

#integers
series <- c(1L, 5L, 4L)
sum(series)

#To check the type of Atomic vector
typeof(series)


#Characters
a = "one"
b = "1"

#Logical or boolean 
r = 3 > 4
isFALSE(r)

#Data Attribute - names
names(series) = c("one", "three", "five", "seven", "nine", "eleven")

attributes(series)

length(series)

series +1

#Data Attribute Dim 

dim(series) = c(1,2,3)
series

#Data Attribute Matrices

mat <- matrix(series, nrow=2, byrow=T)
mat

#Data Attribute Array

ar<- array(c(11:14, 21:24, 31:34), dim= c(2,2,3))
ar

#Deck of cards

hand1<- c("ace", "king", "Queen", "jack", "ten", "spades","spades","spades","spades","spades")
hand1

m = matrix(hand1, nrow=5)
#OR
m = matrix(hand1, ncol=2)
#OR
dim(hand1) <- c(5,2)
hand1
class(hand1)
typeof(hand1)

attributes(hand1)

class(series)

#Current time
time <- Sys.time()
typeof(time)
class(time)
unclass(time)

#factors

gender <- factor(c("male","female", "female", "male"))
typeof(gender)

class(gender)

unclass(gender)

#To convert to character
char <- as.character(gender)
typeof(char)
class(char)

#Coercian
co <- c(T, 10)
class(co)

#Lists

list1 <- list(100:105, "house", list(T,F,T))
list1

#Single playing card
Card <- list("Ace","Hearts", 1)
Card

#Data Frames
df = data.frame(face=c("ace", "two", "six"), suit = c("clubs","clubs","clubs"), value = c(1,2,3))
df

#Function
deal <- function(deck,i,j){
  deck[i,j]
}

replicate(10,deal(sample(1:52, size=1),c(1,2,3)))

#Shiffling the card




shuffle = function(){
  random = sample(1:52, size=52)
  decknew <- deck[random,]
  decknew
}

shuffle()

deal(decknew,3:5,1:3)

#Using dollar signs to fetch from Dataframes
mean(decknew$value)
median(decknew$value)

#List with names

lst= list(numbers = c(1,2,3), logical = T, strings = c("a", "bc", "cd"))
lst

sum(lst$numbers)
deck[1,1:3] 
rollback(deck)
sum(decknew$value)
