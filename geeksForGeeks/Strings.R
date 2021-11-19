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



# Method 2: Using Tidyverse module
