library(tidyverse)

data_mpg <- as_tibble(mpg)

head(mpg)

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy))

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = class, y = drv))

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, color = class))

ggplot(data=mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, colour = displ<5 | hwy<20), show.legend = FALSE)

ggplot(data = mpg)+
  geom_point(mapping = aes(displ, hwy)) +
  facet_wrap(~class, nrow = 2)

ggplot(data = mpg)+
  geom_point(mapping = aes(displ, hwy)) +
  facet_grid(drv~cyl)

small <- subset(mtcars, cyl == 4)
big <- subset(mtcars, cyl > 4)


ggplot(mtcars, aes(mpg, wt, colour = factor(cyl))) +
  geom_point()+
  lims()

1+1

2+1
1+2+3

