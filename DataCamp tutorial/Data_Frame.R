if(FALSE){
  "
  Datasets
    Observations
    Variables
    Example: people
      each person = observation
      properties (name, age,...) = variables
    Matrix?  Need different types
    List?  Not very practical
    Data Frame? Yes
  "
}

if(FALSE){
  "
  Data Frame
      Specifically for datasets
      Rows = observations(persons)
      Columns = Variables(age, name, ...)
      Contain element of different types
      Element in same column: same types
  "
}

if(FALSE){
  "
    Create Data Frame
        Import from data source
        CSV file
        Relational Databse(e.g SQL)
        Software packages(Excel, SPSS...)
  "
}

# create 3 vector
name <- c("A", "B", "C", "D", "E")
age <- c(28, 30, 21, 39, 35)
child <- c(FALSE, TRUE, TRUE, FALSE, TRUE)

# create a data frame
df <- data.frame(name, age, child)
#column name match variable names


# Name data frame
names(df) <- c("Name", "Age", "Child")
df

or

df <- data.frame(Name = name, Age = age, Child = child)
df



#Data Frame Structure
str(df)
#length must be same so below code will return error
data.frame(name[-1], age, child)

df <- data.frame(name, age,  child, stringsAsFactors = FALSE)
str(df)





if(FALSE){
  "
    Subset Data Frame
        Subsetting syntax from matrices and lists
        [ from matrices
        [[ and $ from lists
  "
}



# People
name <- c("Anne", "Pete", "Frank", "Julia", "Catch")
age <- c(28, 30, 21, 39, 35)
child <- c(FALSE, TRUE, TRUE, FALSE, TRUE)
people <- data.frame(name, age, child, stringsAsFactors = FALSE)

people



# Subset data frame
people[3,2]
people[3,"age"]

people[3,] #All the information of Frank will be fetch

people[,"age"] # result is a vector
people[,2]

people[c(3,5), c("age", "child")]

people[2] # result is a dataframe not a vector




# Data Frame ~ List

# this all cases result is a vector
people$age
people[["age"]]
people[[2]]

#Result is a data frame
people[2]




# Extend Data Frame

  # Add columns = add variables
  # Add rows = add observations

# Add column
height <- c(163, 177, 163, 162, 157)
people$height <- height
people[["height"]] <- height
people
#OR
weight <- c(74,63, 68, 55, 56)
cbind(people, weight)

#Add row
tom <- data.frame("Tom", 37, FALSE, 183, 63)
rbind(people, tom) # it will not work

tom <- data.frame(name="Tom", age=37, child=FALSE, height=183, weight=63)



# Sorting
sort(people$age)

ranks <- order(people$age)
ranks
people$age

people[ranks, ]

