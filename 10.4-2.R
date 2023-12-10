#finding endpoints
c = 0.9
n = 86
s = 0.12
a = 1-c
#a = 0.01

a = a/2

low <- round.off(qchisq(1-a, n-1), 3)
high <- round.off(qchisq(a, n-1), 3)

low <- (n-1) * (round.off(s^2, 2)) / low
high <- (n-1) * (round.off(s^2, 2)) / high

#do not use for population varience
low <- sqrt(low)
high <- sqrt(high)

round.off(low, 2)
round.off(high, 2)