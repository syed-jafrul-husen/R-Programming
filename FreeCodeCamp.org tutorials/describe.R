# describe()
# its get more detail
# from psych package
    # n, mean, SD(Standard Deviation), median, 10%trimmed mean,
    # MAD(median absolute deviation), min/max, range, skewness, 
    # kurtosis, & SE(Standar Errors)


#Don't forget:
        # This still comes after graphical summaries


# Install and Load packages

# # Package I load every time : uses "pacman"
pacman::p_load(pacman, dplyr, GGally, ggplot2, ggthemes, 
               ggvis, httr, lubridate, plotly, rio, rmarkdown,
               shiny, stringr, tidyr)

library(datasets)


#Load data
head(iris)


# Load psych package(download if necessay)
installed.packages("psych")
p_load(psych)    

#get info on packages
p_help(psych)   #Opens package PDF in browser
p_help(psych, web=F)  #Opens help in R viewr


# DESCRIBE() ##########


# For quantitative variables only
describe(iris$Sepal.Length)  #For quantitative variables
describe(iris)


#Clean Up

# Clear environment
rm(list=ls())
