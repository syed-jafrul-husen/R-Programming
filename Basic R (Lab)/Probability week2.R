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
