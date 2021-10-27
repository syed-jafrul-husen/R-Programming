# print letters
letters[1:5]
letters[1:20]
LETTERS[1:20]

#print repeated elements
rep(1,3)
rep('a',20)

# create dataframe
df = data.frame(col1=letters[1:20], col2=rep("a",20), col3=1:20)
class(df)
str(df) # It will tell data structure of every column
dim(df)

df
head(df) #print first 6 row
tail(df) #print last 6 row


# Check duplicate
duplicated(df$col1)
duplicated(df$col2)
duplicated(df)
# Count how many False and true
table(duplicated(df$col1))
table(duplicated(df$col2))

duplicated(df$col3)
table(duplicated(df$col3))

duplicated(df$col2)
table(duplicated(df$col2))

!duplicated(df$col2)
table(!duplicated(df$col2))


# unique
unique(df)
unique(df$col1)
unique(df$col2)
# duplicated LOGICAL output dey, unique element output dey

# number of elements
length(df$col1)
length(df$col2)

# set operations
intersect(df$col1,df$col2)
union(df$col1,df$col2)
setdiff(df$col1,df$col2)
setdiff(df$col2,df$col1)
