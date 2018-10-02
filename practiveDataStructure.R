library(dplyr)
(gender = sample(c('M','F'),size=100,replace=T,prob=c(.7,.3)))
(spl = sample(c('HR','Finance','Marketing'),size=100,replace=T,prob=c(.25,.5,.25)))
(age=floor(rnorm(100,mean=30,sd=10)))
(experience=floor(rnorm(100,mean=10,sd=2)))
?rnorm
(grade = sample(c('A','B','C','D'),size=100,replace=T))
(placement = sample(c('Y','N'),size=100,replace=T,prob=c(.25,.75)))
(gradeF = factor(grade))
(genderF = factor(gender))
(splF = factor(spl))
(placementF = factor(placement))
gender;spl;age;experience;grade;placement;
df2 = data.frame(gender,splF,age,experience,gradeF,placementF,stringsAsFactors = F)
str(df2)
head(df2)
? filter
df2 %>% filter(splF=='HR') %>% group_by(splF,placementF) %>% summarise(max(experience))
pie(table(df2$placementF))
table(df2$placementF)
hist(df2$age)

write.csv(df2,'./Data/practice1.csv')
studentData = read.csv('./Data/practice1.csv')
head(studentData)

#clustering
km1= kmeans(df2[,c('age','experience')],centers = 3)
km1
km1$centers
plot(df2[,c('age','experience')],col=km1$cluster)


#decision tree
library(rpart)
library(rpart.plot)
placementF
tree = rpart(placementF~., data = df2)
tree
rpart.plot(tree,nn=1,cex=1)
printcp(tree)

?rpart

df2 %>% filter(gradeF=='C' & experience >= 11)
