# summary()

# After the pictures...
# get some precision
  # Counts for categories
  # Quartiles & mean for quantitative variables


# Install and Load the packages
library(datasets)

# Load Data   ##############
head(iris)

# summary() ####################################
summary(iris$Species)     #Categorical variable
summary(iris$Sepal.Length)  #Quantitative variable
summary(iris)


# Clean Up
detach("package:datasets", unload=TRUE)  # For base
