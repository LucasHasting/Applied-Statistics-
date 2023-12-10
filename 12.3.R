n1 = 601
n2 = 737
confidence = 90

x1 = 373
x2 = 362
p1 = (x1/n1)*100
#p1=52
p2 = (x2/n2)*100
#p2=60
wp = (x1 + x2) / (n1 + n2)
wp = round.off(wp, 3)

p1 = p1 / 100
p1 = round.off(p1, 3)
p2 = p2 / 100
p2 = round.off(p2, 3)
half1 = (p1 * (1 - p1)) / n1
half2 = (p2 * (1 - p2)) / n2
sderror = sqrt(half1 + half2)
sderror = round.off(sderror, 3)

a = 1 - (confidence / 100) 
a=0.01
a = qnorm(a)
#a = qnorm(a/2)
a = -a
a = round.off(a, 3)

half1 = p1 - p2
half2 = a * sderror
lower = half1 - half2
upper = half1 + half2

z = (p1 - p2) / sqrt(wp * (1 - wp) * ((1/n1)+(1/n2)))
round.off(z, 2)

a
sderror
round.off(lower, 3)
round.off(upper, 3)