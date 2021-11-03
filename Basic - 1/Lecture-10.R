library(gapminder)

head(gapminder)

write.table(gapminder, "C:/Users/Unique-Pc/Downloads/my_gapminder.txt", quote=FALSE, row.names=F, sep=",") 



#
x = read.table("C:/Users/Unique-Pc/Downloads/my_gapminder.txt",sep=",",header=T)


# Load Excel file
install.packages("gdata")
library(gdata)
xl = read.xls("C:/Users/Unique-Pc/Downloads/example.xlsx")





