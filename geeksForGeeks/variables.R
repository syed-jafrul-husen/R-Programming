# "class(variable)" to determine the data type of the variable provided to it
var1 = "hello"
print(class(var1))


# "ls()" used to know all the present variables in the workspace
var1 = "hello"
var2 <- "hello"
"hello" -> var3
print(ls())


# "rm()" delete an unwanted variable within workspace
# this helps to clear memory space allocated to certain variables
print(var3)
rm(var3)
print(var3)


# R is a Lexical scope language ############

# In this example, g is looked up in the environment in which 
# it is defined and hence the value of a is 10. With dynamic 
# scoping, the value of a variable is looked up in the 
# environment in which it is called. In R that environment is 
# known as the parent environment so in function f the value 
# of a will be 2 whereas in g the value will be 10. This may 
# create an illusion of R language being a dynamic language 
# but in reality, it turns out to be Lexical Scope language


