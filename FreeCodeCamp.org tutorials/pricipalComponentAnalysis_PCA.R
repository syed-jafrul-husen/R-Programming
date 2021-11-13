# Principal Components

# Less = more
# That is, less noise & fewer unhelpful variables in data = 
# more meaning

#AKA Dimensionality Reduction
#Most common method is Principal Component Analysis(PCA)


#PCA:
    #Two variables
    #Regression
    #Perpendicular distance
    #Collapse
    #Rotate

#Went from 2D to 1D but maintained some of the information.
#And..
#we made analysis & interpretation easier and more reliable.


#Packages I load every time
pacman::p_load(pacman, dplyr, GGally, ggplot2, ggthemes,
               ggvis, httr, lubridate, plotly, rio, rmarkdown,
               shiny, stringr, tidyr)

library(datasets)

#Load data
head(mtcars)
cars <- mtcars[ , c(1:4, 6:7, 9:11)]  #Select variables
head(cars)



#Compute PCA ####################

#For entire data frame
pc <- prcomp(cars,
             center = TRUE,   #Centers means to 0(optional)
             scale = TRUE)    #Set unit variance(helpful)

#To specify variables ###############
pc <- prcomp(~ mpg + cyl + disp + hp + wt + qsec + am + 
               gear + carb,
             center = TRUE,
             scale = TRUE)


#Examine results

#Get summary stats
summary(pc)


#Screenplot for number of components
plot(pc)


#Get standard deviations and rotation

#See how cases loads on PCs
predict(pc) %>% round(2)


#Biplot of first two components
biplot(pc)
