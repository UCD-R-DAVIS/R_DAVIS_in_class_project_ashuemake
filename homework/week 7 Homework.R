library(tidyverse)

gapminder <- read_csv("https://ucd-r-davis.github.io/R-DAVIS/data/gapminder.csv")
pg <- gapminder %>% 
  select (country, year, pop, continent) %>% 
  filter(year > 2000) %>% 
  pivot_wider(names_from = year, values_from = pop) %>% 
  mutate(pop_change_0207 = `2007` - `2002`)

pg %>% 
  filter(continent != "Oceania") %>% 
  ggplot(aes(x=reorder(country, pop_change_0207), y = pop_change_0207)) +
  geom_col(aes(fill=continent)) +
  facet_wrap(~continent, scales="free") +
  theme_bw()+
  scale_fill_gradient()

## got stuck here