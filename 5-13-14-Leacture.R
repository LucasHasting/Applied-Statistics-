#Example 1: Super Bowl Stats Data
install.packages("readxl")
library("readxl")

SBStat <- read.csv(file="The_Big_Game_Stats.csv", header=T)
View(SBStat)
attach(SBStat) #turn the columns into variables

plot(Winner_First.Downs, Winner_Total.Yards, pch=18)

#coefficient of variation
#|A| < 0.5 = weak
#0.5 < |A| < 0.8 = moderate
#|A| > 0.8 = strong
A = cor(Winner_First.Downs, Winner_Total.Yards, use = "complete.obs")
A


a=c(21,25,41,45,46)
b=c(1,2,6,7,9)
cor(a, b, use = "complete.obs")

#error = observed value - predicted value

#5.3 - 6 step
x=c(39,42,44,59,65)
y=c(359,353,342,330,313)
n=length(x)

SumX = sum(x)
SumY = sum(y)
SumXY = sum(x * y)
SumX2 = sum(x^2)

b1 = n*(SumXY) - (SumX*SumY)
b1 = b1 / (n*(SumX2)-(SumX^2))
b1 #slope, independent variable

y_int = (1/n) * (SumY-b1*SumX)
y_int

b0 = y_int #estimated intercept, dependent variable (remains the same)

coeffdeterm=lm(x ~ y)
summary(coeffdeterm)$r.squared #coefficient of determination

est_x = 44
estimated_value = y_int + b1 * est_x
estimated_value