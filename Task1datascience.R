#import the dataset
library(MASS)
getwd()
setwd("C:/Users/ADMIN/Documents")
data=read.csv("C:/Users/ADMIN/Desktop/studyhours1.csv")
data
head(data)
#summary of data
summary(data)
#assigning variables to the data
hours=data$Hours
scores=data$Scores
#fitting the model
model=lm(scores~hours)
model
#plotting the model
plot(hours,scores,main="Hour vs Score",xlab="Hour Studied",ylab="scores",col="black")
abline(model,col="red")
actual=scores
#camparison between actual and predicted scores
hours=data.frame(hours)
predicted=predict(model,hours)
cbind(actual,predicted)
#predicted score if student studied for 9.25hrs/day
test=data.frame(hours=9.25)
predict(model,test)
