# Few types of importing data:
    # CSV.
    # TXT.
    # XLSX.
    # JSON.(JavaScript Object Notation)

#R has built-in functions for importing data in many formats.
# or Use just one(rio.)
# rio combines all of R's import functions into one simple utility



# Packages I Load every time; uses "pacman"
pacman::p_load(pacman, dplyr, GGally, ggplot2, ggthemes, 
               ggvis, httr, lubridate, plotly, rio, rmarkdown,
               shiny, stringr, tidyr)

#About excel files

#From the official R documentation
browseURL("http://j.mp/2aFZUrJ")

# You have been warned O-O


#Importing with RIO

#CSV
rio_csv <- import("G:/All/R programming/FreeCodeCamp.org tutorials/Data/music.csv")
head(rio_csv)

#TXT
rio_txt <- import("G:/All/R programming/FreeCodeCamp.org tutorials/Data/music.txt")
head(rio_txt)

#Excel XLSX
rio_xlsx <- import("G:/All/R programming/FreeCodeCamp.org tutorials/Data/music.xlsx")
head(rio_csv)



#Data viewer #################
?View
View(rio_csv)


#Read table for txt files

# R built-in function for text files(used by rio)

# TEXT FILES

#Load a spreadsheet that has  been saved as tab-delimited 
#text file. Need to give complete address to file. This 
# command gives an error on missing data but works on
# complete data

r_txt1 <- read.table("G:/All/R programming/FreeCodeCamp.org tutorials/Data/music.txt", header=TRUE)
head(r_txt1)


#This works with missing data by specifying the separator:
# \t is for tabs, sep="," for commas. R converts missing to "NA"

r_txt2 <- read.table("G:/All/R programming/FreeCodeCamp.org tutorials/Data/music.txt", 
                     header=TRUE,
                     sep = "\t")
head(r_txt2)



#Read CSV for CSV FIles ####################

#R's built-in function for csv files(also used by rio)

#CSV FILES
# Don't have to specify delimiters for missing data
# because CSV means "comma separated values"

trends.csv <- read.csv("G:/All/R programming/FreeCodeCamp.org tutorials/Data/music.csv", header=TRUE)
head(rio_csv)


# Clean Up ###########

# Clear environment
rm(list = ls())
