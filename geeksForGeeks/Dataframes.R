friend.data <- data.frame(
  friend_id = c(1:5),
  friend_name = c("Sachin", "Sourav", "Dravid", 
                  "Sehwag", "Dhoni"),
  stringsAsFactors = FALSE
)
print(friend.data)

# Get structure of the data frame
print(str(friend.data))

# To get statistical summary and nature
print(summary(friend.data))

# Extract a column
result <- data.frame(friend.data$friend_name)
print(result)

# Expand data frame by adding new columns and rows
friend.data$location <- c("Sylhet", "Khulna", "Jashore",
                          "Chittagong", "Rajshahi")
print(friend.data)



df = data.frame(
  "Name" = c("Amiya", "Raj", "Asish"),
  "Language" = c("R", "Python", "Java"),
  "Age" = c(22, 25, 45)
)
print(df)

cat("Accessing first and second row\n")
print(df[1:2, ])

cat("Accessing first and second column\n")
print(df[, 1:2])

# Subset of data frame
newDf = subset(df, Name =="Amiya"|Age>30)
print(newDf)

# Editing data frame
df[[3]][3] = 30
print(df)


# Editing data frame using edit() command
myTable = data.frame() 
myTable = edit(myTable) 
myTable


# Adding row and column to the data frame
df = data.frame(
  "Name" = c("Amiya", "Raj", "Asish"),
  "Language" = c("R", "Python", "Java"),
  "Age" = c(22, 25, 45)
)

# Add a new row using rbind()
newDf = rbind(df, data.frame(Name = "Sandeep",
                             Language = "C",
                             Age = 23))
print(newDf)

# Add a new column
newDf = cbind(df, Rank=c(3, 5, 1))
print(newDf)


# add new variable to data frame
library(dplyr)
df = data.frame(
  "Name" = c("Amiya", "Raj", "Asish"),
  "Language" = c("R", "Python", "Java"),
  "Age" = c(22, 25, 45)
)
print(df)
# Creating an extra variable column
# "log_Age" which is log of variable column "Age"
# Using mutate() command
newDf = mutate(df, log_Age = log(Age))
print(newDf)


# Deleting row and column from a data frame
df = data.frame(
  "Name" = c("Amiya", "Raj", "Asish"),
  "Language" = c("R", "Python", "Java"),
  "Age" = c(22, 25, 45)
)
# delete the third row and the second column
newDF = df[-3, -2]
print(newDF)



# Rename columns
# Adding Package 
df <- library(dplyr) 
df<-data.frame(row1 = 0:2, row2 = 3:5, row3 = 6:8) 
print(df) 
# Renaming Data Frame 
rename(df, c("row1"="one", "row2"="two", "row3"="three")) 

names(df)[names(df)=="row3"]<-"three"
print(df) 

names(df)[2]<-"two"
print(df) 



# Adding columns to a data frame
df<-data.frame(col1 = 0:2, col2 = 3:5, col3 = 6:8) 
print (df) 
# Adding empty column 
df[["col4"]]<-0
print(df)

# assigns a value NA to the data frame column 5 
df$"col5"<-NA 
print(df)

# Updating Values of column added 
df[["col5"]] <- df[["col1"]] + df[["col2"]] 
print (df) 



# Removing column from a data frame
df<-data.frame(row1 = 0:2, row2 = 3:5, row3 = 6:8) 
print (df)
# Removing a Column 
df[["row2"]]<-NULL 
print(df) 

df<-data.frame(row1 = 0:2, row2 = 3:5, row3 = 6:8, row4 = rep(5)) 
print (df) 
# Removing two columns 
df <- df [-c(1, 3)] 
print(df)



# Subsetting data frame ################
df<-data.frame(row1 = 0:2, row2 = 3:5, row3 = 6:8) 
print (df) 
df<-subset(df, select = - c(row1, row2)) 
print(df) 



# Reordering columns ###########
df<-data.frame(row1 = 0:2, row2 = 3:5, row3 = 6:8) 
print(df) 
# Temporary modifying column order 
# in a Data Frame 
df[,c(2, 1, 3)] 
print(df)

# Permanently modifying column order 
# in a Data Frame 
df <- df[c(2, 1, 3)] 
print(df)






# Joining of data frame ###########################

# The most important condition for joining two dataframes 
# is that the column type should be the same on which the 
# merging happens.
# merge() function works similarly like join in DBMS
# Syntax:
#merge(df1, df2, by.df1, by.df2, all.df1, all.df2, sort=TRUE)

df1 = data.frame(StudentId = c(101:106),  
                 Product = c("Hindi", "English",  
                             "Maths", "Science",  
                             "Political Science",  
                             "Physics")) 
df1 

df2 = data.frame(StudentId = c(102, 104, 106, 
                               107, 108),  
                 State = c("Manglore", "Mysore", 
                           "Pune", "Dehradun", "Delhi"))  
df2  


# Natural Join or inner join
# Inner join is used to keep only those rows that are matched 
# from the dataframes, in this, we actually specify 
# the argument all = FALSE
df = merge(x = df1, y = df2, by = "StudentId") 
df 


# Left Outer Join
# Left Outer Join is basically to include all the rows 
# of your dataframe x and only those from y that match, 
# in this, we actually specify the argument x = TRUE
df = merge(x = df1, y = df2, by = "StudentId", all.x = TRUE) 
df 


# Right Outer Join
# Right, Outer Join is basically to include all the rows 
# of your dataframe y and only those from x that match, 
# in this, we actually specify the argument y = TRUE
df = merge(x = df1, y = df2, by = "StudentId", all.y = TRUE) 
df 


# Full Outer Join
# Full Outer Join is basically used to keep all rows from 
# both dataframes, in this, we actually specify the arguments
# all = TRUE
df = merge(x=df1, y=df2, by = "StudentId", all=TRUE)
print(df)


# Cross Join
# A Cross Join also known as cartesian join results in 
# every row of one dataframe is being joined to every
# other row of another dataframe
df = merge(x = df1, y = df2, by = NULL) 
df 


# Semi Join
# This join is somewhat like inner join, with only the 
# left dataframe columns and values are selected.
library(dplyr) 
df = df1 %>% semi_join(df2, by="StudentId")
print(df)


# Anti Join
# In terms of set theory, we can say anti-join as set 
# difference operation, for example, A=(1,2,3,4) B=(2,3,5)
# then the output of A-B will be set (1, 4). This join is
# somewhat like df1 - df2, as it basically selects all rows
# from df1 that are actually not present in df2
library(dplyr)
df = df1 %>% anti_join(df2, by = "StudentId")
print(df)






# Factor issue in a data frame
# When you enter numeric variables, it knows all the numeric 
# variables that are available but when you enter character 
# variables it takes whatever the character variables you 
# are giving as categories or factors levels
df = data.frame(
  "Name" = c("Amiya", "Raj", "Asish"),
  "Language" = c("R", "Python", "Java"),
  "Age" = c(22, 25, 45)
)
print(df)
df[1, 3] = 37
df[3, 2] = "C"
print(df)

# Resolving the factor issue
df = data.frame(  
  "Name" = c("Amiya", "Raj", "Asish"),  
  "Language" = c("R", "Python", "Java"),  
  "Age" = c(22, 25, 45), 
  # to resolve factor issue 
  stringsAsFactors = F 
)  
print(df)  
df[1, 3] = 37
df[3, 2] = "C"
print(df)



# Transpose of a matrix
first <- matrix(c(1:12), nrow=4, byrow=TRUE)
first
first <- t(first)
first


# Joining row and columns in data frame
# Cbind and Rbind function in R
name <- c("Shaoni", "esha", "soumitra", "soumi")
age <- c(24, 53, 62, 29)
address <- c("puducherry", "kolkata", "delhi", "bangalore")

# Cbind function
info <- cbind(name, age, address)
print(info)
# creating new data frame
newd <- data.frame(name=c("sounak", "bhabani"),
                   age=c("28", "87"),
                   address=c("bangalore", "kolkata"))
# Rbind function
new.info <- rbind(info, newd)
print(new.info)


# Merging two data frame
d1 <- data.frame(name=c("shaoni", "soumi", "arjun"),
                 ID=c("111", "112", "113"))
d2 <- data.frame(name=c("sounak", "esha"),
                 ID=c("114", "115"))

total <- merge(d1, d2, all=TRUE)
print(total)


# Melting and casting ########
# melting the data which converts each row into a unique 
# id-variable combination and then casting it
library(MASS)
library(reshape)
a <- data.frame(id = c("1", "1", "2", "2"),
                points = c("1", "2", "1", "2"),
                x1 = c("5", "3", "6", "2"),
                x2 = c("6", "5", "1", "4"))
#Melting
m <- melt(a, id=c("id", "points"))
print(m)
#Casting
idmn <- dcast(a, id~variable, mean)
print(idmn)





# Data Wrangling - Data transformation ############

# Conversion to wide datasets to long
library(tidyverse)    
sample_data <- read.csv("C:/Users/Admin/Desktop/pew.csv")  
sample_data 
sample_data_long <- gather(sample_data, income, 
                           freq, -religion) 
sample_data_long


# Conversion Long datasets to wide 
library(tidyverse)    
sample_data <- read.csv("C:/Users/Admin/Desktop/mexicanweather.csv") 
sample_data 
sample_data_wide <- spread(sample_data, element, value) 
sample_data_wide 




# data Wrangling - Working with tibbles ##############
# Tibbles are the core data structure of the tidyverse and is
# used to facilitate the display and analysis of information
# in a tidy format. Tibbles is a new form of data frame where
# data frames are the most common data structures used to 
# store data sets in R

# as_tibble() ###
library(tidyverse)         
sample_tibble <- as_tibble(CO2)   
print(sample_tibble)     



library(tidyverse) 
name <- c("surya", "sai", "Nihith", "prakash", 
          "vikas", "mayur") 
marks_in_Math <- c(91, 85, 92, 89, 90, 93) 
marks_in_Java <- c(89, 91, 88, 91, 89, 87) 
Fav_color <- c("Pink", "Red", "Yellow", "Green", 
               "White", "Blue") 
students <- tibble(name, marks_in_Math, marks_in_Java,
                   Fav_color) 
print(students)


# Subsetting tibble
students$Fav_color 
students$marks_in_Math 

students[["name"]] 
students[["marks_in_Math"]] 



# Handling missing values ##############
# NA or NaN are reserved words that indicate a missing 
# value in R

# is.na() for finding missing values
x<- c(NA, 3, 4, NA, NA, NA)
is.na(x)

# is.nan() for finding missing values
x<- c(NA, 3, 4, NA, NA, 0 / 0, 0 / 0)
is.nan(x)

# Extracting values except for NA or NaN values
x <- c(1, 2, NA, 3, NA, 4)
d <- is.na(x)
x[!d]

x <- c(1, 2, 0 / 0, NaN, 3, NA, 4, 0 / 0)
x
x[! is.na(x)]


#Missing value filter functions
# Creating a data frame
df <- data.frame (c1 = 1:8, 
                  c2 = factor (c("B", "A", "B", "C",
                                 "A", "C", "B", "A")))
df
# Filling some NA in data frame
df[4, 1] <- df[6, 2] <- NA
df
# Printing all the levels(NA is not considered one)
levels(df$c2)
# fails if NA is encountered
na.fail (df)
# excludes every row containing even one NA
na.exclude (df)



# Convert an object as data frame
x1 <- c(1, 2, 3, 4)
x2 <- c("a", "B", "C", "D")
x3 <- c("hello", "Geeks", "for", "geeks")
x <- list(col1 = x1, col2 = x2, col2 = x3)
x
as.data.frame(x)


# Get number of columns
BOD
ncol(BOD)

x <- matrix(c(1, 2, 3, 4), 2, 2)
ncol(x)


# Get number of rows
BOD
nrow(BOD)



# sum() function in R #########
x <- c(10, 20, 30, 40)
y <- c(1.8, 2.4, 3.9)
z <- c(0, -2, 4, -6)
sum(x)  
sum(y)
sum(z)
sum(x, y, z)

sum(1:5) # Adding a range
sum(-1:-10)
sum(4:12)

x = c(1,2,-4,5,12,NA)
sum(x)

x = c(1,2,-4,5,12,NA)
sum(x,na.rm=TRUE)

data = data.frame(iris)
print(head(data))
sum(data$Sepal.Width)

