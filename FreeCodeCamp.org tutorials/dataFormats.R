# Data Formats
    # Data types
    # Data structures

#Data types:
  #numeric(integer, single,& double), character,logical, complex, & raw.



#Data Structure:
  #Vector, matrix/array, data frame, list

#Vector:
  # 1+ numbers in a 1d array
  # All same data type
  # R's basic data object

#Matrix:
  # Two dimensional
  # Same Length
  # Same data class
  #Columns not named

#Array:
  # Identical to a matrix but 3+ dimensions

#Data Frame:
  # Can have vector of multiple types
  # All same length
  # Closest R analogue to spreadsheet
  # Special functions

#List:
  # Most flexible
  # Ordered collection of elements
  # Any class, length, or structure
  # Can include lists


# Coersion is good
  #That is, changing a data object from one type to another:
      #character to logical
      #matrix to data frame
      #double to integer



#Data types ############################################


# Numeric

n1 <- 15 #Double precision by default
n1
typeof(n1)

n2 <- 1.5
n2
typeof(n2)


#Character
c1 <- "c"
c1
typeof(c1)

c2 <- "a string of text"
c2
typeof(c2)


# Logical
l1 <- TRUE
l1
typeof(l1)

l2 <- F
l2
typeof(l2)



# Data Structure ##########################################

## Vector ###########
v1 <- c(1, 2, 3, 4, 5)
v1
is.vector(v1)

v2 <- c("a", "b", "c")
v2
is.vector(v2)

v3 <- c(TRUE, FALSE, FALSE, TRUE)
v3
is.vector(v3)



# Matrix ###########################
m1 <- matrix(c(T, T, F, F, T, F),nrow=2)
m1

m2 <- matrix(c("a","b", "c", "d"), 
       nrow = 2,
       byrow = T)
m2


##Array #########
#Give data, then dimension (rows, columns, tables)
a1 <- array(c(1:24), c(4,3,2))
a1


# Data Frame ################

# Can combine vector of same length
vNumeric <- c(1, 2, 3)
vCharacter <- c("a", "b", "c")
vLogical <- c(T, F, T)

dfa <- cbind(vNumeric, vCharacter, vLogical)
dfa  #Matrix of one data type

df<- as.data.frame(cbind(vNumeric, vCharacter, vLogical))
df  #make a data frame with three different data types                   



# List ###################
o1 <- c(1,2,3)
o2 <- c("a", "b", "c", "d")
o3 <- c(T, F, T, T, F, T)

list1 <- list(o1, o2, o3)
list1

list2 <- list(o1, o2, o2, list1)
list2


# Coercing types ##########################

# Automatic coercion

# Goes to "least restrictive" data type
(coerce1 <- c(1, "b", TRUE))
typeof(coerce1)


## coerce numeric to integer
(coerce2 <- 5)
typeof(coerce2)

(coerce3 <- as.integer(5))
typeof(coerce3)


# coerce character to numeric
(coerce4 <- c("1", "2", "3"))
typeof(coerce4)

(coerce5 <- as.numeric(c("1", "2", "3")))
typeof(coerce5)


#Coerce matrix to data frame #########
(coerce6 <- matrix(1:9, nrow=3))
is.matrix(coerce6)

(coerce7 <- as.data.frame(matrix(1:9 , nrow=3)))
is.data.frame(coerce7)
