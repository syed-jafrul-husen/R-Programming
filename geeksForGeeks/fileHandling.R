# The file created can be seen in the working directory
file.create("GFG.txt")

write.table(x=iris[1:10, ], file="GFG.txt")

file.rename("GFG.txt", "newGFG.txt")

file.exists("GFG.txt")
file.exists("newGFG.txt")

new.iris <- read.table(file="GFG.txt")
new.iris <- read.table(file="newGFG.txt")
print(new.iris)

# Show all files in current directories
list.files()

# Copying
file.copy("G:/All/R programming/geeksForGeeks/fileHandling.R", "H:/")
list.files("H:/")





# Reading Files #############################

# read.delim(): This method is used for reading "tab-separated value" files (".txt"). By default, 
# point (".") is used as decimal points.
myData = read.delim("G:/All/R programming/geeksForGeeks/a.txt", header = FALSE)
print(myData)

# To know your current working directory, type the function getwd() in R console.
getwd()

# read.delim2(): This method is used for reading "tab-separated value" files (".txt"). By default, 
# point (",") is used as decimal points.
myData = read.delim2("G:/All/R programming/geeksForGeeks/a.txt", header = FALSE)
print(myData)

myFile = read.delim(file.choose(), header = FALSE)
print(myFile)

library(readr)
# Use read_tsv() to read text file
myData = read_tsv("G:/All/R programming/geeksForGeeks/a.txt", col_names = FALSE)
print(myData)


# read_lines(): This method is used for the reading line of your own choice whether it's one or two 
# or ten lines at a time. To use this method we have to import reader package.
library(readr)
myData = read_lines("G:/All/R programming/geeksForGeeks/a.txt", n_max = 1)
print(myData)
myData = read_lines("G:/All/R programming/geeksForGeeks/a.txt", n_max = 2)
print(myData)

# read_file(): This method is used for reading the whole file. To use this method we have to 
# import reader package.
library(readr)
myData = read_file("G:/All/R programming/geeksForGeeks/a.txt")
print(myData)


# read.table(): read.table() is a general function that can be used to read a file in table format.
# The data will be imported as a data frame.
myData = read.table("basic.csv") 
print(myData)

# read.csv(): read.csv() is used for reading "comma separated value" files (".csv"). 
# In this also the data will be imported as a data frame.
myData = read.csv("basic.csv") 
print(myData)

# read.csv2(): read.csv() is used for variant used in countries that use a comma "," as decimal point
# and a semicolon ";" as field separators.
myData = read.csv2("basic.csv") 
print(myData)

myData = read.csv(file.choose())
print(myData)




# Writing to files in R programming ##########################################################

# write.csv() uses "." for the decimal point and a comma (", ") for the separator.
# write.csv2() uses a comma (", ") for the decimal point and a semicolon (";") for the separator.
write.csv(myData, file = "basic.csv")
write.csv2(myData, file = "basic.csv")

write.table(myData, file = "my_data.txt", sep = "")

library("xlsx")
write.xlsx(myData, file = "result.xlsx", sheetName = "my_data", append = FALSE)




# Read lines from a file #####################################

# Store currently used directory 
path <- getwd() 
write.table(x = "the first line\nthe second line\nthe third line", 
            file = paste(path, "/my_txt.txt", sep = ""), 
            row.names = FALSE, col.names = FALSE, quote = FALSE) 


my_txt <- readLines(paste(path, "/my_txt.txt", sep = "")) 
my_txt 


path <- getwd() 
# Write example text to currently used directory 
write.table(x = "the first line\nthe second line\nthe third line",
            file = paste(path, "/my_txt.txt", sep = ""), 
            row.names = FALSE, col.names = FALSE, quote = FALSE) 
# Apply readLines function to first two lines 
my_txt_ex2 <- readLines(paste(path, "/my_txt.txt", sep = ""),             
                        n = 2) 
my_txt_ex2 




# Working with binary file ##############################
df = data.frame(
  "ID" = c(1, 2, 3, 4),
  "Name" = c("Tony", "Thor", "Loki", "Hulk"),
  "Age" = c(20, 34, 24, 40),
  "Pin" = c(756083, 756001, 751003, 110011)
)
# Creating a connection object to write the binary file using mode "wb"
con = file("myfile.dat", "wb")
# Write the column names of the data frame to the connection object
writeBin(colnames(df), con)
# Write the records in each of the columns to the file
writeBin(c(df$ID, df$Name, df$Age, df$Pin), con)
# Close the connection object
close(con)


# Reading from the binary file

con = file("myfile.dat", "rb")
# Read the column names
# n = 4 as here 4 column
colname = readBin(con, character(),  n = 4)
# Read column values
# n = 20 as here 16 values and 4 column names
con = file("myfile.dat", "rb")
bindata = readBin(con, integer(), n = 20)
# Read the ID values
# as first 1:4 byte for col name
# then values of ID col is within 5 to 8
ID = bindata[5:8]
# Similarly 9 to 12 byte for values of name column
Name = bindata[9:12]
# 13 to 16 byte for values of the age column
Age = bindata[13:16]
# 17 to 20 byte for values of Pincode column
PinCode = bindata[17:20]
# Combining all the values and make it a data frame
finaldata = cbind(ID, Name, Age, PinCode)
colnames(finaldata)= colname
print(finaldata)


# Creating another data frame to append with the existing data frame
df = data.frame(
  "Salary" = c(100, 200, 300, 400),
  "Experience" = c(3, 5, 10, 4)
)
# Creating a connection object to append the binary file using mode "ab"
con = file("myfile.dat", "ab")
# append the column names of the data frame to the connection object
writeBin(colnames(df), con)
# append the records in each of the columns to the file
writeBin(df$Salary, con)
# Close the connection object
close(con)


# Delete the binary file
fileName <- "myfile.dat"
if (file.exists(fileName)) 
  file.remove(fileName)
# Unlink the deleted file
unlink(fileName, recursive = TRUE)

