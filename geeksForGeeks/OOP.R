
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
student <- function(n, a, r){
  value <- list(name=n, age=a, rno=r)
  attr(value, "class") <- student
  value
}
print.student <- function(obj){
  cat(obj$name, "\n")
  cat(obj$age, "\n")
  cat(obj$rno, "\n")
}
s <- list(name="Kalam", age=21, rno=4, country="Bangladesh")
class(s) <- c("InternationalStudent", "student")
cat("The method print.student() is inherited:\n")
print(s)

# overwriting the print method
print.InternationalStudent <- function(obj){
  cat(obj$name, "is from", obj$country, "\n")
}
print(s)

#check inheritance
inherits(s, "student")


# Inheritance in S4 class
setClass("student", slots=list(
  name="character", age="numeric", rno="numeric"
))
setMethod("show", "student",
          function(obj){
            cat(obj@name, "\n")
            cat(obj@age, "\n")
            cat(obj@rno, "\n")
          })
#inherit from student
setClass("InternationalStudent", slots=list(country="character"), contains="student")

s <- new("InternationalStudent", name="Kalam", age=21, rno=96, country="Bangladesh")
show(s)


# Inheritance in Reference class
# Define class 
student <- setRefClass("student",        
                       fields = list(name = "character", 
                                     age = "numeric", rno = "numeric"), 
                       methods = list( 
                         inc_age <- function(x) { 
                           age <<- age + x 
                         }, 
                         dec_age <- function(x) { 
                           age <<- age - x 
                         } 
                       ) 
) 
# Inheriting from Reference class 
InternStudent <- setRefClass("InternStudent",  
                             fields = list(country = "character"),  
                             contains = "student", 
                             methods = list( 
                               dec_age <- function(x) { 
                                 if((age - x) < 0)  stop("Age cannot be negative") 
                                 age <<- age - x 
                               } 
                             )  
) 
# Create object 
s <- InternStudent(name = "Utkarsh", 
                   age = 21, rno = 96, country = "India") 
s$dec_age(5) 
s$age 

s$dec_age(20)  
s$age 




# Abstraction #############################
add_2 <- function(y){2+y}
add_2(1:10)

add_x <- function(x){
  function(y){ x+y }
}
add_2 <- add_x(2)
add_7 <- add_x(7)

for (i in 1:nboot){
  bootmeans[i] <- mean(sample(data, length(data), replace=TRUE))
}

make_container <- function(n){
  x <- numeric(n)
  i <- 1
  function(value=NULL){
    if(is.null(value)){
      return(x)
    }
    else{
      x[i] <<- value
      i <<- i+1
    }
  }
}
bootmeans <- make_container(nboot)
for(i in 1:nboot){
  bootmeans(mean(sample(data, length(data), replace=TRUE)))
}



# Looping over objects #################################
# One of the biggest issues with the "for" loop is its memeory consumption and its slowness in executing
# repetative task. And when its come to dealing with large data set and iterative over it, for loop 
# is not advised. R provides many alternatives to be applied to vectors for lopping operation that are
# pretty useful when working interactively on a command line. In this article we deal with apply()
# function and its vatiation: apply(), lapply(), sapply(), tapply(), mapply()

# apply():   Applies a function over the margins of an array or matrix
# lapply():  Apply a function over a list or vector 
# sapply():  Same as lapply() but with spacified result
# tapply():  Apply a function over a ragged array
# mapply():  Multivariate version of lapply()

# apply()
A = matrix(1:9, 3, 3)
print(A)
# Applying apply() over a row of matrix. Here margin 1 is for row
r = apply(A, 1, sum)
print(r)
# Applying apply() over a column of matrix. Here 2 is for column
c = apply(A, 2, sum)
print(c)

# lapply():
  # This function is used to apply a function over a list. It always return a list of the same length as
  # the input list
A = matrix(1:9, 3, 3)
B = matrix(10:18, 3, 3)
myList = list(A, B)
determinant = lapply(myList, det)
print(determinant)

# sapply()
# sapply(): This function is used to simplify the result of lapply(), if possible. Unlike lapply(), 
# the result is not always a list. The output varies in the following ways:-
  # If output is a list containing elements having length 1, then a vector is returned.
  # If output is a list where all the elements are vectors of same length(>1), then a matrix is returned.
  # If output contains elements which cannot be simplified or elements of different types, a list 
  # is returned.
A = list(a=1:5, b=6:10)
means = sapply(A, mean)
print(means)

# tapply():
  # This function is used to apply a function over a subset of vectors given by a combination of factors.
Id = c(1, 1, 1, 1, 2, 2, 2, 3, 3)
val = c(1, 2, 3, 4, 5, 6, 7, 8, 9)
result = tapply(val, Id, sum)
print(result)

# mapply():
  # It's a multivariate version of lapply(). This function can be used over several list simultaneously.
A = list(c(1, 2, 3, 4))
B = list(c(2, 5, 1, 6))
result = mapply(sum, A, B)
print(result)





# Creating, Listing and Deleting, Objects in memory #########################

# Listing object in memory
# numeric object
x = 5
# String object
name = "Jafrul"
# Vector object
vec1 = c(1, 2, 3)
vec2 = c("a", "b", "c")
# List object
listOfNumber = list( 
  "Numbers" = vec1, 
  "Characters" = vec2 
) 
# Data frame object 
myDataFrame = data.frame( 
  "Numbers" = vec1, 
  "Characters" = vec2 
) 
# Listing objects using object() 
print(objects()) 
# Listing objects using ls() 
print(ls()) 


# The code below returns all objects 
# whose name contains an v 
print(ls(pattern = "v")) 
# The code below returns all objects 
# whose name ends with "e" 
print(ls(pattern = "e$")) 


# Deleting object in memory
# Deleting object x using rm() 
rm(x) 
# Deleting object myDataFrame using remove() 
remove(myDataFrame) 
ls()

# Deleting All object in memory
rm(list=ls())
print(ls())




# S3 class ############################################
x <- c("female", "male", "male", "female")
class(x)
# Using the command class() to append the class of the vector
class(x) <- append(class(x), "Gender")
class(x)

age <- c(12, 10, 9)
e <- environment()
e
# setting the value of a variable
assign("age", 3, e)
ls()
# Getting the values of the variable
get("age", e)


# For creating S3 object there are two main steps:
    # Create a list with the required components
    # Then the class can be formed by command class(x) and a name should be assigned to this class
x <- list(name="Jafrul", account_no=1234, saving=1500, withdraw=234)
class(x) <- "bank"
x

# The S3 system in R language consists of three main components
    # Generic function, method, attributes
# The function print() is a generic function and hence is a collection of methods
methods(print)

# In the above long list there are important methods like print.factor(). When we print a factor through
# function print(), the call would automatically dispatch to print.factor()
# The class created as - bank, would search for a method named print.bank(), and since no such method 
# exists print.default() is used. 
# Generic functions have a default method which is used when no match is available

# Creating own method
x <- list(name="Jafrul", account_no=12345, saving=1200, withdraw=750)
class(x) <- "bank"
print.bank <- function(obj){
  cat("Name is ", obj$name, "\n")
  cat(obj$account_no, " is the account number of the holder\n")
  cat(obj$saving, " is the amount of saving the account \n")
  cat(obj$withdraw, " is the withdrawn amount")
}
x




# Explicit coercion in R programming #################################
# Coercing of an object from one type of class to another is known as explicit coercion
# Normally whatever is converted implicitly is referred to as coercion and if converted explicitly then it
# is known as casting. Conversion signifies both types- coercion and casting
x <- c(0, 1, 0, 3)
class(x)
# Converting it to integer type 
as.numeric(x) 
# Converting it to double type 
as.double(x) 
# Converting it to logical type 
as.logical(x) 
# Converting it to a list 
as.list(x) 
# Converting it to complex numbers 
as.complex(x) 




# R6 classes
# In OOP of R language, encapsulation means binding of the data and methods inside a class. 
# dplyr and shiny package use R6 classes
library(R6)

Queue <- R6Class("Queue",
                 
                 # public member of the class that can be accessed by object
                 public = list(
                   
                   # Constructor/ Initializer
                   initialize = function(...)
                   {
                     private$elements = list()
                   },
                   
                   # Add to the queue
                   enqueue = function(num)
                   {
                     private$elements = append(private$elements, num)
                   },
                   
                   # Remove from queue
                   dequeue = function()
                   {
                     if(self$size()==0)
                       stop("Queue is empty")
                     element <- private$elements[[1]]
                     private$elements <- private$elements[-1]
                     element
                   },
                   
                   # Get the size of elements
                   size = function()
                   {
                     length(private$elements)
                   }),
                 
                 private = list(
                   # queue list
                   elements = list()
                  )
                 )
# Create an object
QueueObject = Queue$new()
QueueObject$enqueue(2)
QueueObject$enqueue(5)
QueueObject$dequeue()
QueueObject$dequeue()


# The following example is a demonstration of Inheritance in R6 classes by creating another class 
# childQueue that inherits the class Queue.
childQueue <- R6Class("childQueue",
                      # inherit queue class which is super class
                      inherit = Queue,
                      
                      public = list(
                        initialize = function(...)
                        {
                          private$elements <- list(...)
                        },
                        size = function()
                        {
                          # super is used to access methods from super class
                          super$size()
                        }
                      )
                      )
childQueueObject <- childQueue$new()
childQueueObject$enqueue(2)
childQueueObject$enqueue(3)
childQueueObject$dequeue()
childQueueObject$dequeue()
childQueueObject$dequeue()




# Getting attribute of Objects
# attribute() function in R is used to get all attributes of data. 
# This function is also used to set new attribute of data

info = data.frame(iris)
# Load info set that you want to work on
data(info) 
# Print first 6 rows of info set data                                            
head(info)                                                
# Apply attributes function
attributes(info) 


# Set different column names
# retain dataframe class
attributes_list <- list(names = c('Sepal.Length' ,'Sepal.Width' ,
                                  'Petal.Length', 'Petal.Width',
                                  'Species'),
                        class = "data.frame",
                        row.names= c("NA","NA","NA","NA"))

# New attributes from list added to info database
attributes(info) <- attributes_list
attributes(info)

# attr() will return specific data, but this function needs precise information about the data.
data(info) 
# Apply attr() function
attr(x = info, which = "names")



# Get or set names of elements of an object #############################

x <- c(1, 2, 3, 4, 5) 
# Assigning names using names() function 
names(x) <- c("gfg1", "gfg2", "gfg3", "gfg4", "gfg5") 
# Printing name vector that is assigned  
names(x) 
# Printing updated vector 
print(x) 

library(datasets)  
# Importing dataset  
head(airquality)  
# Calling names() function to get names 
names(airquality)

