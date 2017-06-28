# ----------------------------------------------------------------------------------------- #
# R FOR DATA SCIENCE - CHAPTER 3 - DATA VISUALISATION
# ----------------------------------------------------------------------------------------- #

library(tidyverse)

?mpg

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy))

## EXERCISE 3.2.4 ####
ggplot(data = mpg)

ggplot(data = mpg) +
  geom_point(mapping = aes(x = hwy, y = cyl))

ggplot(data = mpg) +
  geom_point(mapping = aes(x = class, y = drv))


## SECTION 3.3 -------------------------------------------------------------------------------------------

## EXERCISES 3.3.1 ####
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, color = "blue"))

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, shape = displ))

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy, color = displ < 5))


p <- ggplot(mtcars, aes(mpg, wt, shape = factor(cyl)))
p + geom_point(aes(colour = factor(cyl)), size = 4) +
  geom_point(colour = "grey90", size = 1.5)

?mpg

## SECTION 3.4 -------------------------------------------------------------------------------------------

## SECTION 3.5 - FACETS -------------------------------------------------------------------------------------------
ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_grid(. ~ cyl)

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_grid(drv ~ .)

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_grid(. ~ drv)

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy)) +
  facet_wrap(~ drv)

?facet_grid

## SECTION 3.6 - Geometric Objects -------------------------------------------------------------------------------------------
?geom_smooth

# 6.
ggplot(data = mpg, mapping = aes(x = displ, y = hwy, color = drv)) +
  geom_point() +
  geom_smooth(se = FALSE)

ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point() +
  geom_smooth(mapping = aes(group = drv), se = FALSE, color = "blue")

ggplot(data = mpg, mapping = aes(x = displ, y = hwy, color = drv)) +
  geom_point() +
  geom_smooth(se = FALSE, show.legend = FALSE)

ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point(mapping = aes(color = drv)) +
  geom_smooth(data = mpg, mapping = aes(linetype = drv), se = FALSE)

ggplot(data = mpg, mapping = aes(x = displ, y = hwy)) +
  geom_point(mapping = aes(color = drv)) +
  geom_smooth(data = mpg, mapping = aes(linetype = drv), se = FALSE)

ggplot(data = mpg, mapping = aes(x = displ, y = hwy, color = drv)) +
  geom_point(color = 'white', size = 4) +
  geom_point()


## SECTION 3.7 - Statistical Transformations -------------------------------------------------------------------------------------------
?geom_bar
?stat_summary
?geom_freqpoly

ggplot(data = diamonds) +
  stat_summary(
    mapping = aes(x = cut, y = depth),
    fun.ymin = min,
    fun.ymax = max,
    fun.y = median
  )

?geom_pointrange
?stat_summary
?stat_bin

ggplot(data = diamonds, mapping = aes(x = cut, y = depth)) +
  geom_pointrange(stat = "summary",
                  fun.ymin = min,
                  fun.ymax = max,
                  fun.y = median)

?geom_col

ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, y = ..prop.., group = 1))

# not sure how i fix this below......???
ggplot(data = diamonds) + 
  geom_bar(mapping = aes(x = cut, y = ..prop.., group = 1)) +
  geom_bar(aes(fill = color))

?geom_bar
?stat_count

## SECTION 3.8 -------------------------------------------------------------------------------------------

## SECTION 3.9 -------------------------------------------------------------------------------------------

## SECTION 3.10 -------------------------------------------------------------------------------------------




