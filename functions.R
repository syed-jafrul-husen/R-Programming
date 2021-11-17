# Function: multiple input, multiple output

rectangle = function(length, width){
  area = length * width
  perimeter = 2*(length + width)
  
  result = list("Area" = area, "Perimeter" = perimeter)
  return(result)
}

resultList = rectangle(2, 3)
print(resultList["Area"])
print(resultList["Perimeter"])



# in-line function #############################
f = function(x) x^2*4 + x/3
print(f(4))
print(f(-2))
print(f(0))


# Lazy evaluations of functions
Cylinder = function(diameter, length, radius){
  volume = pi*diameter^2*length/4
  return(volume)
}
Cylinder(5,10)



#Function defination of dot operator
fun <- function(n, ...){
  l <- list(n, ...)
  paste(l, collapse = " ")
}
fun(5, 1L, 6i, TRUE, "SFYL", "Dot operator")



# Function is passes as argument
fun <- function(x, fun2){
  return(fun2(x))
}
# sum is built-in function
fun(c(1:10), sum)
# mean is built-in function
fun(rnorm(50), mean)




# There are mainly three types of function in R programming
    # 1.Primitive function
    # 2.Infix function
    # 3.Replacement function

# To print the name of available primitive functions
names(methods:::.BasicFunsList)


# infix functions#############
# some examples are:
    # %%    Reminder Operator
    # %/%   Integer Division
    # %*%   Matrix multiplication
    # %o%   Outer Product
    # %x%   Kronecker product
    # %in% matching operator

'%Greater%' <- function(a, b){
  if(a >b) print(a)
  else if(b>a) print(b)
  else print("equal")
}
7%Greater%5
67%Greater%2300


"replace<-" <- function(x, value){
  x[1] = value
  x
}
x = rep.int(5, 7)
replace(x) = 0L
print(x)




# recursion
rec_fun <- function(x){
  if(x==0 || x==1){
    return(1)
  }
  else{
    return(x* rec_fun(x-1))
  }
}
rec_fun(5)



# Sum of series using recursion
# sum = 1^2 + 2^2 + ... + N^2
sum_series <- function(vec){
  if(length(vec)<=1){
    return(vec^2)
  }
  else{
    return(vec[1]^2 + sum_series(vec[-1]))
  }
}
series <- c(1:10)
sum_series(series)




# Conversion function ################
# In R conversion function are 2 types
    # Conversion Functions for Data Types
    # Conversion Functions for Data Structure

# Conversion Functions for Data Types:
as.numeric()
as.integer()
as.character()
as.logical()
variable <- "04/11/2000"
as.date(variable, "%m/%d/%y")


#Conversion functions for Data Structure
as.data.frame()
as.vector()
as.matrix()