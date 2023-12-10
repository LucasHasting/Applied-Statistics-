x=c(36,37,43,46,47)
y=c(4,4,5,8,9)
confidence = 95
con = confidence / 100
con = (1 - con) / 2

SumX = sum(x)
SumY = sum(y)
SumXY = sum(x * y)
SumX2 = sum(x^2)

b1 = n*(SumXY) - (SumX*SumY)
b1 = b1 / (n*(SumX2)-(SumX^2))
b1 #slope, independent variable

b0 = (1/n) * (SumY-b1*SumX)
b0 #estimated intercept, dependent variable

yArc = b0 + b1 * x
error = y - yArc
SqrError = (y - yArc)^2
SumError = sum(error)
SumSqrError = sum(SqrError)
n = length(SqrError)
s2e = SumSqrError / (n - 2) 
s2b1 = s2e / (SumX2 - (SumX^2 / n)) 
sb1 = sqrt(s2b1)
crit = qt(con, df=n-2)
crit = -crit
lower = round(b1, 3) - round(crit, 3) * round(sb1, 2)
upper = round(b1, 3) + round(crit, 3) * round(sb1, 2)

error
SqrError
SumError 
SumSqrError 
s2e #estimate variance of errors
s2b1 #estimate variance of slope
lower
upper