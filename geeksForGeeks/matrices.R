A = matrix(1:9, nrow=3, ncol=3, byrow=TRUE)
print(A)
B = matrix(c(10, 11, 12), nrow=1, ncol=3)
print(B)

#Add a new row using rbind()
C = rbind(A,B)
print(C)

#Concatenation of a column
A = matrix(1:9, nrow=3, ncol=3, byrow=TRUE)
B = matrix(c(10, 11, 12), nrow=3, ncol=1)
C = cbind(A,B)
print(C)


# Deleting rows and columns of a matrix
A = matrix(1:9, nrow=3, ncol=3, byrow=TRUE)
print(A)
#Second row deletion
A = A[-2, ]
print(A)
#Second column deletion
A = A[,-2]
print(A)


x <- c(5:16)
rown <- c("row_1", "row-2", "row_3")
coln <- c("col_1", "col_2", "col_3", "col_4")
m <- matrix(x, nrow=3, ncol=4, byrow=TRUE, 
            dimnames = list(rown,coln))
print(m)
class(m)


x <- c(1:5)
y <- c(11:15)
z <- c(21:25)
m <- matrix(c(x, y, z), ncol=3)
print(m)
class(m)

m <- cbind(x,y,z)
print(m)
class(m)

m <- rbind(x, y, z)
print(m)
class(m)


# Sum of two matrix
B = matrix(c(1, 2 + 3i, 5.4, 3, 4, 5), nrow = 2, ncol = 3)  
C = matrix(c(2, 0i, 0.1, 3, 4, 5), nrow = 2, ncol = 3) 
print(B + C) 


# Matrices subtraction
B = matrix(c(1, 2, 3, 4, 5, 6), nrow = 2, ncol = 3)  
C = matrix(c(7, 8, 9, 10, 11, 12), nrow = 2, ncol = 3) 
num_of_rows = nrow(B) 
num_of_cols = ncol(B) 
diff = matrix(, nrow = num_of_rows, ncol = num_of_cols) 
for(row in 1:num_of_rows)  
{ 
  for(col in 1:num_of_cols)  
  { 
    diff[row, col] <- B[row, col] - C[row, col] 
  } 
} 
print(diff) 

print(B-C)



# Matrices multiplication
B = matrix(c(1, 2, 3, 4, 5, 6), nrow = 2, ncol = 3)  
C = matrix(c(7, 8, 9, 10, 11, 12), nrow = 2, ncol = 3) 
num_of_rows = nrow(B) 
num_of_cols = ncol(B) 
prod = matrix(, nrow = num_of_rows, ncol = num_of_cols) 
for(row in 1:num_of_rows)  
{ 
  for(col in 1:num_of_cols)  
  { 
    prod[row, col] <- B[row, col] * C[row, col] 
  } 
}
print(prod) 
print(B*C)



# Matrices division
div = matrix(, nrow = num_of_rows, ncol = num_of_cols) 
for(row in 1:num_of_rows)  
{ 
  for(col in 1:num_of_cols)  
  { 
    div[row, col] <- B[row, col] / C[row, col] 
  } 
} 
print(div) 
print(B/C)



# Algebric operaions in matrices #############
a = matrix(
  c(1:9),
  nrow = 3,
  ncol = 3,
  byrow = TRUE
)
# Add 1 to every element
print(a+1)
# Square of each element
print(a^2)
print(max(a))
print(min(a))
print(sum(a))


# Binary operations
a = matrix( 
  c(1, 2, 3, 4, 5, 6, 7, 8, 9),  
  nrow = 3,              
  ncol = 3,              
  byrow = TRUE           
) 
b = matrix( 
  c(1, 2, 5, 4, 6, 2, 9, 4, 3),  
  nrow = 3,              
  ncol = 3,              
  byrow = TRUE           
) 

cat("Matrix addition:\n") 
print(a + b) 

cat("Matrix substraction:\n") 
print(a-b) 

cat("Matrix element wise multiplication:\n") 
print(a * b) 

cat("Regular Matrix multiplication:\n") 
print(a %*% b) 

cat("Matrix elementwise division:\n") 
print(a / b) 



# Rank, determinant, transpose, inverse, trace of a matrix
library(pracma) # For rank of matrix
library(psych) # For trace of a matrix
A = matrix( 
  c(6, 1, 1, 4, -2, 5, 2, 8, 7),  
  nrow = 3,              
  ncol = 3,              
  byrow = TRUE           
) 
print(A) 

# Rank of a matrix 
print(Rank(A)) 

# Trace of matrix A 
print(tr(A)) 

# Determinant of a matrix 
print(det(A)) 

# Transpose of a matrix 
print(t(A)) 

# Inverse of matrix A 
print(inv(A)) 


# Nullity of a matrices
# Importing required library 
library(pracma) 
a = matrix( 
  c(1, 2, 3, 4, 5, 6, 7, 8, 9),  
  nrow = 3,              
  ncol = 3,              
  byrow = TRUE           
) 
print(a) 
col = ncol(a) 
rank = Rank(a) 
nullity = col - rank 
print(nullity)

# Eigenvalue and eigenvectors
print(eigen(a))




# Sparse matrix ###############
# Sparse matrix are sparsely populated collection of elements,
# Where there is very less number of non-null elements.
library('Matrix')
mat1 <- Matrix(0, nrow=1000, ncol=1000, sparse=TRUE)
mat1[1][1] <- 5
print(object.size(mat1))
print(mat1)

#Constructing sparse matrix from dense
library(Matrix)
# Construct a matrix with values
  # 0 with probability 0.80
  # 6 with probability 0.10
  # 7 with probability 0.10
set.seed(0)
rows <- 4L
cols <- 6L
vals <- sample(
  x = c(0, 6, 7),
  prob = c(0.8, 0.1, 0.1),
  size = rows * cols,
  replace = TRUE
)
dense_mat <- matrix(vals, nrow=rows)
print(dense_mat)
sparse_mat <- as(dense_mat, "sparseMatrix")
print(sparse_mat)



is.matrix(sparse_mat)
x <- BOD
is.matrix(x)

x <- c(1:9)
as.matrix(x)

BOD
as.matrix(BOD)
dim(BOD)

x <- rep(1:9)
x
dim(x) <- c(3, 3)
x


# Calculate cumulative sum of a numeric object
cumsum(1:4)
cumsum(-1:-6)

x1 <- c(2, 4, 5, 7)
x2 <- c(2.4, 5.6, 3.4)
cumsum(x1)
cumsum(x2)


# Calling a rowSums() function
x <- matrix(rep(2:10), 3, 3)
print(x)
rowSums(x)
