str1 <- "OK1"
cat("String 1 is: ", str1)

str2 <- 'OK2'
cat("String 2 is: ",str2)


# Length of string
# Importing package
library(stringr)
str_length("hello")


# using nchar() function
nchar("hel'lo")


substr("Learn code tech", 1, 1)


str <- "Learn Code"
len <- nchar(str)

# Accessing character using substring() function
print(substring(str, len, len))

# Accessing element out of index
print(substring(str, len+1, len+1))

#string slicing
print(substring(str, 1, 4))
print(substring(str, len-2, len))


# Case conversion
print(toupper(str))
print(tolower(str))
print(casefold(str, upper=TRUE))


#multiple strings can be update at once
str <- c("program", "with", "new", "language")
substring(str, 2, 2) <- "%"
print(str)

str <- c("program", "with", "new", "language")
substr(str, 3, 3) <- c("%", "@")
print(str)





# Working with text #######################

# It can be done in these ways:
# Using built-in Type in R
# Using Tidyverse module
# Using regex and external module
# using grep()

# Method 1: Using Built-in Type
a <- "Hello World"
print(a)

# Concatenate two string
str1 <- "Hello"
str2 <- "How are you?"
print(paste(str1, str2, sep = " ", collapse = "NULL"))

# Formatting numbers and string
# Syntax: format(x, digits, nsmall, scientific, width, 
#justify = c("left", "right", "centre", "none")) 
# Parameter
# x is the vector input.
# digits here is the total number of digits displayed.
# nsmall is the minimum number of digits to the right of the 
# decimal point.
# scientific is set to TRUE to display scientific notation.
# width indicates the minimum width to be displayed 
# by padding blanks in the beginning.
#justify is the display of the string to left, right, or center

# Total number of digit, last digit rounded off
result <- format(69.145656789, digits = 9)
print(result)

# Display numbers in scientific notation
result <- format(c(3, 132.84521, scientific=TRUE))
print(result)

#The minimum number of digits to the right of the decimal place
result <- format(96.47, nsmall=5)
print(result)

#Format threats everything as a string
result <- format(8)
print(result)

# Numbers are padded with blank in the beginning for width
result <- format(67.7, width=6)
print(result)

# Left justify string
result <- format("Hello", width =8, justify="l")
print(result)



# Method 2: Using Tidyverse module #############

# Detect the string
string <- c("WelcometoGeeksforgeeks!")
library(tidyverse)
str_detect(string, "geeks")

# Locate the string
str_locate(string, "geeks")

# Extract the string
str_extract(string, "for")

# Replace the string
str_replace(string, "toGeeksforgeeks", "geeks")



# Using regex and external module

# Select the character using dot(.)
str_extract_all(string, "G..k")

# \\D is used to select any character and number in regex
str_extract_all(string, "W\\D\\Dcome")

# Using grep()
# grep() function returns the index at which the pattern 
# is found in the vector
str <- c("Hello", "hello", "hi", "hey")
grep('hey', str)
# To find all instances of specific words in the string irrespective of case
grep('he', str, ignore.case="True")







# String Manipulation in R ##################################

# Concatenation
str <- paste("Learn", "Code")
print(str)
# In case no separator is specified the default separator 
# " " is inserted between individual strings.
str <- paste(c(1:3), "4", sep=":")
print(str)

str <- paste(c(1:4), c(5:8), sep="--")
print(str)

str <- cat("learn", "code", "tech", sep = ":")
print(str)

# R program to calculate length
print(length(c("Learn to", "Code")))
print(nchar(c("Learn", "code")))

#Case conversion
print(toupper(c("Learn Code", "hI")))
print(tolower(c("Learn Code", "hI")))
print(casefold(c("Learn Code", "hI")))
# By default, the strings get converted to lower case.
print(casefold(c("Learn Code", "hI"), upper=TRUE))

# Character replacement
chartr("a", "A", "An honest man gave that")
chartr("is", "@#", c("This is it", "It is great"))
chartr("is", "@q#", c("This is it", "It is great"))
#Error
chartr("ate", "#@", "I hate ate") 

# Substring
substr("Learn Code Tech", 1, 4)

str <- c("program", "with", "new", "language") 
substring(str, 3, 3) <- "%"
print(str)



# Concatenate ##################
string1 <- "Geeks"
string2 <- "Geeks"
answer <- paste(string1, string2, sep=" For ") 
print(answer)


string1 <- "I Love"
string2 <- "R programming"
answer <- paste(string1, string2, sep=" ") 
print(answer) 


# String matching
# grep() function: It returns the index at which the 
# pattern is found in the vector
str <- c("Hello", "hello", "hi", "hey") 
grep('he', str) 

str <- c("Hello", "hello", "hi", "hey") 
grep('he', str, ignore.case ="True") 

str <- c("Hello", "hello", "hi", "hey") 
grepl('the', str) 


#regexpr() function: It searches for occurrences of a pattern 
#in every element of the string, If not found, -1 is returned
str <- c("Hello", "hello", "hi", "ahey")
regexpr('he', str)

# To find whether any instance(s) of words starting with a 
# vowel is present in each string of the vector.
str <- c("abre", "Ult", "ste", "srU")
regexpr('^[aeiouAEIOU]', str)

# To find whether each string is of the pattern 
# '10+1' of the vector
str <- c("1001", "11", "10012", "101", "10001", "1011") 
regexpr('10+1$', str)


# Adding element in R programming append()
x <- rep(1:5)
y <- append(x, 10)
print(y)

x <- rep(10:15)
y <- append(x, 6, 1)
print(y)


# Spliting string
s <- "Geeks For Geeks"
ans <- strsplit(s, " ")
print(ans)

s <- "Geeks9For2Geeks"
ans <- strsplit(s, "[0-9]+")
print(ans)

# Split the date using strsplit
string_date <- c("2-07-2020","5-07-2020","6-07-2020",
               "7-07-2020","8-07-2020")
result <- strsplit(string_date,split = "-")
print(result)

# Printing
x1 <- "GeeksforGeeks"
x2 <- 100
x3 <- "success"
sprintf("% s gives %.0f percent % s", x1, x2, x3) 
