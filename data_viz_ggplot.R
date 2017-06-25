# ex1.R

# EXERCISE FOR ggplot 

library(tidyverse)

ggplot2::mpg

ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy))

ggplot(data = mpg)

?mpg

ggplot(data = mpg) + geom_point(mapping = aes(x = cyl, y = hwy))

ggplot(data = mpg) + geom_point(mapping = aes(x = class, y = hwy))

ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy, color = class))

ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy, size = class))

ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy, shape = class))

ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy, alpha = class))

ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy, shape = displ))

ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy, color = displ, size = displ))

?geom_point

plot <- ggplot(data = mpg, aes(x = displ, y = hwy))

plot + geom_point(shape = 21, color = "black", size = 5, stroke = 5, fill = "white")

ggplot(data = mpg) + geom_point(mapping = aes(x = displ, y = hwy, color = displ < 5, size = displ))
