# Scatter plot is for
# For visualizing the association between two quantitative variables

# Look For
  # Linear
  #Spread
  #Outliers
  # Correlation

# Load Dataset packages
library(datasets)


# Load Data

?mtcars
head(mtcars)


# Plots #################

# Good to first check univariate distributions
hist(mtcars$wt)
hist(mtcars$mpg)

# Basic X_Y plot for two quantitative variables
plot(mtcars$wt, mtcars$mpg)

# Add some options
plot(mtcars$wt, mtcars$mpg,
     pch = 19,    #Solid Circle
     cex = 1.5,   #Make 150% size
     col = "#cc0000",  #Red
     main = "MPG as a function of  Weight of cars",
     xlab = "Weight (in 1000 pounds)",
     ylab = "MPG")
