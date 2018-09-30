#deployer

library(dplyr)
install.packages("dplyr")
library(dplyr)
?mtcars
dplyr::filter(mtcars,mpg > 25 & am==1) 

mtcars %>% filter(mpg > 25 & am==1) %>% arrange(wt) %>% summarise(n()) #pipelines multiple functions in a single line seperated by %>%

mtcars %>% filter(mpg > 25 & am==1) %>% arrange(wt) %>% count()
count(mtcars)

mtcars %>% group_by(am) %>% summarise(mean(mpg))
filter(mtcars, cyl > 6)
filter(mtcars, between(row_number(), 5, n()-2))


#mutate create another column and giving functions to it

mutate(mtcars, displ_l = disp / 61.0237) #keeps other col
transmute(mtcars, displ_l = disp / 61.0237) #removes other cols
mutate(mtcars, cyl = NULL) #do not display cyl


