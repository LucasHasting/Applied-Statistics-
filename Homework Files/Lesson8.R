#between z scores
lowScore <- -2.57
bigScore <- 1.27
pnorm(bigScore) - pnorm(lowScore)

#z area
qnorm(0.05) #left
-qnorm(0.01) #right

#standard normal curve
answer <- pnorm(0.05) #left/normal
round.off(answer, 4)
answer <- pnorm(0.05, lower.tail=F) #right
round.off(answer, 4)

answer <- pnorm(1730,mean=1100,sd=300) #less than
round.off(answer, 4) #at most
answer <- pnorm(16680,mean=18000,sd=sqrt(1210000), lower.tail=F) #more than
round.off(answer, 4) #at least

m <- 1500  
s <- 300  
min <- 1770  
max <- 2009
answer <- pnorm(max,mean=m,sd=s) #less than
answer2 <- pnorm(min,mean=m,sd=s) #less than
answer3 <- answer - answer2
round.off(answer3, 4)

n1 <- 18
n2 <- 157
p <- 0.12
u <- n2 * p
check <- n2 * (1 - p)
a <- sqrt((n2 * p) * (1 - p))
answer_less <- ((n1 - 0.5) - u) / a
answer_more <- ((n1 + 0.5) - u) / a
print(u)
Print(check)
print(a)
print(answer_less)
print(answer_more)