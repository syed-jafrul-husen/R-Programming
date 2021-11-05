install.packages("tidyverse")

library(tidyverse)
library(gapminder)

head(gapminder)

#bar
ggplot(gapminder, aes(continent)) +
  geom_bar()
# geom_bar() automatically frequency count kore histogram create kore


#Use of pipe in ggplot
gapminder %>%
  filter(year == 1952)

gapminder %>%
  filter(year == 1952) %>%
  ggplot(aes(continent)) + 
  geom_bar()

gapminder %>%
  filter(year == 1952) %>%
  ggplot(aes(continent, pop)) +
  geom_bar(stat = "identity")

gapminder %>%
  filter(year == 1952) %>%
  ggplot(aes(continent, pop)) +
  geom_col()


#Stacked bar
gapminder %>%
  filter(year>=1952 & year<=1970) %>%
  ggplot(aes(year,pop)) + 
  geom_bar(stat = "identity")

#if we want to know population per year by separating continent
gapminder %>%
  filter(year>=1952 & year<=1970) %>%
  ggplot(aes(year,pop)) +
  geom_bar(stat = "identity", aes(fill=continent))
