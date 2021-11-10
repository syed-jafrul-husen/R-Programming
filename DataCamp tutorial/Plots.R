temparature <- c(0, 20, 40, 60, 80, 100, 120, 140, 160, 180, 200)
pressure <- c(0.0002, 0.0012, 0.0060, 0.0300, 0.0900, 0.2700, 0.7500, 1.8500, 4.2, 8.8, 17.3)
mercury <- data.frame(temparature, pressure)


# Basic Plot
plot(mercury$temparature, mercury$pressure)

#Fancy plot
plot(mercury$temparature, mercury$pressure,
     xlab = "Temparature",
     ylab = "Pressure",
     main = "T vs P for mercury",
     type = "o", #l
     col = "orange")


# par
? par
par()

par(col="blue")
plot(mercury$temparature, mercury$pressure)
plot(mercury$pressure, mercury$temparature)


plot(mercury$temparature, mercury$pressure,
     xlab = "Temparature",
     ylab = "Pressure",
     main = "T vs P for Mercury",
     type = "o",
     col = "orange",
     col.main = "darkgray",
     cex.axix = 0.6,
     lty = 5,
     pch = 4)



sales <- c(31, 56, 10, 19, 37)
ads <- c(8.2, 6.9, 3, 12, 10.6)
comp <- c(11, 12, 15, 1, 5)
inv <- c(94, 32, 49, 60, 67)
size_dist <- c(8.2, 4.1, 4.3, 16.1, 14.1)

shop <- data.frame(sales, ads, comp, inv, size_dist)



#mfrow in par() function
par(mfrow = c(2,2))
plot(shop$ads, shop$sales)
plot(shop$comp, shop$sales)
plot(shop$inv, shop$sales)
plot(shop$size_dist, shop$sales)

#mfcol in par() function
par(mfcol = c(2,2))
plot(shop$ads, shop$sales)
plot(shop$comp, shop$sales)
plot(shop$inv, shop$sales)
plot(shop$size_dist, shop$sales)

# reset
par(mfrow = c(1,1))
plot(shop$ads, shop$sales)



#layout()
grid <- matrix(c(1,1,2,3), nrow=2, ncol=2, byrow=TRUE)
grid
layout(grid)
plot(shop$ads, shop$sales)
plot(shop$comp, shop$sales)
plot(shop$inv, shop$sales)

#reset the grid
layout(1)
par(mfcol = c(1,1))


#reset all parameter
old_par <- par()
par(col="red")
plot(shop$ads, shop$sales)

par(old_par)
plot(shop$ads, shop$sales)



# Stack graphical elements
plot(shop$ads, shop$sales,
     pch = 16, col=2,
     xlab = "advertisements",
     ylab = "net sales")

# Coefficient of a straight line of a factor or a separate values
lm_sales <- lm(shop$sales ~ shop$ads)
abline(coef(lm_sales), lwd = 2)

lines(shop$ads, shop$sales)


ranks <- order(shop$ads)
plot(shop$ads, shop$sales,
     pch=16, col=2,
     xlab = "advertisement",
     ylab = "net sales")
abline(coef(lm_sales), lwd = 2)
lines(shop$ads[ranks], shop$sales[ranks])

