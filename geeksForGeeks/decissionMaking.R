# is statement

a = 10
b = 11

if(a==10){
  if(b==10){
    print("a:10 b:10")
  }else{
    print("a:10 b:11")
  }
}else{
  if(a==1){
    print("a:11 b:10")
  }else{
    print("a:11 b:11")
  }
}

# switch
# If no case is matched it outputs NULL as shown in example.

# Expression in terms of index value
x <- switch(
  2,          # Expression
  "Geeks1",    # case 1
  "for",       # case 2
  "Geeks2"    # case 3
)
print(x)

#Expression in terms of string value
y <- switch(
  "GFG3",        #Expression
  "GFG0" = "Geeks1",
  "GFG1" = "for",
  "GFG3" = "Geeks2"
)
print(y)

z <- switch(
  "GFG",        #Expression
  "GFG0" = "Geeks1",
  "GFG1" = "for",
  "GFG3" = "Geeks2"
)
print(z)


