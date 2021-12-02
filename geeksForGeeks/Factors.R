# Factors #####################
# They can be stored as integers with a corresponding label
# to every unique integer

# x: It is the vector that needs to be converted into a factor.
# Levels: It is a set of distinct values which are given to 
    # the input vector x.
# Labels: It is a character vector corresponding to the number 
    #of labels.
# Exclude:This will mention all the values you want to exclude.
# Ordered: This logical attribute decides whether the levels 
    # are ordered.
# nmax: It will decide the upper limit for the maximum number 
    # of levels.

x <- c("female", "male", "male", "female")
print(x)

gender <- factor(x)
print(gender)

gender <- factor(c("female", "male", "male", "female"),
                 levels = c("female", "transgender", "male"));
gender

is.factor(gender)
class(gender)

# Accessing elements of a factor
gender[3]
gender[c(2,4)]

# Excluding 3rd element
gender <- factor(c("female", "male", "male", "female"  ));
gender[-3]


# Modification of factor
gender <- factor(c("female", "male", "male", "female"  ));
gender[2]<-"female"
gender

gender <- factor(c("female", "male", "male", "female"  ));
# add new level
levels(gender) <- c(levels(gender), "other")    
gender[3] <- "other"
gender


# Factors as data frame
age <- c(40, 49, 48, 40, 67, 52, 53)  
salary <- c(103200, 106200, 150200,
            10606, 10390, 14070, 10220)
gender <- c("male", "male", "transgender",
            "female", "male", "female", "transgender")
employee<- data.frame(age, salary, gender)  
print(employee)  
print(is.factor(employee$gender)) 


# Ordering factor levels
size = c("small", "large", "large", "small",
         "medium", "large", "medium", "medium") 
size_factor <- factor(size)                                      
print(size_factor)
ordered.size <- factor(size, levels = c(
  "small", "medium", "large"), ordered = TRUE)
print(ordered.size)
size = c("small", "large", "large", "small", 
         "medium", "large", "medium", "medium")  
sizes <- ordered(c("small", "large", "large",
                   "small", "medium"))
sizes <- ordered(sizes, levels = c("small", "medium", "large"))    
print(sizes)




# Factors to numeric
    # step 1: convert the data vector into factor
    # step 2: the factor is convert into numeric vector
V <- c("North", "South", "East", "East")
drn <- factor(V)
as.numeric(drn)


soap_cost <- factor(c(29, 28, 210, 28, 29)) 
# Converting Factor to numeric 
as.numeric(as.character(soap_cost)) 


# Converting numeric value to factor
age <- c(40, 49, 48, 40, 67, 52, 53)   
salary <- c(103200, 106200, 150200, 10606, 
            10390, 14070, 10220) 
gender <- c("male", "male", "transgender",  
            "female", "male", "female", "transgender") 
employee<- data.frame(age, salary, gender)   
# Creating a factor corresponding to age 
# with three equally spaced levels 
wfact = cut(employee$age, 3) 
table(wfact) 


age <- c(40, 49, 48, 40, 67, 52, 53)   
salary <- c(103200, 106200, 150200, 10606, 10390, 14070,
            10220) 
gender <- c("male", "male", "transgender", 
            "female", "male", "female", "transgender") 
employee<- data.frame(age, salary, gender)   
wfact = cut(employee$age, 3, 
            labels=c('Young', 'Medium', 'Aged')) 
table(wfact) 



# Convert unordered factor to ordered factor
x<-c("North", "North", "East", "West")  
# Converting vector into factor 
Directions <- factor(x) 
# Using as.ordered() Function 
# to order an unordered factor 
as.ordered(Directions) 
is.factor(x)
is.factor(Directions)

# Vector to factor
x<-c("female", "male", "male", "female") 
as.factor(x)
