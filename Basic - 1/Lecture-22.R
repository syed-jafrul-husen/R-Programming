# multiplication of 3

for(index in 1:10){
  print(c(3, "*", index, "=", 3*index))
}

# Make a function for multiplication table
multiplication_table = function(inputNumber){
  for(index in 1:10)
  {
    print(c(inputNumber, "*", index, "=", inputNumber*index))
  }
}

multiplication_table(3)
multiplication_table(5)
multiplication_table(150)
