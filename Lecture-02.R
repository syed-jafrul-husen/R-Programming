#Create Data Frame

df = data.frame(col1=1:4,col2=4:7,col3=7:10)

#Print column names
colnames(df)

#Print row names
rownames(df)

#Check dimension
dim(df)

#Check structure
str(df)

#Summary
summary(df)

#Create new data frame
df2 = df[,2:3]

df3 = df[1:3,]

#get one column
df[,1]
df$col1
