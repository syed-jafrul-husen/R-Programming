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
