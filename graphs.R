# combined plots

#plot, histogram, pie, boxplot, linechart, correlation plot

women
plot(women)
?plot
plot(women, type='p', pch=15,lty=2 ,col='green')
plot(women, xlim=c(30,100),ylim=c(min(women$height)-10,200),pch=10)

#file for code 1-e graphs-basic.R
#linear regression 
plot(women)
abline(lm(women$weight ~ women$height), col='red', lty=2, lwd=4)

#boxplot
boxplot(women$height)
abline(h=c(58, 62,65,68,72))
quantile(women$height)

#histogram
hist(women$height)
hist(women$height, breaks=10)
hist(women$height, breaks=5, col=1:5)

#histogram2
(x = rnorm(100,50,10))
hist(x)

hist(x, freq=F, col=1:5) #y axis will change based on whether we give T or F fr frequency
lines(density(x))

#density plot : shape of data
plot(density(x), col='red')

#pie
gender
table(gender)
pie(table(gender))
x = c(10,20,40,50)
pie(x)  #not recommended for calculating percentage share of each
labels2 = paste(xlabels, round(x/sum(x),2)*100,sep='-')
xlabels = c('A','B','C','D')
pie(x, labels=labels2)
x
#barplot
barplot(x,col=1:4)
barplot(x,col=1:4, horiz = T)

#correlation plot
pairs(women)
cor(women$height,women$weight)

head(mtcars)
?mtcars

cor(mtcars)
names(mtcars)
pairs(mtcars)
pairs(mtcars[1:4])
options(digits=4)







