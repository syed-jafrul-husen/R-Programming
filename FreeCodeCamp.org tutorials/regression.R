# Regression
# Out of many variables, one variable.
# Out of many score, one score

#Regression use many variables to predict scores on one variable.

#Many versions and many adaptations of regression make it flexible
# & powerful.


# Packages I load eveyt ime using: "pacman"
pacman::p_load(pacman, dplyr, GGally, ggplot2, ggthemes,
               ggvis, httr, lubridate, plotly, rio, rmakrkdown,
               shiny, stingr, tidyr
               )

library(datasets)

#Load data ###############
?USJudgeRatings
head(USJudgeRatings)
data <- USJudgeRatings

#Define variable groups
x <- as.matrix(data[-12])
y <- data[ ,12]
y


#Regression with simultaneous entry ####################

# Using variable groups
reg1 <- lm(y ~ x)  #lm means linear model

#Or specify variable individually
reg1 <- lm(RTEN ~ CONT + INTG + DMNR + DILG + CFMG +
             DECI, PREP + FAMI + ORAL + WRIT + PHYS,
           data = USJudgeRatings)

#Results
reg1
summary(reg1)


#More summaries
anova(reg1)   #Coefficients w/inferential tests
coef(reg1)    #Coefficients (same as reg1)
confint(reg1) #CI for coefficients 
resid(reg1)   #Residuals case-by-case
hist(residuals(reg1))  #Histogram of residuals


#Additional Models ##########################

#Use two additional libraries
p_load(lars, caret) #lars = Least Angles Regression
#caret = Classification and Regression Training

#Conventional stepwise regression
stepwise <- lars(x, y, type="stepwise")

#Stagewise: Like stepwise but with better generalizability  
forward <- lars(x, y, type="forward.stagewise")

#LAR: Least Angle Regression
lar <- lars(x, y, type="lar")

#LASSO: Least Absolute Shrinkage and Selection Operator
lasso <- lars(x, y, type="lasso")

#Comparison of R^2 for new models
r2comp <- c(stepwise$R2[6], forward$R2[6], lar$R2[6],
            lasso$R2[6]) %>% round(2)
names(r2comp) <- c("stepwise", "forward", "lar", "lasso")
r2comp  #Show values of R^2


#Clean Up

#Clear environment
rm(list = ls())
