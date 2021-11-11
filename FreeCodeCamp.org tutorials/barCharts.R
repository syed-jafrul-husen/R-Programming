# Load datasets packages #################################
library(datasets)


# Load Data #############################
?mtcars
head(mtcars)


# Bar charts  ###################
barplot(mtcars$cyl)      #Doesn't work

#Need a table with frequencies for each category
cylinders <- table(mtcars$cyl)  #create table
barplot(cylinders)    #bar chart
plot(cylinders)     # Default X-Y plot (lines)


# Clear environment
rm(list = ls())
