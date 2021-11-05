#install pheatmap

install.packages("pheatmap")
library(pheatmap)

?pheatmap

#make a dataframe/matrix
head(mtcars)
class(mtcars)

df = scale(mtcars)

pheatmap(df, 
         border_color = "red",
         cellwidth = 15,
         cluster_rows = T,
         cutree_rows = 3,
         show_rownames = T,
         fontsize = 7,
         display_numbers = T)

#
pheatmap(mtcars)
pheatmap(mtcars, scale="column")

if(FALSE){
  "We use scaling when the difference between 
  dataframe value is higher and we can't 
  see anything if we display the heapmat pattern"
  
  "Scalling function column and row er value 
  gula ke kasakachi distribution e niye chole ashe"
}

  
#Exercise
pheatmap(df, 
         color="red", 
         main="This is my First heatmap")