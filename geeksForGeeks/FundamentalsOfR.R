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









#Operators ########################
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

