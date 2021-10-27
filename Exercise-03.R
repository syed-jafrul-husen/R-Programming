#ONE DIMENSION Data

#print 1 to 10
1:10

#print first 6 English letters in lowercase
letters[1:6]
LETTERS[1:6]

#save as object
x = c(1:10)
x
class(x)
y = LETTERS[1:6]
class(y)

#make list
z = list(x,y)
z
class(z)



#Two Dimension Data
#Make two dimensional object of equal length
x = c(1:10)
x
class(x)
length(x)
y = LETTERS[1:10]
length(y)

#make data frame and store in an object, xy
xy = data.frame(x,y)
class(xy)

#check column name
colnames(xy)

#Change column name
colnames(xy) = c("numbers", "letters")


##Make matrix from data frame
#Take the previous dataframe as an example
x = c(1:10)
y = LETTERS[1:10]
xy = data.frame(x,y)
class(xy)


#convert dataframe, xy into matrix
xy_matrix = matrix(xy)
class(xy_matrix)

## Vector to matrix
#make a matrix of two rows and 3 columns from a vector x.
x = c(1:12)
x_matrix = matrix(x, nrow=2, ncol=3)
class(x_matrix)

#Make a matrix and transpose rows and columns
x = c(1:12)
x_matrix = matrix(x,nrow=2, ncol=3)
class(x_matrix)

x_matrix_transpose = t(x_matrix)
x_matrix_transpose
class(x_matrix_transpose)


#show all object and file
ls()
#delete all object and files of the current session
rm(list=ls(all=TRUE))


#----Start Practice------
#Vector to dataframe
x = c(1:10)
x
class(x)
x[1:5]
df = data.frame(col1=x[1:5],col2=x[6:10])
df


x = data.frame(A=1:10, B=11:20, C=21:30, D=31:40, E=41:50)
rownames(x) = c("a","b","c","d","e","f","g","h","i","j")
x
class(x)


y = matrix(x)
class(y)

z = data.frame(y)
class(z)



