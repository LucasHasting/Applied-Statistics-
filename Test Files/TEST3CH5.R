#coefficient of variation
#|A| < 0.5 = weak
#0.5 < |A| < 0.8 = moderate
#|A| > 0.8 = strong
#horizontal: b, a
#vertical: a, b
b=c(63,72,75,78,81,84,90,93,96,99)
a=c(0,1,1.5,2.5,3,3.5,4,4.5,5,5.5)
con = 95

#correlation coefficient
cor(b, a, use = "complete.obs")

stat = lm(b~a)
#regression model
stat
summary(stat)

b0 = 3
b1 = 0.0919

equation = b0 + b1 * b 
error = a - equation
sError = error^2
sumError = sum(error)
sumSError = sum(sError)
varianceSError = sumSError / (length(b)-2)
n = length(a) - 2
stdMeanError = sumSError / n #variance of errors
low = sum(b)^2 / length(a)
Variance_of_slope = stdMeanError / (sum(b^2)-low)
Variance_of_slope = round.off(Variance_of_slope, 3)
stdError = sqrt(stdMeanError)
crit = qt((1-(con/100))/2, df=n)
if (crit < 0)
  crit = -crit

#use slope from equation
lower = b1 - crit * round.off(sqrt(Variance_of_slope), 3)
upper = b1 + crit * round.off(sqrt(Variance_of_slope), 3)
round.off(lower, 3)
round.off(upper, 3)

#6 step
x=c(0,0.5,1,2,2.5,3,3.5,4,4.5,5)
y=c(62,75,77,79,80,81,83,88,92,98)
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

est_x = 5
estimated_value = y_int + b1 * est_x
error_predict =  y[match(est_x,x)] - estimated_value

data = c(52,4,13,5,44,19,20,16,39,16,37,7,6,28,55)
data=sort(data)