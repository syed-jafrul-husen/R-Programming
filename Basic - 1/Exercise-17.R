library(tidyverse)
library(gapminder)

head(gapminder)

#facet
ggplot(gapminder, aes(lifeExp, gdpPercap)) +
  geom_point() +
  facet_grid(.~continent)

ggplot(gapminder, aes(lifeExp, gdpPercap)) +
  geom_point() +
  facet_grid(continent~.)

#facet_wrap()
ggplot(gapminder, aes(lifeExp, gdpPercap)) +
  geom_point() +
  facet_wrap(.~continent)


#coordinate flip
ggplot(gapminder, aes(continent, lifeExp)) +
  geom_boxplot() +
  coord_flip()

#theme
ggplot(gapminder, aes(continent, lifeExp, fill = continent)) +
  geom_boxplot() +
  theme_classic()

ggplot(gapminder, aes(continent, lifeExp, fill = continent)) +
  geom_boxplot() +
  theme_bw()

ggplot(gapminder, aes(continent, lifeExp, fill = continent)) +
  geom_boxplot() +
  theme_dark()



