#Use of for loop print 1 to 10

for(index in 1:10){
  print(index)
}

for(index in 1:10){
  print(c("index = ",index))  # we have to write c so that it can concrete the string
}



#multiply 3 by 1:10
for(index in 1:10){
  print(3*index)
}

#
for(index in 1:10){
  print(c(3, "*", index, "=", 3*index))
}

