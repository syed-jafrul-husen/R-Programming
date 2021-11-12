# Selecting Cases
# Allows you to focus on analysis
# Select by category or by value or both



# Install and Load packages
library(datasets)

#Load data
head(iris)


# All Data ################
hist(iris$Petal.Length)
summary(iris$Petal.Length)

summary(iris$Species)   #Get names and n for each Species


## Select by Category ############

#Versicolor
hist(iris$Petal.Length[iris$Species=="versicolor"],
     main = "Petal Length: Versicolor")

#Virginica
hist(iris$Petal.Length[iris$Species=="virginica"],
     main = "Petal Length: Virginica")

#Setosa
hist(iris$Petal.Length[iris$Species=="setosa"],
     main = "Petal Length: Setosa")



# Select by value ########################
# Short petals only(all setosa)
hist(iris$Petal.Length[iris$Petal.Length<2],
     main = "Petal Length < 2")

# Multiple selectors
# Short virginica petals only
hist(iris$Petal.Length[iris$Species == "virginica" &
                         iris$Petal.Length<5.5],
     main="Petal Length: Short Virginica")


# Create Subsample

#Format: data[rows, columns]
#Leave blank rows or columns to select all
i.setosa <- iris[iris$Species=="setosa", ]

# Explore Subsample
head(i.setosa)
summary(i.setosa$Petal.Length)


# Clean Up

#clear environment
rm(list = ls())
