library("tidyverse")
# Viewing data
head(diamonds)
length(diamonds)
str(diamonds)
glimpse(diamonds)
colnames(diamonds)
# Cleaning data
## Rename the columns, or variables, in my data
rename(diamonds, carat_new = carat) # Rename one variable
rename(diamonds, carat_new = carat, cut_new = cut) # Rename more than one variable
summarise(diamonds, mean_carat = mean(carat))
# Visualizing data
ggplot(data = diamonds, aes(x = carat, y = price, color = cut)) +
        geom_point()
ggplot(data = diamonds, aes(x = carat, y = price, color = cut)) +
        geom_point() + facet_wrap(~cut)
# Documentation 
#Export work using knit button