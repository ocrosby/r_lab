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






a <- seq(10, 120, by = 10)
a
dim(a) <- c(3, 4)
a

class(a)
typeof(a)
