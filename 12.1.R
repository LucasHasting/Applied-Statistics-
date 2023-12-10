#2-Step
confidence = 80

mean1      = 48737
n1         = 601
sd1        = 4106  

mean2      = 49740
n2         = 737
sd2        = 1104  
  
a = confidence / 100
#a = 0.05
crit = round.off(-qnorm((1-a)/2), 3)
average = mean1 - mean2
square = sqrt((sd1^2/n1)+(sd2^2/n2))
crit = round.off(crit, 2)
compare = round.off(crit * square)
lower = average - compare
upper = average + compare

#sderror = sqrt(average + half2) unsure when to use
#sderror = round.off(sderror, 3) unsure when to use

#test stat
z = (mean1 - mean2) / square

#use for pop
#z = -z

z = round.off(z, 2)

#p value
p = round.off(pnorm(z), 4)

crit
lower
upper
z
p