con = 95
se = 1.229787
x = c(1,4,7,3,2,2,5,5,1,6)
xp=7 #dependent
n = 10
yp = 6.717822-1.004950 * (xp)

con = con/100
con = (1 - con) / 2
crit = qt(con, n - 2)
crit = -crit
sqr = (xp - mean(x))^2 / sum((x-mean(x))^2)
sqr = sqr + 1/n + 1
sqr = sqrt(sqr)
sqr = sqr * crit * se
upper = yp + sqr
lower = yp - sqr

lower
upper