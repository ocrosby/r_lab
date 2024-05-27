result <- 2 + 3
print(c("The result of 2 + 3 is", result, "Cool"))

round(2,4271)
mean(1:10)
b <- mean(a)
c <- round(b)

print(b)
print(c)

args(round)

round(2.4271, digits = 2)


# Building a Function

deck <- c("Duke", "Assassin", "Captain", "Ambassador", "Contessa")
print(deck)

hand <- sample(deck, size = 3, replace = TRUE)
print(hand)

draw <- function() {
  deck <- c("Duke", "Assassin", "Captain", "Ambassador", "Contessa")
  hand <- sample(deck, size = 3, replace = TRUE)

  return(hand)
}


print(draw())


# Vector Recycling

# R duplicates values from the shorter vector when doing operations on two
# vectors of different length (weird)
#
# matrices recycle as well

exmpl <- matrix(1:10, nrow = 4, ncol = 4)
exmpl

age <- c(23, 26, 24, 26)

attributes(age) # The attribute set is empty so it returns NULL
names(age)

names(age) <- c("George", "John", "Paul", "Ringo")
age

# Determine attributes of the age
attributes(age)

# Display names associated with the vector
names(age)

# Replacing names in the vector
names(age) <- c("George Harrison", "John Lennon", "Paul McCartney", "Ringo Starr")
print(age)


# Removing names from the vector
names(age) <- NULL
print(age)


# Indexing and Slicing

# For selecting values from a vector

# Create a vector named n.deck with values 6, 7, 8, 9, 10
# Note that this vector contains the same number of elements as deck
n.deck <- c(6:10)

# Display the value of the n.deck vector
print(n.deck)

# Display the value of the deck vector
print(deck)

# Access the fourth element of the deck variable
deck[4]

# Get the vector resulting from the removal of the fourth element of the 
# deck vector
deck[-4]

# Get the vector resulting from the removal of the first element of the 
# deck vector
deck[-1]

# Extract the first, third, and fifth elements from the deck vector as a 
# new vector
print(deck)
deck[c(1,3,5)]

# Indexing by name
# Assign names from deck to n.deck
names(n.deck) <- deck
print(n.deck)

n.deck

# Once names have been assigned we can access a value by name
n.deck["Contessa"]

# We can also generate a new vector with names 
n.deck[c("Contessa", "Duke", "Ambassador")]

# Slicing, referes to selecting several values at once
# vector.name[n1:nk]
# where n1 is the starting index and nk is the stopping index

print(n.deck)
print(n.deck[2:4])

lv <- seq(10, 100, by = 10)
print(lv)

# Slicing by removal of a subset of elements
lv[-(4:7)]


# Slicing with a comparison operator
lv[lv > 30] # returns every value greater than 30


# Matrices

# subsetting

# Create a matrix named mtrx with values 1 to 12 and 3 rows
mtrx <- matrix(1:12, nrow = 3)

# Display the matrix
print(mtrx)

mtrx[1, 2] # returns the value in the first row and second column

# calling an entire row

mtrx[1, ] # returns the first row


# calling an entire column

mtrx[, 2] # returns the second column

# Slicing a matrix

mtrx[1:2, 2:3] # returns the first two rows and the second and third columns

mtrx[c(1, 3), c(1, 3)] # returns the first and third rows and the first and third columns

a <- seq(10, 120, by = 10)
a
dim(a) <- c(3, 4)
a

class(a)
typeof(a)


vector <- c(3, 5, 2, 3, 1, 4)

# min(), max(), mean(), median() – return the minimum / maximum / mean / median value of a numeric vector, correspondingly
# sum() – returns the sum of a numeric vector
# range() – returns the minimum and maximum values of a numeric vector
# abs() – returns the absulute value of a number
# str() – shows the structure of an R object
# print() – displays an R object on the console
# ncol() – returns the number of columns of a matrix or a dataframe
# length() – returns the number of items in an R object (a vector, a list, etc.)
# nchar() – returns the number of characters in a character object
# sort() – sorts a vector in ascending or descending (decreasing=TRUE) order
# exists() – returns TRUE or FALSE depending on whether or not a variable is defined in the R environment

print(min(vector))
print(mean(vector))
print(median(vector))
print(sum(vector))
print(range(vector))
print(str(vector))
print(length(vector))
print(sort(vector, decreasing=TRUE))
print(exists('vector'))  ## note the quotation marks
exists('int2')
exists('int3')


# Matrices are 2 dimensional arrays
# they have a fixed number of rows and colums
# can contain only one basic data type

# Creating a matrix

??matrix
mtrx <- matrix(1:12, nrow = 3)
mtrx

# seq of value is entered by columns

# to organize by row

mtrx <- matrix(1:12, nrow = 3, byrow = TRUE)
mtrx

usa <- c(1.3, 1.5, 1.2, 1.4, 1.5)
usa
de <- c(0.2, 0.4, 0.7, 0.8, 0.8)
de

ngo <- cbind(usa, de)
ngo

colnames(ngo)
rownames(ngo)
rownames(ngo) <- c("2013", "2014", "2015", "2016", "2017")
ngo

ngo <- t(ngo) # transpose
ngo

# Adding a row for india using the rbind function

ind <- c(2, 2.2, 2.4, 2.5, 2.6)
ngo <- rbind(ngo, ind)
ngo


# Matrix Arithmetic
# element-wise operations

b.office <- c(171.5, 292, 281.6, 460.6, 139.3, 288)
matrix.mat <- matrix(b.office, nrow = 3, byrow = TRUE, dimnames = list(c("The Matrix", "Reloaded", "Revolutions)"), c("US", "Worldwide")))

matrix.mat


install.packages("rstudioapi")

# scalar multiplication

matrix.scaled <- matrix.mat / 1000

matrix.scaled

matrix.mat - 121


budget <- matrix(c(63, 150, 150), nrow = 3, ncol = 2)
budget

margin <- matrix.mat - budget
margin


# Matrix Multiplication

# element-wise multiplication

matrix.mat * budget

# inner multiplication

matrix.mat %*% budget

# outer multiplication

outer(matrix.mat, budget)

# returns the sum for each column in your data structure
colSums(matrix.mat)

# returns the sum for each row in your data structure
rowSums(matrix.mat)
matrix.mat


# returns the mean for each column in your data structure
colMeans(matrix.mat)

# returns the mean for each row in your data structure
rowMeans(matrix.mat)

total <- colSums(matrix.mat)
rowSums(matrix.mat)

average <- colMeans(matrix.mat)
rowMeans(matrix.mat)

matrix.prelim <- rbind(matrix.mat, average, total)
matrix.prelim


rstudioapi::isAvailable("0.99.149")

install.packages("devtools")
library(devtools)


# Categorical Data

# Factor variables

marital.status <- c("Married", "Married", "Single", "Married", "Divorced", "Widowed", "Divorced")

str(marital.status)

marital.factor <- factor(marital.status)
marital.factor

typeof(marital.factor)
str(marital.factor)

new.factor <- factor(marital.status, levels = c("Single", "Married", "Divorced", "Widowed"))
str(new.factor)

levels(new.factor) <- c("S", "M", "D", "W")
str(new.factor)

new.factor <- factor(marital.status, levels = c("Single", "Married", "Divorced", "Widowed"), labels = c("Sin", "Mar", "Div", "Wid"))
str(new.factor)

ordered.factor <- factor(marital.status, ordered = TRUE, levels = c("Single", "Married", "Divorced", "Widowed"), labels = c("Sin", "Mar", "Div", "Wid"))
ordered.factor


# Fundamentals of Programming

# Lists

# 1. recursive vectors
# 2. group R objects into a set
# 3. can store other lists
# 4. one-dimensional
# 5. can store elements of different basic types
# 6. no inherent structure

# hierarchical structures
# tree-like elements

my.book <- list("1984", "Georgie Orwell", 1949, list(c(1:8), c(1:10), c(1:6)), "Newspeak")
my.book
str(my.book)

# assigning names
my.book <- list("1984", "Georgie Orwell", 1949, list(PartOne = c(1:8), 
                                                     PartTwo = c(1:10), 
                                                     PartThree = c(1:6)), "Newspeak")
my.book
str(my.book)

new.book <- list("1984", "Georgie Orwell", 1949, list(c(1:8), c(1:10), c(1:6)), "Newspeak")
names(new.book)
str(new.book)


# Subsetting Lists

my.book[1:2]
my.book[4]
my.book[[4]]
my.book[[4]][1]

# Fundamentals of Programming

# Relational Operators

# ==, !=, <, >, <=, >=

# Relational operators can be used with different types of objects

"cat" == "cat"
"cat" == "car"
TRUE == TRUE
TRUE == FALSE
"sugar" != "salt"
3 != 3
TRUE != FALSE

17 > 21

17 > 5

"rat" > "cat"

TRUE < FALSE

7 >= 7

7 >= 4

7 >= 8


# Logical Operators

# & | and !

w <- 9

(w < 12) & (w > 6)

(w > 1) | (w < 12)

!(w > 1)
w

!TRUE

!FALSE

!(4 < 3)


# Vectors and logical operators

v <- c(1, 3, 5, 7)
w <- c(1, 2, 3, 4)

v == 3
3 == w

12 > c(11, 11, 13, 14)

c(11, 12, 13) >= c(10, 12, 14)

(v >= 3) & (v < 7)

(v >= 3) | (v < 7)

# If, Else, Else If Statements in R

if(A) {
  B
}

num <- -3
if(num < 0) {
  print("your number is negative")
}

v <- 8
if(v < 0) {
  v <- v*-1
  print("I have made your object positive. Look:")
  print(v)
} else {
  print("your object is already positive or zero, so I did nothing")
}


v <- -44
if (v < 0) {
  v <- v * -1
  print("I have made your object positive. Look:")
  print(v)
} else if (v == 0) {
  print("your object is zero")
} else {
  print("your object is already positive")
}

z <- c(1, 0, -3, 5)
w <- 6

if(z < 1) {
  print("My parrot sings 'Got save the queen'")
}

z < 3


# Loops in R

# a method to automate a task that has multiple steps

# For Loop

for (i in 1:5) {
  print(i)
}

title <- c("Catch", "Me", "If", "You", "Can")
for (word in title) {
  print(word)
  #print("Tom Hanks is a sweetheart")
}

new.title <- vector(length = 5)
new.title

for(i in 1:5) {
  new.title[i] <- title[i]
}

new.title

# While Loop

while (condition) {
  expression
}

i <- 1
while(i < 5) {
  print(i)
  i <- i + 1
}

# To stop an infinite loop either press escape or press the stop button in the console

n <- -12
while(n < 0) {
  print(paste("Your value equals", n))
  n <- n + 1
}

# Repeat Loop

repeat {
  expression
}

n <- 1
repeat {
  print(n)
  n <- n + 1
  if(n > 5) {
    break
  }
}

# Break and Next Statements

# Break statement

for (i in 1:10) {
  if(i == 5) {
    break
  }
  print(i)
}

# Next statement

for (i in 1:10) {
  if(i == 5) {
    next
  }
  print(i)
}

# Functions in R

# Functions are a set of instructions that are grouped together to perform a specific task

# Functions are defined using the function keyword

# Function definition

# function.name <- function(arg1, arg2, ...) {
#   expression
# }

# Function call

# function.name(arg1, arg2, ...)

# Example

addition <- function(a, b) {
  result <- a + b
  return(result)
}

addition(2, 3)

# Loading Data

my.pok = read.table("./data/pokRdex-comma.csv", 
                    sep = ",", 
                    quote="\"", 
                    header = TRUE, 
                    stringsAsFactors = FALSE)



deck <- c("Duke", "Assassin", "Captain", "Ambassador", "Contessa")
print(deck)

hand <- sample(deck, size = 3, replace = TRUE)
print(hand)

draw <- function() {
  deck <- c("Duke", "Assassin", "Captain", "Ambassador", "Contessa")
  hand <- sample(deck, size = 3, replace = TRUE)
  
  return(hand)
}

shuffle <- function(deck) {
  deck_length <- length(deck)
  
  random <- sample(1:deck_length, size = deck_length)
  deck.s <- deck[random]
  
  return(deck.s)
}

deal <- function(deck, n) {
  shuffled <- shuffle(deck)
  cards <- shuffled[1:3]
  
  return(cards)
}

deal(deck)



# Data Frames

# Data frames are two-dimensional data structures
# They are used to store data in rows and columns
# They can store different types of data
# They are similar to matrices but have additional features

# Vectors of equal length
# 2. data.frame() function

title <- c("Star Wars", "The Empire Strikes Back", "Return of the Jedi", 
           "The Phantom Menace", "Attack of the Clones", "Revenge of the Sith",
           "The Force Awakens")
year <- c(1977, 1980, 1983, 1999, 2002, 2005, 2015)
length.min <- c(121, 124, 131, 136, 142, 140, 135)
box.office.mil <- c(787, 534, 572, 1027, 657, 849, 2059)

my.data <- data.frame(title, year, length.min, box.office.mil)
my.data

names(my.data) <- c("Movie Title", "Release Year", "Length in Minutes", "Box Office")
my.data

str(my.data)

# install.packages("tidyverse")

# library(tidyverse)

library(ggplot2) # data visualization
library(dplyr) # data manipulation tools, filter, arrange, mutate
library(readr) # data import
library(tidyr) # data tidying tools, gather, spread
library(tibble) # data frame creation
library(purrr) # functional programming tools

