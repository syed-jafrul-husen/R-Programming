# Arrays ################
# essential data storage structures
# fixed number of dimensions
# allocation space at coninuous memory locations
# Uni-dimensional arrays are called vector
# Multi-dimensional arrays are called matrices
# syntax:
        # array(data, dim = (nrow, ncol, nmat), dimnames=names)



# Uni-dimensional array
vec1 <- c(1, 2, 3, 4, 5, 6, 7, 8, 9)
cat("length of vector: ", length(vec1))

# Multi-dimensional array
arr = array(2:13, dim = c(2, 3, 2))
print(arr)

vec1 = c(1:9)
vec2 = c(10:12)
arr = array(c(vec1, vec2), dim=c(2, 3, 2))
print(arr)


row_names <- c("row1", "row2")
col_names <- c("col1", "col2", "col3")
mat_names <- c("Mat1", "Mat2")
arr = array(2:14, dim=c(2, 3, 2),
            dimnames = list(row_names, col_names, mat_names))
print(arr)



# accessing arrays
vec1 <- c(1:10)
print(vec1[3])

# accessing entire matrices
print(arr[,,1])
print(arr[,,2])

# Accessing specified row and columns of matrices

# First row of matrix 1
print(arr[,1,1])
# 2nd row of matrix 2
print(arr["row2",,"Mat2"])

# Accessing elements individually
# Accessing matrix 1 by index value
print(arr[2, "col3", 1])

# Matrix 2 by its name
print(arr["row2", "col1", "Mat2"])

# Subsetting
print(arr[,c(2, 3), 1])



# Adding elements to array
# c(vector, values) : append values to the end of the array
# append(vector, values) : append at any position by default it
  # will append at the end
# append(vector, values, after=length(vector)) adds new values 
    # after specified length of the array

x <- c(1:5)

x <- c(x, 6)
print(x)

x <- append(x, 7)
print(x)

len <- length(x)
x[len+1] <- 8
print(x)

x[len+3] <- 9
print(x)

#append a vector of values to the array after length+3 of array
x <- append(x, c(10, 11, 12), after=length(x)+3)
print(x)

# add new elements after 3rd index
x <- append(x, c(-1, -1), after=3)
print(x)




# Removing elements from array
m <- c(1:9)

# remove a single value element:3 from array
m <- m[m!=3]
print(m)

m <- m[m>2 & m<=8]
print(m)

#remove sequence of element
remove <- c(4, 6, 8)
print(m %in% remove)
print(m[!m %in% remove])



# Update existing element of the array
m <- c(1:9)

m[1] <- 0
print(m)

m[7:9] <- -1
print(m)

#update two indices with two different values
m[c(2, 5)] <- c(-1, -2)
print(m)

m[10] <- 10
print(m)




# Creating a multidimensional array
vector1 <- c(5, 9, 3)
vector2 <- c(10, 11, 12, 13, 14, 15)
result <- array(c(vector1, vector2), dim = c(3, 3, 2))
print(result)

vector3 <- c(9, 1, 0)
vector4 <- c(6, 0, 11, 3, 14, 1, 2, 6, 9)
array2 <- array(c(vector3, vector4), dim=c(3, 3, 2))

matrix1 <- result[,,2]
matrix2 <- array2[,,2]
print(matrix1+matrix2)

#sorting
sort(vector4)
sort(vector4, decreasing = TRUE)

# Sort by order method
df <- data.frame("Age" = c(12, 21, 15, 5, 25),
                 "name" = c("Johnny", "Glen", "Alfie",
                            "Jack", "Finch"))
newdf <- df[order(df$Age), ]
print(newdf)

r <- c(10, 20, 30, 40, 50, 60)
order(-r)

# sort the dataframe first on the basis of
# Age and if age is same perform sort on Name
newdf <- df[order(df$Age, df$name), ]
print(newdf)



# Sort array using loop
arr <- c(9, 4, 5, 4, 5, 6, 3, 2, 1)
repeat
{
  swap = FALSE
  for(i in 2:length(arr))
  {
    newArr <- arr
    if(arr[i-1]>arr[i])
    {
      newArr[i-1] <- arr[i]
      newArr[i] <- arr[i-1]
      arr <- newArr
      swap <- TRUE
    }
  }
  if(!swap){
    break
  }
}
print(arr)


#The use of dplyr package
# dplyr package is easy and reliable it includes arrange()
# function to sort the data
install.packages("dplyr")
library(dplyr)
df <- data.frame("Age" = c(12, 21, 15, 5, 25),
                 "Name" = c("Johnny", "Glen", "Alfie", 
                            "Jack", "Finch"))
arrange(df, Age)



# as.logical() function
x <- c(1:9, NA)
as.logical(x)

x1 <- matrix(c(1:4), 2, 2)
x2 <- matrix(c(2, 0, 1, 1.3), 2, 2)
as.logical(x1)
as.logical(x2)


# outer() product of two vector
x <- c(1:5)
y <- c(2, 4, 6)
outer(x, y)


# outer function for vector and single value
x <- 1:8
y <- 4
outer(x, y, "+")


#intersection of two object in R
x1 <- c(1, 2, 3, 4, 5, 6, 5, 5)
x2 <- c(2:4)
x3 <- intersect(x1, x2)
print(x3)



# Get exclusive element between two objects
x1 <- c(1, 2, 3, 4, 5, 6, 5, 5)
x2 <- c(2:4)
x3 <- setdiff(x1,x2)
print(x3)

x <- c("GFG", "GEEKS")
y <- c("Welcome", "GFG", "Home")
z <- setdiff(x, y)
print(z)


data_x <- data.frame(x1 = c(5, 6, 7), 
                     x2 = c(2, 2, 2)) 
data_y <- data.frame(y1 = c(2, 3, 4),        
                     y2 = c(2, 2, 2)) 
data_z <- setdiff(data_x, data_y)   
print(data_z) 

