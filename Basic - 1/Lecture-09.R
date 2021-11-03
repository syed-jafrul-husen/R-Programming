library(dplyr)
library(gapminder)

# Use of summary function
head(gapminder)

gapminder %>% 
  summarize(minimum = min(pop),
            average = mean(pop),
            maximum = max(pop),
            total = n()) #Total number of row or element

## Use of group_by() function
gapminder %>% 
  group_by(continent) %>%
  summarize(minimum = min(pop),
            average = mean(pop),
            maximum = max(pop),
            total = n())

gapminder %>%
  group_by(continent,country) %>%
  summarize(minimum = min(pop),
            average = mean(pop),
            maximum = max(pop),
            total = n())

gapminder %>%
  group_by(country) %>%
  summarize(median = mean(gdpPercap))
