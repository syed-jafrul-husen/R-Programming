empID = c(1, 2, 3, 4)
empName = c("Kamal", "Jamal", "Alex", "Rupom")
numberOfEmp = 4
empList = list(empID, empName, numberOfEmp)
print(empList)


# Accessing components of a List
empList2 = list(
  "ID" = empID, 
  "Names" = empName,
  "Total Staff" = numberOfEmp
)
print(empList2)
print(empList2$ID)

print(empList2[[2]])
print(empList2[[2]][2])
print(empList2[[1]][4])


# Modifying top-level component
empList2$'Total Staff' = 5
print(empList2)

#Modifying inner-level component
empList2[[1]][5] = 5
empList2[[2]][5] = "Mithun"
print(empList2)


empAge = c(34, 23, 18, 45, 32)
empAgeList = list(
  "Age" = empAge
)
# Concatenation
empList = c(empList2, empAgeList)
print(empList)


# Deleting ################

# Deleting a top level components
print(empList[-3])

# Deleting a inner level components
print(empList[[2]][-2])


# converting list to vector
lst <- list(1:5)
v <- unlist(lst)
print(v)
lst1 <- list()

# Converting List to Matrix
lst1 <- list(list(1, 2, 3),
             list(4, 5, 6))
print(lst1)
class(lst1)
mat <- matrix(unlist(lst1), nrow=2, byrow=TRUE)
print(mat)



# Accessing nested List
list1 <- list(c(1:5), "hi", 0+5i)
list2 <- list(c(6:8))
list_data <- list(list1, list2)

for(i in c(1:length(list_data)))
{
  for(j in c(1:length(list_data[[i]])))
  {
    cat("List", i, "element", j, ": ")
    print(list_data[[i]][[j]])
  }
}


# Naming the element of a List
geek_list <- list(c("Geeks", "For", "Geeks"),
                 matrix(c(1:9), nrow=3),
                 list("Geek", 12.3))

names(geek_list) <- c("This_is_a_vector",
                      "This_is_a_matrix",
                      "This_is_a_list_within_the_list")
print(geek_list)





# Creating List of Data Frames
df1 = data.frame(
  y1 = c(1, 2, 3),
  y2 = c(4, 5, 6)
)
df2 = data.frame(
  y1 = c(7, 8, 9),
  y2 = c(1, 4, 6)
)
listOfDataframe = list(df1, df2)
print(listOfDataframe)


# Accessing List of data frame
listOfDataframe = list(
  "Dataframe1" = df1,
  "Dataframe2" = df2
)

print(listOfDataframe)
print(listOfDataframe$Dataframe1)

print(listOfDataframe[[1]])
print(listOfDataframe[[1]][1])
print(listOfDataframe[[1]][[1]])
print(listOfDataframe[[1]][2, 2])

# Modifying the dataframe2
listOfDataframe$Dataframe2 = data.frame(
  y1 = c(70, 80, 9),
  y2 = c(14, 41, 63)
)
print(listOfDataframe)
# Modifying second column from Dataframe1
listOfDataframe[[1]][2] = c(23, 45, 67)
# Modifying element 2 from dataframe1
listOfDataframe[[1]][2, 1] = 15
cat("After modified the list of data frame\n")
print(listOfDataframe)

df3 = data.frame(
  y1 = c(7, 8, 98),
  y2 = c(10, 44, 6)
)
newListOfDataframe = list(
  "Dataframe3" = df3
)
# Concatenation of list of data frames
# using concatenation operator
listOfDataframe = c(listOfDataframe, newListOfDataframe)
cat("After concatenation of the new list of data frame\n")
print(listOfDataframe)

print(listOfDataframe[[-1]])
print(listOfDataframe[[2]][-1])



# Named List in R programming
x <- list(mt = matrix(1:6, nrow=2),
          lt = letters[1:8],
          n = c(1:10))
cat("Whole List:\n")
print(x)

# Accessing
print(x$mt)

# Modifying
x$n = 10
print(x$n)

#Deleting
x <- within(x, rm(mt))
print(x)

a <- list(1:3)
print(a)
is.list(a)
