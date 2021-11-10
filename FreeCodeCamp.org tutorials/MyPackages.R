install.packages("pacman")

# Then load the packages either of the following
require(pacman) #Gives a confirmation message
library(pacman) #No message


# or by using "pacman::p_load" you can use the p_load 
# function from pacman without actually loading pacman.
# These are the packages I load everytime
pacman::p_load(pacman, dplyr, GGally, ggplot2, ggthemes, 
               ggvis, httr, lubridate, plotly, rio, rmarkdown, shiny,
               stringr, tidyr)

library(datasets) #Load/unload base packages manually



## CLEAN UP ###############################

#clear packages
p_unload(dplyr, tidyr, stringr) #CLear specific packages
p_unload(all) #Easier: clears all add-ons
detach("package:datasets", unload=TRUE) # For base


#Clear console
cat("\014") #ctrl + L

#Clear mind :)
