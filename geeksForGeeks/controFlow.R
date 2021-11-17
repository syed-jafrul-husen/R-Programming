# for loop
x <- letters[4:10]
for(i in x){
  print(i)
}

#Nested loops
m <- matrix(1:14, 2)
for(r in seq(nrow(m))){
  for(c in seq(ncol(m))){
    print(m[r, c])
  }
  cat("\n")
}


#while loop
x = 1
while(x <= 5){
  print(x)
  x = x + 1
}


# repeat loop and break statement
x = 1
repeat{
  print(x)
  x = x+1
  if(x>5){
    break
  }
}


# return statement
func <- function(x){
  if(x>0){
    return ("positive")
  }else if(x==0){
    return ("zero")
  }else{
    return ("negative")
  }
}
func(1)
func(0)
func(-48)


# next statement
x <- 1:10
for(i in x){
  if(i%%2==0){
    next    #jumps to next
  }
  print(i)
}
