library(tidyverse)


#Zad 5-1

library(readr)
movies <- read_csv("movies.csv")
View(movies)





#Zad 5-2

filter(movies, year == 2005, comedy == 1)





#Zad 5-3

select(movies, title, year, budget) %>%
  arrange(movies, desc(budget))





#Zad 5-4

filter(movies, year >= 1990 & year < 2000, animation == 1) %>% 
  arrange(desc(budget))




#Zad 5-5

filter(movies, drama == 1) %>% 
  arrange(desc(length))




#Zad 5-6

movies %>%
  group_by(mpaa) %>% 
  summarise(srednia = mean(rating), odchylenie = mad(rating))

