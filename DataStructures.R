#Data structures in R

#use ctrl enter to execute any command
#vectors----
x=1:10 #create a seq of nos from 1 to 10
x
x1 <- 1:20
x1
(x1=1:30) #create and display values in a single command
(x2=c(1,2,3,4,5))
class(x2)
(x3=letters[1:10])
class(x3)
(x3b = c('a',"Dhiraj","4"))
class(x3b)
(x4 = c(T,FALSE,TRUE,T,F))
class(x4)
x5 = c(3L,5L)
class(x5)
?class
(x5b=c(1,'a',T,4L))
class(x5b)

#access elements
(x6 = seq(0,100,by=3))
length(x6)

methods(class='data.frame') #to see what functions can be used for a particular class type
ls()
x6[c(2,4)] #display 2 and 4th characters
x6[-1] #wont display the first value
x6[c(2.4,3.54)] # real nos are trucated
x6[-(length(x6)-1)] #remove second last element from the vector
(x7 = c(x6,x2)) #combining vectors
#modify
sort(x6)
sort(x6[-c(1,2)]) #sorting after removing the first 2 values
sort(x6,decreasing=T)
rev(x6)
(x= -3:2)
x[x<0] = 5;x #whichever values of x is less than 0 will be replaced by 5

x = x[1:4]; x #creates a subset of x which contains first four values and the subset is saved under the same name x

#delete vector
(x=seq(1,5,length.out = 10)) #spread the value 1 - 5 into 10 equal parts
x = NULL
(x=rnorm(100))
?rnorm
(x1= rnorm(1000,mean=50, sd=10))
plot(density(x1))

abline(v=mean(x1)) #it draws a line drawn vertically along the mean
plot(density(x))

mean(x1)
?density





#Matrices----
100:111
(m1=matrix(1:12,nrow=4))
(m2=matrix(1:12,ncol=3,byrow=T)) #it will start filling the values row wise
x= 101:124
matrix(x,ncol=6)
class(m1)
attributes(m1)
dim(m1)

#access elements of matrix
m1[1,2:3] #prints 2 amd 3 col of row 1
m1[c(1,3),] #prints only 1 and 3 rows
paste("c","D",sep="-")
paste("C",1:100,sep="-")
(colnames(m1)=paste('C',1:3,sep="-")) #col names is renamed, same can be done using rownames for row
m1
m2[,]
m2[-2,]
m2[1:5]
m2[c(TRUE,F,T,F),c(2,3)]
m2[m2>5 & m2<10]
#modify vector
m2[2,2]
m2[m2>10] = 99
m2
rbind(m2,c(50,60,70))
cbind(m2,c(55,65,75,85))
rbind(m2,m2)
colSums(m1)
t(m1) #transpose

sweep(m1,MARGIN =1, STATS = c(2,3,4,5), FUN="+") #rowise add 2 to row1,3 to row2 etc
sweep(m1, MARGIN = 2, STATS= c(2,3,4), FUN="*") #colwise margin=1 is row and 2 is col
m1
addmargins(m1,margin=1,sum)
addmargins(m1,c(1,2),list(list(mean,sum,max),list(var,sd))) #row and col wise function
#Arrays----


#Data Frames----
(rollno = 1:30)
(sname = paste('student',1:30,sep=''))
(gender = sample(c('M','F'),size=30,replace=T,prob=c(.7,.3)))
(marks=floor(rnorm(30,mean=50,sd=10)))
(marks2=ceiling(rnorm(30,40,5)))
(course = sample(c('BBA','MBA'), size=30, replace=T, prob=c(.5,.5)))
rollno; sname; gender
marks ; marks2; course

#create DF
df1 = data.frame(rollno,sname,gender,marks,marks2,course,stringsAsFactors = F)
str(df1)
head(df1) #top6 rows
head(df1,n=3)
tail(df1)
summary(df1)
df1gender = factor(df1$gender)
df1gender
df1  #full data
df1$gender  # one column
df1[ , c(2,4)] #multiple columns
df1[1:10 ,] #select rows, all columns
#as per conditionis
df1[ marks > 50 & gender=='F', c('rollno', 'sname','gender', 'marks')]
df1[ marks > 50 & gender=='F', c(1,2)]
df1[ marks > 50 | gender=='F', ]

names(df1)  # names of columns
dim(df1)  #Dimensions

aggregate(df1$marks, by=list(df1$gender), FUN=max)
aggregate(marks ~ gender, data=df1, FUN=max)


(df2 = aggregate(cbind(marks,marks2) ~ gender + course, data=df1, FUN=mean))





#Factors----