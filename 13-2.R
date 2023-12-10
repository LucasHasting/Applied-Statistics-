con = 90 
se = 1.682207 
x = c(30,50,40,55,30,28,60,25,30,45)
xp=27 #dependent
n = 10
yp = 14.310162-0.2369 * (xp)

con = con/100
con = (1 - con) / 2
crit = qt(con, n - 2)
crit = -crit
sqr = (xp - mean(x))^2 / sum((x-mean(x))^2)
sqr = sqr + 1/n
sqr = sqrt(sqr)
sqr = sqr * crit * se
upper = yp + sqr
lower = yp - sqr

lower
upper