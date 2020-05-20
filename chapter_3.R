library(tidyverse)

data_mpg <- as_tibble(mpg)
data_mtcars <- mtcars

head(mpg)
view(mpg)
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

ggplot(mpg)+
  geom_smooth(mapping = aes(x = displ, y = hwy, group = drv))

data_diamonds <- diamonds
?geom_bar

ggplot(diamonds)+
  geom_bar(aes(cut))

demo <- tribble(diamonds
)

demo <- tribble(
  ~cut,         ~freq,
  "Fair",       1610,
  "Good",       4906,
  "Very Good",  12082,
  "Premium",    13791,
  "Ideal",      21551
)

ggplot(demo)+
  geom_bar(aes(cut, freq), stat = "identity")

ggplot(demo)+
  geom_col(aes(cut, freq))

ggplot(diamonds)+
  geom_bar(aes(cut))

ggplot(diamonds)+
  geom_bar(aes(cut, y = stat(prop), group = 1))

ggplot(diamonds)+
  stat_summary(
    aes(cut, depth),
    fun.ymin = min,
    fun.ymax = max,
    fun.y = median
  )

?stat_bin           
stat_summary(diamonds)

ggplot(data = diamonds)+
  geom_bar(aes(cut, colour = cut))

ggplot(data = diamonds)+
  geom_bar(aes(cut, fill = cut))

ggplot(data = diamonds)+
  geom_bar(aes(cut, fill = clarity), position = "dodge")

ggplot(data = mpg)+
  geom_point(aes(displ, hwy), 
             position = "jitter")

ggplot(mpg, aes(cty, hwy))+
  geom_jitter()

ggplot(mpg, aes(class, hwy))+
  geom_boxplot()+
  coord_flip()

head(map_data("no"))
?position_dodge



  
