df = data.frame(col1=LETTERS[1:10],col2=101:110,col3=rep(50,10),col4=1:10)
df
class(df)
str(df)
dim(df)

head(df)
tail(df)

duplicated(df)
!duplicated(df)
table(duplicated(df))
table(!duplicated(df))

unique(df$col1)
unique(df$col2)

length(df)
length(df$col1)

intersect(df$col1,df$col2)
intersect(df,df)
union(df,df)
union(df$col1,df$col2)
setdiff(df$col3,df$col4)
