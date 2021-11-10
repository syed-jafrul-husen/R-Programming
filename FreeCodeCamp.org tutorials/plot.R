# Plots need to be:
#Adapts to data types and number of variables

library(datasets)

#Load DATA
head(iris)


#Plot data with plot
?plot

plot(iris$Species) #Categorical variable
plot(iris$Petal.Length) #Quantitative variable
plot(iris$Species, iris$Petal.Width) #Cat x quant
plot(iris$Petal.Length, iris$Petal.Width) #Quant pair

plot(iris) #Entire data frame

#Plot with options
plot(iris$Petal.Length, iris$Petal.Width,
     col = "#cc0000", #Hex code for datalab.cc red
     pch = 19,  # Use solid circles for point
     main = "Iris: Petal Length vs Petal Width",
     xlab = "Petal Length",
     ylab = "Petal Width")


#Plot formulas with plot()
plot(cos, 0, 2*pi)
plot(exp, 1, 5)
plot(dnorm, -3, +3)

#Formula plot with options
plot(dnorm, -3, +3,
     col = "#cc0000",
     lwd = 5,
     main = "Standard Normal distribution",
     xlab = "z-scores",
     ylab = "Density")

#Clean Up
#clear packages
detach("package:datasets", unload=TRUE)
