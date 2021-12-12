
# S3 Class ##############################

# To create an object of this class we will create a list that will contain all class members. Then this
# list is passed to the class() method as an argument.
a <- list(name="Adam", Roll_no=15)
# Defining a class "Student"
class(a) <- "Student"
# Creation of object
a

# The generic functions are a good example of polymorphism. 
# To understand the concept of generic functions consider 
#the print() function. The print() function is a collection 
# of various print functions that are created for different
# data types and data structures in the R Programming 
# Language. It calls the appropriate function depending upon 
# the type of object passed as an argument

# Seeing different types of print function
methods(print)

# Now lets create generic function of our own
a = list(name="Adam", Roll_no=15)
class(a) = "Student"
print(a)
# Now lets print all our members in spacified format
print.Student <- function(obj){
  cat("name: ", obj$name, "\n")
  cat("Roll No: ", obj$Roll_no, "\n")
}
print(a)

# To view the S3 attributes
attributes(a)

# Add attributes
attr(a, "age") <- c(18)
attributes(a)


# Inheritance in S3 class
# Inheritance allows one class to derive the features and functionalities 
# of another class. The feature facilitates code resuability

# student function with argument
student <- function(n, r){
  value <- list(name=n, Roll_no=r)
  attr(value, "class") <- "student"
  value
}
print.student <- function(obj){
  cat("Name: ", obj$name, "\n")
  cat("Roll ", obj$Roll_no)
}
# inheritance is done while creating another class by doing class(obj) <- c(child, parent)
s <- list(name="Kesha", Roll_no=21, country="Bangladesh")
class(s) <- c("Student", "student")
s
# The following class overwrites the method for class student
print.student <- function(obj){
  cat(obj$name, "is from", obj$country, "\n")
}
s


# S4 class #####################
# S4 class has a predefined definition.
# this function contain auxiliary functions for defining methods and generics
# syntax: setClass("myClass", slots=list(name="character", Roll_no="numeric"))
# The new() function is used to create object of S4 class

setClass("Student", slots=list(name="character", Roll_no="numeric"))
a <- new("Student", name="Adam", Roll_no=20)
a

# Create S4 objects from generator function
# setClass() returns a generator function which helps in creating objects and it acts as a constructor
stud <- setClass("Student", slots=list(name="character", Roll_no="numeric"))
stud
stud(name="Adam", Roll_no=15)

# Inheritance in S4 class
# Define S4 class
setClass("student", 
         slots=list(name="character",
                    age="numeric", rno="numeric")
         )
# Define a function to display object details
setMethod("show", "student",
          function(obj){
            cat(obj@name, "\n")
            cat(obj@age, "\n")
            cat(obj@rno, "\n")
          })
# Inherit from student
setClass("InternationalStudent",
         slots=list(country="character"),
         contains="student")
# Rest of the attribute will inherited from student
s <- new("InternationalStudent", name="Adam",
         age=22, rno=15, country="Bangladesh")
show(s)


# Reference class ###################
# Reference class is an improvement over s4 class
library(methods)
# setRefClass returns a generator
movies <- setRefClass("movies", fields=list(
  name = "character", leadActor="character", rating="numeric"
))
movieList <- movies(name="Iron Man", leadActor="Robert downey Jr", rating = 7)
movieList


# Add method to our class
library(methods)
movies <- setRefClass("movies", fields=list(name="character", leadActor="character", 
                                            rating="numeric"), methods=list(
                                              increment_rating = function(){
                                                rating <<- rating + 1
                                              },
                                              decrement_rating = function(){
                                                rating <<- rating - 1
                                              }
                                            ))
movieList <- movies(name="Iron Man",
                    leadActor="Robert downey Jr", rating=7)
movieList$rating
movieList$increment_rating()
movieList$rating



# R objects ###################
# in R programming language there are 5 basic types of language

# 1: vectors
x <- c(1, 2, 3, 4, 5)
y <- c("a", "b", "c") 
z <- 5
print(class(x))
print(class(y))
print(class(z))

# 2: Lists
# List can contain heterogeneous data types such as vectors or another lists
ls <- list(c(1, 2, 3, 4), list("a", "b", "c"))
print(ls)
print(class(ls))

# 3: matrices
# 4: factors
# 5: Arrays
# 6: Data frames


# Encapsulation in R programming #############################################
# OOP has the following features:
    # Class
    # Object
    # Abstraction
    # Encapsulation
    # Polymorphism
    # Inheritnce

# While working with classes and dealing with sensitive data, implementing global variable to all the 
# variables used within the program code is not a good choice because then the chance of getting data
# tempered will increase. For this purpose OOP has the concept of Encapsulation. Encapsulation ensures
# the outside view of the object is clearly separated from the inside view of the object by hiding the
# implementation of operation and state from the interface which is available to all other objects

l <- list(name="GeeksForGeeks", state="Up", sector=136)
class(l) <- "info"
l

s <- list(country="Bangladesh", state="Sylhet", street_no.=110)
class(s) <- "address"
s



# Polymorphism ##################################
# R language is evolving and it implements parametric polymorphism, which means that methods in R refer
# to functions, not class.
plot
help("UseMethod")
methods(plot)
# X window system graphics
x11(width=15, height=13)
# The runif() function generates random deviates of the uniform distribution
x <- 3*runif(40) + (1:40)
par(mar=c(20, 20, 1, 1))
plot(x, type='l', col='#343deb')
z <- locator(1)

# Input is data frame
X11(width = 6, height = 6)
set.seed(280870)
x <- c(4, 3, 1, 2, 2, 4, 6, 4, 5, 5, 
       4, 4, 5, 4, 4, 8, 4, 1, 2, 7)
y <- x * rnorm(20, 1, 0.3)
z <- x * y
# Taking a data frame
df <- data.frame(x, y, z)
par(mar = c(0.1, 0.1, 0.1, 0.1))
# Using plot()
plot(df, col = '#a832a6', pch = 16, cex = 1.5)
z <- locator(1)

colors <- c("violet", "indigo", "blue", "green",
            "yellow", "orange", "red")
summary(colors)

state.region
# Provides summarised results under each region
summary(state.region) 
# As maxsum is given as 3, totally we should have 3 regions
# But here we have 4 regions and hence highest count region,
# next highest count region is displayed and the other 
# regions are clubbed under Other
summary(state.region, maxsum = 3)

# Creating generic method
display <- function(obj){
  UseMethod("print")
}
print.bank <- function(obj){
  cat("Name is ", obj$name, "\n")
  cat(obj$account_no, " is the Acc no of the holder", "\n")
  cat(obj$saving, " is the amount of saving in the account \n")
  cat(obj$withdrawn, " is the withdrawn amount\n")
}
x <- list(name="hasan", account_no=1234, saving=1500, withdraw=267)
class(x) <- "bank"
display <- function(obj){
  UseMethod("print")
}
display(x)



# Inheritance ###########################################
# Inheritance is one of the concept in OOP by which new classes can be derived from existing or base
# classes helping in re-usability of code.

# Inheritance in S3 class
