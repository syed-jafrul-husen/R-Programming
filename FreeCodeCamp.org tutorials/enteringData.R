# Entering data

# this is the version of Ad hoc data

# Many methods:
  #colon, seq(sequence), c(concatenate), scan & rep
# "<-" is assignment operator in R



#Assignment Operator #################################

# Use "<-" to assign values to a variable. this is read as
# "gets." It can go the other direction "->" and you can use
# an equals sign "=" but those are generally poor form in R.

#In RStudio the shortcut option+- (option-dash) inserts 
#The assignment operator and a space: "<-"


# COLON operator ######################

# Assigns number 0 through  10 to x1
x1 <- 0:10
x1

#Descending order
x2 <- 10:0
x2



#SEQ ###################
?seq   #R help on seq

#Ascending values (duplicate 1:10)
(x3 <- seq(10))

# Specify change in values
(x4 <- seq(30, 0, by = -3))


#Enter multiple values with C #########################

# c = concatenate(or combine or collect)
?c   # R help on c

x5 <- c(5, 4, 1, 6, 7, 2, 2, 3, 2, 8)
x5

#SCAN ############################
?scan # R help on scan

x6 <- scan()   #After running this command go to the console 
# Hit return after each number
# Hit return twice to stop
x6



# Rep ##################

?rep
x7 <- rep(TRUE, 5)
x7

# Repeats set
x8 <- rep(c(TRUE, FALSE), 5)
x8

#repeat items in set
x9 <- rep(c(TRUE, FALSE), each = 5)
x9


# Clean Up

#Clean environment
rm(list = ls())
