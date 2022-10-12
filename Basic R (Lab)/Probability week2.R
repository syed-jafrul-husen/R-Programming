# 1. Set Operations
a <- c(0,1,2,3,4,5) ##c() is a generic function which combines its arguments.
c(4,5,6,7,8,9) -> b
print(a)
b

union(a,b)

intersect(a,b)

a_b = setdiff(a,b) #All data of a which are not exist in b vector or data frame
b_a = setdiff(b,a) #All data of b which are not exist in a vector or data frame
a_b
b_a

setequal(a,b) # perform vector a is equal to a vector or not

a==b

x <- c(sort(sample(1:20, 20)), NA)
x
(y<-c(sort(sample(3:23, 7)), NA))
union(x,y)
intersect(x,y)
setdiff(x,y)
setdiff(y,x)
setequal(x,y)
help(sample)


# 2. Conditional Probability
# Suppose that a certain disease (D) has a prevalence of 20/100
# Also suppose that a certain symptom (S) has a prevalence 
# (in the general population = people with that disease D and
# people without that disease [probability with other diseases,
# but it's not important]) of 30/100

# How to get the conditional probability P(S|D)=30%?
symptom = sample(c("yes", "no"), 100000, prob=c(0.2,0.8), rep=TRUE)
disease = sample(c("yes", "no"), 100000, prob=c(0.3,0.7), rep=TRUE)

head(symptom)
head(disease)

dataset <- data.frame(symptom, disease)
help(with)
dst_S_D <- with(dataset, table(symptom, disease))
dst_S_D

# So the pr(D|S="yes") = 
# p(D|S) means what is the probability of D given S
# Math: p(D|S) = p(D n S)/ p(S)
probD_Sy <- dst_S_D[2, 2] / sum(dst_S_D[2, ])
probD_Sy

# How about pr(S|D="yes") = ?
probS_D <- dst_S_D[2,2] / sum(dst_S_D[,2])
probS_D


coin <- c("Heads", "Tails")
sample(coin, 10, replace=TRUE)

table(sample(coin, 1000, replace=TRUE))

prop.table(table(sample(coin, 1000, replace=TRUE)))
help(prop)
??prop

# combine these results into a single table or dataframe of some kind
freq <- as.vector(table(sample(coin, 100, replace=TRUE)))
prop <- prop.table(freq)
freq
prop
flips_df <- data.frame('Face'=coin,
                       'Frequency' = freq,
                       'Proportion' = prop)
flips_df



# 4. Deal with data

# Read From Excel
install.packages('readxl')
library(readxl)
Homeless2010_2015 <- read_excel("G:/All/R programming/Basic R (Lab)/Homeless2010-2015.xlsx")
View(Homeless2010_2015)

# Read From SPSS
installed.packages('haven')
library(haven)
homelessUpTo2009 <- read_sav("G:/All/R programming/Basic R (Lab)/homelessUpto2009.sav")

# Read from SAS
# library(Hmisc)
# mydata <- sasxport.get("c:/mydata.xpt")

# Read from Stata
library(foreign)
mydata <- read.dta("c:/mydata.dta")


names(Homeless2010_2015)
names(homelessUpTo2009)
# It seems that these are two similar datasets that we would like to merge into one new file.
# However, the first name of the first variable of the second file is not the same as the one in the first file (Publisher Label vs PublisherLabel). We want to change the name `Publisher Label` to `PublisherLabel`.
names(Homeless2010_2015)[1] <- "PublisherLabel"
names(Homeless2010_2015)

# Merge data
# add some new lines on the same variables. Use the command `rbind`
dataAll <- rbind(homelessUpTo2009, Homeless2010_2015)

# Dimension check
dim(homelessUpTo2009)
dim(Homeless2010_2015)
dim(dataAll)

# merge data by adding new column using 'cbind' or 'merge' depending on the case
help("data.frame")
authors <- data.frame(
  surname = I(c("Tukey", "Venables", "Tierney", "Ripley", "McNeil")),
  nationality = c("US", "Australia", "US", "UK", "Australia"),
  deceased = c("yes", rep("no", 4))
)

books <- data.frame(
  name = I(c("Tukey", "Venables", "Tierney",
             "Ripley", "Ripley", "McNeil", "R Core")),
  title = c("Exploratory Data Analysis",
            "Modern Applied Statistics ...",
            "LISP-STAT",
            "Spatial Statistics", "Stochastic Simulation",
            "Interactive Data Analysis",
            "An Introduction to R"),
  other.author = c(NA, "Ripley", NA, NA, NA, NA,
                   "Venables & Smith"))

m1 <- merge(authors, books, by.x="surname", by.y="name")
m2 <- merge(books, authors, by.x="name", by.y="surname")
m1

# Save data
write.table(dataAll,"G:/All/R programming/Basic R (Lab)/dataAll.txt",row.names=FALSE)
# Read
dataAll <- read.table("G:/All/R programming/Basic R (Lab)/dataAll.txt",header=TRUE)
dataAll

