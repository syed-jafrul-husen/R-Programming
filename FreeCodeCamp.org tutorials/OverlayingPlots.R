# Why do we need overlay plots
# This is because - increased information density
# Use restraint
# Use views that complement and support one another


#Install and Load Packages ####################
library(datasets)

# Load Data ############
?lynx
head(lynx)


#Histogram #################


#default
hist(lynx)


# Add some options
hist(lynx,
     breaks = 14,  # "Suggest" 14 bins
     freq = FALSE,   # Axis show density not frequency
     col = "thistle1",   #Color for histogram
     main = paste("Histogram of Annual Canadian Lynx",
                 "Trappings, 1821 ~ 1934"),
     xlab = "Number of Lynx Trapped")

# Add a normal distribution
curve(dnorm(x, mean=mean(lynx), sd = sd(lynx)),
      col = "thistle4",
      lwd = 2,   # Line width is 2 pixels
      add = TRUE   #Superimpose of previous graph
      )

# Add two kernel density estimators
lines(density(lynx), col = "blue", lwd = 2)
lines(density(lynx, adjust = 3), col = "purple", lwd = 2)


# Add a rug plot
rug(lynx, lwd = 2, col = "gray")


# CLean Up


# Clear packages
detach("package:datasets", unload=TRUE)  #For base
