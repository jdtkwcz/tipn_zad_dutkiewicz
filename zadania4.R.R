library(tidyverse) 



#Zad 4-2

ggplot(data = mpg) +
  geom_point(mapping = aes (x=displ, y=cty)) +
  labs(title = "pojemności silnika zależna od spalanie w mieście", x = "pojemność silnika", y= "spalanie w mieście") +
  theme_light()



#Zad 4-3

ggplot(data = mpg) + 
  geom_bar(mapping = aes(x = class, fill = class)) +
  labs(title = "ilość samochodów każdej z klas w całym zbiorze", x = "klasy samochodów", y = "ilość")



#Zad 4-4

ggplot(data = mpg) +
  geom_histogram(mapping = aes(displ), bins = 15) +
  labs(title = "pojemność silników samochodów ze zbioru", x = "pojemność silnika", y = "ilość")



#Zad 4-5

ggplot(data = mpg, mapping = aes(x = class, y = displ)) + 
  geom_boxplot() +
  coord_flip() +
  labs(title = "pojemność silnika zależna od klasy samochodu", x = "pojemność silnika", y = "klasa samochodu")