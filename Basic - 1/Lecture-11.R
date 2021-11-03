?plot

head(cars)

plot(cars)

plot(cars$speed, cars$dist)

plot(cars$dist, cars$speed)

plot(cars$dist, cars$speed, col="blue")

plot(cars$dist, cars$speed, col="blue", main="My first plot")

plot(cars$dist, cars$speed, col="blue", main="My first plot", xlab="Distance", ylab="Car speed")


#types of plot
plot(cars$speed,cars$dist)

plot(cars$speed,cars$dist,"l")

plot(cars$speed, cars$dist, "b")

plot(cars$speed, cars$dist, "h")
