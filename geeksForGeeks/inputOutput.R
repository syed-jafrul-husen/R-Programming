# as.integer(n) ---> convert to integer
# as.numeric(n) ---> convert to numeric type (float, double etc)
# as.complex(n) ---> convert to complex number (i.e 3 + 2i)
# as.Date(n) ------> convert to date ..., etc

var = readline();
var = as.integer(var);
print(var)


var = readline(prompt = "Enter any number : ");
var = as.integer(var)
print(var)


# Taking multiple inputs using braces
{
  var1 = readline("Enter 1st number: ")
  var2 = readline("Enter 2nd number: ")
  var3 = readline("Enter 3rd number: ")
  var4 = readline("Enter 4th number: ")
}
# converting each value
var1 = as.integer(var1)
var2 = as.integer(var2)
var3 = as.integer(var3)
var4 = as.integer(var4)

print(var1+var2+var3+var4)



# string and character input
var1 = readline(prompt = "Enter your name: ")
var2 = readline(prompt = "Enter any character: ")
var2 = as.character(var2)
print(var1)
print(var2)




# Taking input using scan method ##################

# scan() method is taking input continuously, to terminate 
# the input process, need to press Enter key 2 times 
# on the console.
x = scan()
print(x)


#double input using scan()
d = scan(what = double())

#String input using 'scan()'
s = scan(what = " ")

# character input using scan()
c = scan(what = character())

print(d)
print(s)
print(c)



# string file input using scan()
s = scan("fileString.txt", what = " ")

# double file input using scan()
d = scan("fileDouble.txt", what = double())

# character file input using scan()
c = scan("fileChar.txt", what = character())

# print the inputted values
print(s) # string
print(d) # double
print(c) # character


#Output ########################
x <- "Syed Jafrul Husen"
x

# print string
print("Hi")

#print variable
print(x)


# paste() method use to print output with string and variable together
# This method defined inside the print() function. paste() 
# converts its arguments to character strings. One can also 
# use paste0() method.

# using paste inside print() 
print(paste(x, "is best (paste inside print())"))  

# using paste0 inside print() 
print(paste0(x, "is best (paste0 inside print())"))  


x = "SJH"
x1 = 14
x2 = 4.11

sprintf("%s is the betst",x)
sprintf("%d is integer", x1)
sprintf("%f is float", x2)



#print using cat() function
cat(x, "is best\n")
cat("This is R language")



# message()
# simple diagnostic messages which are no warnings or errors 
# in the program. But it can be used for normal uses for 
# printing output
x = "SJH"
message(x, " is the best")
message("This is R language")



# Write output to a file write()
write.table(x, file = "my_data1.txt")
write.table("SJH is best", file = "my_data2.txt")




# Syntax: print(x, digit, na.print)
# Parameter:
    # x: specified argument to be displayed
    # digits: defines minimal number of significant digits
    # na.print: indicates NA values output format
x <- cars[1:5, ]
print(x)

x = 15/7
print(x, digits = 2)
print(x, digits = 3)
print(x, digits = 4)

x <- matrix( c(2, NA, 5, NA, 8, NA, 22, 67, 43), nrow = 3, byrow = TRUE )
print(x)
print(x, na.print="")
