# in R the indexing start from "1" and not from "0"

v1 <- c(1, 2, 3, 4, 5)
print(v1)
typeof(v1)

v2 <- c(1L, 2L, 3L, 4L, 5L)
print(v2)
typeof(v2)

# by default numeric values are converted into characters
v3 <- c('geeks', '2', 'hello', 57)
typeof(v3)
print(v3)

v4 <- c(TRUE, FALSE, FALSE, NA)
typeof(v4)
print(v4)

X <- c(12, 23, 5)
cat("Using c function", X)

Y <- seq(1, 10, length.out=5)
cat("using seq() function", Y)

Y <- seq(1, 10, length.out=6)
cat("using seq() function", Y)

Z <- 2:7
cat("using colon", Z)


# Accessing vector element ############

# Access elememnt using index number
X <- c(1, 2, 3, 4, 5, 6, 7, 8)
cat("Using subscript operator",X[2])

#by passing a range of values inside the vector index
cat("Using combine() function", X[c(1,4)])
cat("Using combine() function", X[c(4,1)])
cat("Using combine() function", X[c(1,4,3,10)])

# Using logical expression
cat("Using Logical expression", X[X>5])


# Modifying a vector
x <- c(1, 2, 3, 4, 5)

# Modify a specific element
x[3] <- 30
cat("subscript operator", x)

# modify using logic
x[x>4] <- 0
cat(x)

x <- c(1, 2, 3, 4, 5)
x <- x[c(5,4,3, 8)]
cat(x)


# Deleting a vector
M <- c(1, 2, 3, 4, 5, 6, 7, 8)
M <- NULL
cat(M)
print(M)

x <- c(4, 2, 7, 1, 9, 8)
x <- sort(x)
cat(x)

b <- sort(x, decreasing=TRUE)
cat(b)

# Append ##############
x <- 1:5
y <- 6;10
y <- c(x,y)
print(y)

x <- 1:5
y <- letters[1:5]
z <- c(x, values=y)
print(z)


# Dot product in vector #########
# In mathematics dot product is known as the scalar product it
# takes two equal length sequence and returns a single number
  # A = a1i + a2j + a3k
  # B = b1i + b2j + b3k
        # where,
                # i: the unit vector along with x directions
                # j: the unit vector along with y directions
                # k: the unit vector along with z directions
    # Dot product is calculated as:
                    # DotProduct = a1*b1 + a2*b2 + a3*b3

install.packages("geometry")
library(geometry)
a = 5
b = 7
print(dot(a, b, d=TRUE)) 
# d means: Dimension along which to calculate the dot product
# OR
print( a%*% b)

a = c(1, 2)
b = c(3, 4)
print( a%*% b)

a = 3 + 1i 
b = 7 + 6i 
print(a * b)
print(a %*% b)


# Vector assign
v2 = c(1.5, TRUE, 4, "Geeks") 
print(v2)

v3 = 1.5 : 9.5 
print(v3)

v4 = 1.5 : 9.4 
print(v4)

v5 = seq(1, 3, by=0.2) 
print(v5)

v6 = seq(1, 10, length.out=5)     
print(v6)


# Assigning named vectors in R
sports.player = c(1, 2, 3, 4, 5)
names(sports.player) = c("A", "B", "C", "D", "E")
print(sports.player)
print(names(sports.player[sports.player==9]))
print(names(sports.player[sports.player==4]))
print(names(sports.player[sports.player==5]))      

# access element
v = c(1, 5, 78, 90, 5, 56, 45)
print(v[c(5, 7)])


#Getting maximum and minimum element
v = c(45, 67, 2, 4, 67, 94)
range(v)
range(v)[1]



# R program to find the  
# minimum and maximum element of a vector 


# Creating a vector 
x <- c(8, 2, Inf, 5, 4, NA, 9, 54, 18) 
# Calling range() function 
range(x) 

# Calling range() function 
# excluding NA values 
range(x, na.rm = TRUE) 

# Calling range() function 
# excluding finite values 
range(x, na.rm = TRUE, finite = TRUE) 


# Formating ##############

# Rounding off the specified digits into 4 digits

result1 <- format(12.3456789, digits=4)
result2 <- format(12.3456789, digits=6)
print(result1)
print(result2)

# Getting the specified minimum number of digits
# to the right of the decimal point.
result3 <- format(12.3456789, nsmall=2)
result4 <- format(12.3456789, nsmall=7)
print(result3)
print(result4)


result1 <- format(1234)
result2 <- format(12.3456789)
print(result1)
print(result2)
# Display numbers in scientific notation
result3 <- format(12.3456789, scientific=TRUE)
result4 <- format(12.3456789, scientific=FALSE)
print(result3)
print(result4)



# replace
x <- c("GFG", "gfg", "Geeks") 
x 
y <- replace(x, 2, "GeeksforGeeks") 
y 


x <- c("GFG", "gfg", "Geeks") 
x 
y <- replace(x, c(1, 3), c("A", "B")) 
y 


x <- c("GFG", "Geeks", "GeeksforGeekss")
toString(x)
x
toString(x, width = 2)
toString(x, width = 8)
toString(x, width = 10)


mat <- (matrix(5, 3, 3))
print(mat)
str <- toString(mat)
print("String")
print(str)


# Substring() #########

substring("Geeks", 2, 3)
substring("Geeks", 1, 4)
substring("GFG", 1, 1)
substring("gfg", 3, 3)


x <- c("GFG", "gfg", "Geeks")
substring(x, 2, 3)
substring(x, 1, 3)
substring(x, 2, 2)


x <- c("GFG", "gfg", "Geeks")
substring(x, 2, 3) <- c("@")
print(x)

