confidence = 95
table1 = c(98,99.9,98,100.5,99.4,99.5,100.3)
table2 = c(97.7,99.6,98.8,99.8,98.9,98.8,99.9)
table3 = table1 - table2

n = length(table3)
sdt3 = sd(table3)
sdt3 = round.off(sdt3, 2)
meant3 = mean(table3)
xd = sum(table3 / n)
xd = round.off(xd, 3)
a = ((1-(confidence/100))/2)
a=0.1
crit = qt(a, n-1)
crit = round.off(crit, 3)

if(crit < 0)
  crit = -crit

half1 = n/sqrt(sdt3)
half2 = sdt3/sqrt(n)
half = crit * half1
lower = xd - half
upper = xd + half
t = xd / half2

xd
crit
sdt3
round.off(t, 3)
round.off(meant3, 3)
round.off(lower, 1)
round.off(upper, 1)
t.test(table3,conf.level=(100-(a*100))/100, alternative="two.sided")