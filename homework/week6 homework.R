library(tidyverse)
library(ggplot2)

gapminder <- read_csv("https://ucd-r-davis.github.io/R-DAVIS/data/gapminder.csv")

gapminder %>% 
  group_by(continent,year) %>% 
  summarize(mean_lifeExp = mean(lifeExp)) %>% 
  ggplot() +
  geom_line(aes(x = year, y = mean_lifeExp, color = continent))

countries <- c("Brazil", "China", "El Salvador", "Niger", "United States")

gapminder %>% 
  filter( country %in% countries) %>% 
  ggplot(aes(x = country, y = lifeExp))+
  geom_boxplot() +
  geom_jitter(alpha = 0.3, color = "blue")
