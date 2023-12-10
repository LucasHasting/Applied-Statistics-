data = c(611.4, 641.9, 653.6, 636.7)

#Critical
confidence = 99
n = 4
a = (1-confidence/100) / 2
#a = 0.025

#use if n is 30 or less-t crit
crit=qt(a, df=n-1)

#use if more than 30-z crit
crit=qnorm(a)

#if negative crit
if (crit < 0)
  crit = -crit
crit = round.off(crit, 3)


#Lower and Higher
sd.v = sd(data)
mean.v = mean(data)
error = crit * (sd.v / sqrt(n))
lower = mean.v - error
upper = mean.v + error


#finding sample size
error=0.26
sd.v=sqrt(31.36)
#if there is any decimal point, round up
samp = ((crit * sd.v) / error)^2