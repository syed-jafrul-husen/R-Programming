print("Hello World")
print("Hello World",quote=FALSE)


#Variables in R##########
#In R, the assignment can be denoted in three ways:
  # = (Simple Assignment)
  # <- (Leftward Assignment)
  # -> (Rightward Assignment)

var1 = "Simple Assignment!"
var2 <- "Leftward Assignment!"
"Rightward Assignment" -> var3

print(var1)
print(var2)
print(var3)




#Commenting #####################
#This is single line comment
if(FALSE){
  "This is a multi-line comment which should be put inside
  either a single or double quote"
}
#select multiple lines the pres "ctr + shift + C" for multi-comment




#Keywords in R
if(FALSE)
{
  "
  if        else        while       repeat        for
  function  in          next        break         TRUE
  FALSE     NULL        Inf         NaN           NA
  NA_integer_   NA_real   NA_complex_   NA_character
  "
}
#  R is a case sensitive language so TRUE is not same as True.









#Operators ##################################

# the use of Arithmetic operators
vec1 <- c(0, 2)
vec2 <- c(2, 3)

# Performing operations on Operands
cat ("Addition of vectors :", vec1 + vec2, "\n")
cat ("Subtraction of vectors :", vec1 - vec2, "\n")
cat ("Multiplication of vectors :", vec1 * vec2, "\n")
cat ("Division of vectors :", vec1 / vec2, "\n")
cat ("Modulo of vectors :", vec1 %% vec2, "\n")
cat ("Power operator :", vec1 ^ vec2)


# Logical Operator #####################################

# the use of Logical operators
vec1 <- c(0,2)
vec2 <- c(TRUE,FALSE)

# Performing operations on Operands
cat ("Element wise AND :", vec1 & vec2, "\n")
cat ("Element wise OR :", vec1 | vec2, "\n")
cat ("Logical AND :", vec1 && vec2, "\n")
cat ("Logical OR :", vec1 || vec2, "\n")
cat ("Negation :", !vec1)


# Relational Operator ##############################

#  TRUE value is always considered to be greater than the FALSE. 
# the use of Relational operators
vec1 <- c(0, 2)
vec2 <- c(2, 3)

# Performing operations on Operands
cat ("Vector1 less than Vector2 :", vec1 < vec2, "\n")
cat ("Vector1 less than equal to Vector2 :", vec1 <= vec2, "\n")
cat ("Vector1 greater than Vector2 :", vec1 > vec2, "\n")
cat ("Vector1 greater than equal to Vector2 :", vec1 >= vec2, "\n")
cat ("Vector1 not equal to Vector2 :", vec1 != vec2, "\n")



# Assignment Operator
# the use of Assignment operators
vec1 <- c(2:5)
c(2:5) ->> vec2
vec3 <<- c(2:5)
vec4 = c(2:5)
c(2:5) -> vec5

# Performing operations on Operands
cat ("vector 1 :", vec1, "\n")
cat("vector 2 :", vec2, "\n")
cat ("vector 3 :", vec3, "\n")
cat("vector 4 :", vec4, "\n")
cat("vector 5 :", vec5)



# Miscellaneous Operators ##########################

# %in% Operator:
  # Checks if an element belongs to a list and returns 
  # a boolean value TRUE if the value is present else FALSE

# Colon Operator(:):
  #Prints a list of elements starting with the element 
  #before the color to the element after it

# %*% Operator:
  # This operator is used to multiply a matrix with its 
  # transpose. Transpose of the matrix is obtained by 
  # interchanging the rows to columns and columns to rows. 
  # The number of columns of first matrix must be equal to 
  # number of rows of second matrix. Multiplication of the 
  # matrix A with its transpose, B, produce a square matrix. 

# the use of Miscellaneous operators
mat <- matrix (1:4, nrow = 1, ncol = 4)
print("Matrix elements using : ")
print(mat)

product = mat %*% t(mat)
print("Product of matrices")
print(product,)
cat ("does 1 exist in prod matrix :", "1" %in% product)






# Data Types #######################################

# Numeric (set of all real numbers)
# Integer (set of all integers)
# Logical (TRUE and FALSE)
# Complex (Set of complex numbers)
# Character ("a", "b", "c", ..., "@", "#", ..., "1", "2", ... etc)

# to find data type of an object

# Logical
print(class(TRUE))

# Integer
print(class(3L))

# Numeric
print(class(10.5))

# Complex
print(class(1+2i))

# Character
print(class("12-04-2020"))


# Verify if an object is of a certain datatype
# Logical
print(is.logical(TRUE))

# Integer
print(is.integer(3L))

# Numeric
print(is.numeric(10.5))

# Complex
print(is.complex(1+2i))

# Character
print(is.character("12-04-2020"))

print(is.integer("a"))

print(is.numeric(2+3i))



# convert data type of an object to another
# Logical
print(as.numeric(TRUE))

# Integer
print(as.complex(3L))

# Numeric
print(as.logical(10.5))

# Complex
print(as.character(1+2i))

# Can't possible
print(as.numeric("12-04-2020"))
