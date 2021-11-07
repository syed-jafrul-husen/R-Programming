if(F)
{
  
"  Hierarchical clustering is and algorithm that groups
  similar objects into groups called clustering. "
  
"  There has two hierarchical clustering approach:
    1. bottom-up approach(based on similarity)
    2. top-down approach(based on dissimilarity) "
  
  

}


### install.packages("dendextend")
library(dendextend)

setwd("G:/All/R programming/Data")

x = read.table("Leukemia_Carcinoma.tsv", header=T, fill=T)
# For this message "line 1 did not have 8 elements" 
# used "fill=T"

dim(x)
x2 = x[,3:8] #we are getting all the row and column from 3 to 8
#first two column removed because to create dandogram we don't need name and ID


#For hierarchical clustering we can't use missing value otherwise it will show error
cl = na.omit(x2)
dim(cl)


?hclust
#This is the best clustering for this cancer data
hc <- hclust(as.dist(1-cor(cl[,1:ncol(cl)], method="spearman")), method="complete")
d = as.dendrogram(hc)
plot(d)


#Now the result will get worst if I use pearson method for clustering
hc <- hclust(as.dist(1-cor(cl[,1:ncol(cl)], method="pearson")), method="complete")
d = as.dendrogram(hc)
plot(d)


# so we should use proper method for clustering. 
# for example for gene expression we can't use pearson method we must use spearman method
hc <- hclust(as.dist(1-cor(cl[,1:ncol(cl)], method="spearman")), method="complete")
d = as.dendrogram(hc)
plot(d)

#make colorful plot
d <- d %>% color_branches(k=2) %>%
  set("branches_lwd",2) %>%
  set("labels_col", c("black")) %>%
  set("leaves_pch", 19) %>%
  set("leaves_cex", 1) %>%
  set("leaves_col", "black")
plot(d, horiz=F)
