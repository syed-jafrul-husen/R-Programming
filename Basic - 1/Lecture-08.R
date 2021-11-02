library(dplyr)
library(gapminder)

#pipe()
sum(3,2) %>% mean() %>% log()

#
gapminder %>% head() 
gapminder %>% 
  select(country, pop) %>% 
  filter(country=="Bangladesh")

#Use of mutate() function to create a new column
gapminder %>%
  mutate(TotalGDP=pop*gdpPercap)

#use of arrange() function---- sort
gapminder %>%
  mutate(TotalGDP=pop*gdpPercap) %>%
  arrange(TotalGDP)

#sort descending order
gapminder %>%
  mutate(TotalGDP=pop*gdpPercap) %>%
  arrange(desc(TotalGDP))

