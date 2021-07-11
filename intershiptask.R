#Importing csv file data.


getwd()
setwd("C:\\Users\\PAVAN SAI\\Downloads")
x<- read.csv("task.csv")
x
head(x)
attach(x)

#constucting a scatterplot


plot(Hours,Scores, title("hours vs scores"), col= "blue",pch=18)
mod<- lm(Scores~Hours)
abline(mod, col="red")
summary(mod)


#Finding actual and predicted values

actual= Scores
hour= data.frame(Hours)
predicted= predict(mod,hour)
cbind(actual,predicted)


#Finding the predict score if student studied for 9.25 hrs/day

a<- data.frame(Hours=9.25)
predictscore<- predict(lm(Scores~Hours, data=hour), newdata= a)
predictscore


#Finding mean absolute error

library(Metrics)
mae(actual,predicted)
