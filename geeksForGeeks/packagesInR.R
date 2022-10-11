# To check what packages are installed
installed.packages()

# To update all the packages
update.packages()

# To update a specific packages
install.packages("dplyr")




# dplyr packages ###########################
library("dplyr")
install.packages("dplyr")
d <- data.frame(name=c("Abhi", "Bhavesh", "Chaman", "Dimri"),
                 age=c(7, 5, 9, 16),
                 ht=c(46, NA, NA, 69),
                 school=c("yes", "yes", "no", "no"))
d
# Finding rows with NA values
d % > % filter(is.na(ht))
# Finding rows with no NA value
d % > % filter(!is.na(ht))


# Arranging name according to the age
d.name<- arrange(d, age)
print(d.name)



# ggplot2 ###############################
# Main component of the grammar of the graphics
  # 1. Data:  The element is the data set itself
  # 2. Aesthetics: he data is to map onto the Aesthetics attributes such as x-axis, y-axis, color, 
                  # fill, size, labels, alpha, shape, line width, line type
  # 3. Geometrics: How our data being displayed using point, line, histogram, bar, boxplot
  # 4. Facets:   It displays the subset of the data using Columns and rows
  # 5. Statistics:  inning, smoothing, descriptive, intermediate
  # 6. Coordinates:   the space between data and display using Cartesian, fixed, polar, limits
  # 7. Theme:  Non-data link

library(ggplot2)
library(dplyr)

# Data layer
ggplot(data=mtcars)

# Aesthetic layer
ggplot(data = mtcars, aes(x = hp, y = mpg, col = disp))

# Geometric layer
ggplot(data = mtcars, 
       aes(x = hp, y = mpg, col = disp)) + geom_point()
# Adding size
ggplot(data = mtcars, 
       aes(x = hp, y = mpg, size = disp)) + geom_point()
# Adding color and shape
ggplot(data = mtcars, 
       aes(x = hp, y = mpg, col = factor(cyl), 
           shape = factor(am))) +
  geom_point()
# Histogram plot
ggplot(data = mtcars, aes(x = hp)) +
  geom_histogram(binwidth = 5)


# Facet Layer
p <- ggplot(data = mtcars, 
            aes(x = hp, y = mpg, 
                shape = factor(cyl))) + geom_point()
# Separate rows according to transmission type
p + facet_grid(am ~ .)
# Separate columns according to cylinders
p + facet_grid(. ~ cyl)


# Statistics layer
ggplot(data = mtcars, aes(x = hp, y = mpg)) + 
  geom_point() + 
  stat_smooth(method = lm, col = "red")


# Coordinates layer: Control plot dimensions
ggplot(data = mtcars, aes(x = wt, y = mpg)) +
  geom_point() +
  stat_smooth(method = lm, col = "red") +
  scale_y_continuous("mpg", limits = c(2, 35), 
                     expand = c(0, 0)) +
  scale_x_continuous("wt", limits = c(0, 25),
                     expand = c(0, 0)) + coord_equal()

# Add coord_cartesian() to proper zoom in
ggplot(data = mtcars, aes(x = wt, y = hp, col = am)) +
  geom_point() + geom_smooth() +
  coord_cartesian(xlim = c(3, 6))


# Theme layer
ggplot(data = mtcars, aes(x = hp, y = mpg)) +
  geom_point() + facet_grid(. ~ cyl) +
  theme(plot.background = element_rect(
    fill = "black", colour = "gray"))
ggplot(data = mtcars, aes(x = hp, y = mpg)) +
  geom_point() + facet_grid(am ~ cyl) + 
  theme_gray()






# Grid and Lattice package ##################

install.packages("pkg")
# Load the grid package
local({pkg <- select.list(sort(.packages(all.available=TRUE)),
            graphics=TRUE) + if(nchar(pkg)) 
              library(pkg, character.only=TRUE)})

# To see the list of all the functions in grid package,
library(help = "grid")


library(grid)
# Saving output as png file
png(file ="grid-gfg.png")

# Create circle grob
cir <- circleGrob(name = "cir", x = 0.3, y = 0.3, r = 0.2,
                  gp = gpar(col = "black", lty = 3))
grid.draw(cir)

# Create rectangular grob
rect <- rectGrob(name = "rect", x = 0.5, y = 0.5,
                 width = 0.5, height = 0.3)
grid.draw(rect)

# Saving the file
dev.off()

# R lattice packages
# The lattice package uses grid package to provide better 
# relationships between the data. It is an add-on package 
# for the implementation of Trellis graphics (graphics that 
# shows relationships between variables conditioned together)
install.packages("lattice")
library(help = "lattice")


library(lattice)
attach(mtcars)
# Output to be present as PNG file
png("DensityPlotLatticeGFG.png")
densityplot(~hp, main ="Density plot of HP", xlab ="HP")
# Saving the file
dev.off()

library(ToothGrowth)
png("HistogramLatticeGFG.png")
histogram(~len, data = ToothGrowth,
          main = "Histogram of Length")
dev.off()




# Shiny packages #############################
#  Shiny is an R package that makes it easy to build 
# interactive web apps straight from R. It helps to host 
# standalone apps on a webpage or embed them in R Markdown 
# documents or build dashboards. One can also extend Shiny apps with CSS themes, htmlwidgets, and JavaScript actions.
install.packages("shiny")
if (!require("remotes"))
  install.packages("remotes")
remotes::install_github("rstudio/shiny")

library(shiny)
# define a page with fluid layout
ui <- fluidPage(h1("GeeksforGeeks article on shiny package in R"),
                p(style = "font-family:Impact", "My first shiny app")
)
server <- function(input, output) {}
shinyApp(ui = ui, server = server)



# import shiny package

library(shiny)
# define fluid page layout
ui <- fluidPage(
  sliderInput("obs", "Number of observations", 0, 1000, 500),
  actionButton("goButton", "Go!", class = "btn-success"),
  plotOutput("distPlot")
)
server <- function(input, output)
{
  output$distPlot <- renderPlot({
    input$goButton
    dist <- isolate(rnorm(input$obs))
    hist(dist)
  })
}
# create shiny app object using shinyApp
shinyApp(ui, server)


library(shiny)
# define fluid page layout
ui <- fluidPage(
  checkboxGroupInput("icons", "Choose icons:",
                     choiceNames =
                       list(icon("dog"), icon("cat"),
                            icon("fish"), icon("bug")),
                     choiceValues =
                       list("dog", "cat", "fish", "bug")),
  textOutput("txt")
)
server <- function(input, output, session) 
{
  output$txt <- renderText({
    icons <- paste(input$icons, collapse = ", ")
    paste("You chose", icons)
  })
}
shinyApp(ui = ui, server = server)


# Description
ui <- fluidPage(
  textInput("txt", "Enter yoour text here", "Empty"),
  verbatimTextOutput("value")
)
server <- function(input, output)
{
  output$value <- renderText({ input$text })
}
shinyApp(ui, server)


library(shiny)
ui <- fluidPage(
  textInput(inputId = "Name", label = "Enter your name"),
  textOutput("txt")
)
server <- function(input, output, session) 
{
  output$txt <- renderText({
    Name <- paste(input$Name, collapse = ", ")
    paste("Welcome! to geeksforgeeks ", Name)
  })
}
shinyApp(ui = ui, server = server)



library(shiny)
ui <- fluidPage(
  sliderInput(inputId = "num", 
              label = "Choose a number", 
              value = 25, min = 1, max = 100),
  wellPanel(plotOutput("hist"))
)
server <- function(input, output)
{
  output$hist <- renderPlot({
    hist(rnorm(input$num), main = input$title)
  })
}
shinyApp(ui = ui, server = server)




# Data Munging #################
# Data Munging is the general technique of transforming data
# from unusable or erroneous form to useful form
# the procedure of cleansing the data manually is known as 
# data munging.
# apply(X, margin, function) 
  # margin: a value between 1 and 2 in order to decide where 
  # to apply the function [ 1- row; 2- column] 

m <- matrix(C <- (1:10), 
            nrow = 5,
            ncol = 6)
m
a_m <- apply(m, 2, sum)
a_m

# lapply() function is used to perform operations on a list 
# and it returns a resultant list of the same size as the 
# input list. The 'l' in lapply() refers to lists
movies <- c("SPIDERMAN", "BATMAN", "AVENGERS", "FROZEN")
movies
movies_lower <- lapply(movies, tolower)
str(movies_lower)

# The sapply() function takes any vector or object or list 
# and performs the exact operation as the lapply() function.

# The tapply() function is used to calculate or measure mean, 
# median, maximum, and so on, or to perform a function on 
# each and every factor of the variable. It is efficiently 
# used to create a subset of any vector and then to apply or
# perform any function on them.
  # tapply(X, index, func = NULL)
  # X: an object or vector 
  # index: a list of factor
  
data(iris)
tapply(iris$Sepal.Width, iris$Species, median)


# aggregate() function is used to combine or aggregate the 
# input data frame by applying a function on each column of a
# sub-data frame
assets <- data.frame(
  asset.class = c("equity", "equity", "equity",
                  "option", "option", "option",
                  "bond", "bonnd"),
  rating = c("AAA", "A", "A",
             "AAA", "BB", "BB",
             "AAA", "A"),
  counterparty.a = c(runif(3), rnorm(5)),
  counterparty.b = c(runif(3), rnorm(5)),
  counterparty.c = c(runif(3), rnorm(5))
  ) 
assets

exposure <- aggregate(
  x = assets[c("counterparty.a", "counterparty.b",
               "counterparty.c")],
  by = assets[c("asset.class", "rating")],
  FUN = function(market.values){
    sum(pmax(market.values, 0))
  }
)
exposure


# Using the plyr Package for Data Munging
# The plyr package is used for splitting, applying, and combining data

# Using ddply()

library(plyr)
dfx <- data.frame(
  group = c(rep('A', 8), 
            rep('B', 15),
            rep('C', 6)),
  sex = sample(c("M", "F"),
               size = 29,
               replace = TRUE),
  age = runif(n = 29,
              min = 18,
              max = 54)
)


ddply(dfx, .(group, sex), summarize,
      mean = round(mean(age), 2),
      sd = round(sd(age), 2))