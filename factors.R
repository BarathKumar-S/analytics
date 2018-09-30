#factors

(grade = sample(c(LETTERS[1:4]),size=30,replace=T,prob=c(.4,.2,.3,.1)))

(gradesF = factor(grade))

summary(grade)

summary(gradesF)

table(grade)
table(gradesF)
class(grade)
class(gradesF)

(gradesFO = factor(grade,ordered = T))

(gradesFO1 = factor(grade,ordered = T,levels = c('B','C','A','D')))
summary(gradesFO1)

(marks = ceiling(rnorm(30,mean=60,sd=5)))
(gender = factor(sample(c('M','F'), size=30, replace=T, prob=c(.7,.3))))
(student1 = data.frame(marks,gender,gradesFO1))
boxplot(marks ~ gradesFO1 + gender, data = student1)
boxplot(marks)
summary(marks)
abline(h=summary(marks))
quantile(marks)
