#df	SS	MS	F	Significance F
Regression = c(1,21.03452578)
Residual= c(9,9.451003647)
Total = c(Regression[1] + Residual[1], Regression[2] + Residual[2])
Total

R2 = Regression[2] / Total[2]
R2 
percent = R2 * 100 #percent of variation
percent

R2a = 1 - ((Total[1])/(Total[1]-Regression[1])) * (Residual[2]/Total[2])
R2a


x1 = c(58,71,71,65,63,58,58,66,64,60,68,58,71)
x2 = c(63,62,64,67,66,73,76,73,63,68,71,76,73)
x3 = c(7,
       13,
       2,
       14,
       6,
       10,
       11,
       9,
       14)
b0 = c(57,64,67,66,61,64,66,66,62,61,66,62,71) #dependent
model = lm(b0 ~ x1 + x2)
summaryL = summary(model)
summaryM = summary(aov(model))

summaryL


daughter <- c(69,65,64,70,68,59,68,71,66,62,62,68,64)
mother <- c(69,65,60,71,70,58,65,65,62,59,63,70,60)
father <- c(68,71,74,73,70,63,76,77,75,70,64,68,71)
m1 <- lm(daughter~mother+father)
predict(m1,newdata=list(mother=64, father=74),interval="prediction",level=0.90)