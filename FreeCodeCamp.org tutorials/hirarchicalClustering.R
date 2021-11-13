#Hierarchical clustering

# works same as: like with like
# But similarity depends on criteria. such as:
#Hierarchical vs. set k.(set number of groups)
#Measures of distance
#Divisive vs. agglomerative



# here we are going to do...
# Euclidean distance, hierarchical clustering & Divisive method.


# Packages I Load every time
pacman::p_load(pacman, dplyr, GGally, ggplot2, ggthemes, 
               ggvis, httr, lubridate, plotly, rio, rmarkdown,
               shiny, stringr, tidyr)

library(datasets)

#Load Data
?mtcars
head(mtcars)
cars <- mtcars[, c(1:4, 6:7, 9:11)] #Select variables
head(cars)


#Compute and plot clusters

#Save hierarchical clustering to "hc." This code uses 
#pipe from dplyr.
hc <- cars %>%   #Gets cars data
  dist %>%     #Compute distance/dissimilarity matrix
  hclust       #Compute hierarchical clusters

plot(hc)


#Add boxes to plot
rect.hclust(hc, k=2, border="gray")
rect.hclust(hc, k=3, border="blue")
rect.hclust(hc, k=4, border="green4")
rect.hclust(hc, k=5, border = "darkred")
