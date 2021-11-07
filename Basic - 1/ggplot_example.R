library(tidyverse)
library(gapminder)

head(gapminder)

#make scatter plot
ggplot(gapminder, aes(gdpPercap, lifeExp)) +
  geom_point()



#log transformation value
ggplot(gapminder, aes(gdpPercap, lifeExp)) +
  geom_point() +
  scale_x_log10()

ggplot(gapminder, aes(log10(gdpPercap), lifeExp)) +
  geom_point()




#Change color in scatter
ggplot(gapminder, aes(log10(gdpPercap), lifeExp)) +
  geom_point(aes(color=continent))

#change size of point
ggplot(gapminder, aes(log10(gdpPercap), lifeExp)) +
  geom_point(aes(color = continent), size = 3)

#change some other parameter in scatter plot
ggplot(gapminder, aes(log10(gdpPercap), lifeExp)) +
  geom_point(pch=17, size = 2, alpha = .8, aes(color = continent))

ggplot(gapminder, aes(log10(gdpPercap), lifeExp)) +
  geom_point(pch = 17, color = "red", alpha = .8, size = 2)




#use smoothing function
ggplot(gapminder, aes(log10(gdpPercap), lifeExp)) +
  geom_point() +
  geom_smooth()

#Specify the method of smoothing
ggplot(gapminder, aes(log10(gdpPercap), lifeExp)) +
  geom_point() +
  geom_smooth(lwd = 2, se = FALSE, method="lm", col="blue")

ggplot(gapminder, aes(log10(gdpPercap), lifeExp)) +
  geom_point() +
  geom_smooth(aes(color=continent))

ggplot(gapminder, aes(log10(gdpPercap), lifeExp)) +
  geom_point(aes(color=continent)) +
  geom_smooth(aes(color="continent"))






#Example of faceting
ggplot(gapminder, aes(log10(gdpPercap), lifeExp)) +
  geom_point() +
  facet_wrap(~continent)


#Change faceting by column
ggplot(gapminder, aes(log10(gdpPercap), lifeExp)) +
  geom_point() +
  facet_wrap(~continent, ncol=1)

# Change faceting by row
ggplot(gapminder, aes(log10(gdpPercap), lifeExp)) +
  geom_point() + 
  facet_wrap(~continent, nrow=1) 



#boxplot and jitter
ggplot(gapminder, aes(continent, lifeExp)) +
  geom_jitter() +
  geom_boxplot()

ggplot(gapminder, aes(continent, lifeExp)) +
  geom_jitter(alpha=1/2) +
  geom_boxplot()

ggplot(gapminder, aes(continent, lifeExp)) +
  geom_jitter(alpha=1/2) +
  geom_boxplot(aes(fill=continent))





# violin and jitter
ggplot(gapminder, aes(continent, lifeExp)) +
  geom_jitter() +
  geom_violin()

ggplot(gapminder, aes(continent, lifeExp)) +
  geom_jitter(alpha=1/2) +
  geom_violin()

ggplot(gapminder, aes(continent, lifeExp)) +
  geom_jitter(alpha=1/2) +
  geom_violin(aes(fill=continent))




#histograms
ggplot(gapminder, aes(lifeExp)) +
  geom_histogram()

#change binsize
ggplot(gapminder, aes(lifeExp)) +
  geom_histogram(bins=50)

ggplot(gapminder, aes(lifeExp)) +
  geom_histogram(bins=100)

ggplot(gapminder, aes(lifeExp)) +
  geom_histogram(bins=500)

ggplot(gapminder, aes(lifeExp)) +
  geom_histogram(aes(color=continent))

ggplot(gapminder, aes(lifeExp)) +
  geom_histogram(aes(fill=continent))



#density plot
ggplot(gapminder, aes(lifeExp)) +
  geom_density()

ggplot(gapminder, aes(lifeExp)) +
  geom_density(aes(fill="red"))

#Change density(transparancy)
ggplot(gapminder, aes(lifeExp)) +
  geom_density(aes(fill="red"), alpha=1/4)

ggplot(gapminder, aes(lifeExp)) +
  geom_density(aes(fill=continent), alpha=1/4)




#Density and histogram
ggplot(gapminder, aes(lifeExp)) +
  geom_density(size=1.5, fill="pink", alpha=0.5) +
  geom_histogram(aes(y=..density..), binwidth=4, color="black", fill="blue", alpha=0.5)




#Time series line plot
ggplot(gapminder, aes(x=year, y=lifeExp, group=country)) +
  geom_line()


#Line plot for median life Exp
gapminder %>%
  group_by(continent, year) %>%
  summarise(lifeExp=median(lifeExp)) %>%
  ggplot(aes(x=year, y=lifeExp, color=continent)) +
  geom_line(size=1)+
  geom_point(size=1.5)


# line plot for median life Exp and smooth
gapminder %>%
  group_by(continent, year) %>%
  summarise(lifeExp=median(lifeExp)) %>%
  ggplot(aes(x=year, y=lifeExp, color=continent)) +
  geom_line(size=1) +
  geom_point(size=1.5) +
  geom_smooth(aes(fill=continent), method="lm")

