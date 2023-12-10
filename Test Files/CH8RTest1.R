#between z scores
lowScore <- -2.57
bigScore <- 1.27
pnorm(bigScore) - pnorm(lowScore)

#z area
qnorm(0.04) #left
-qnorm(0.07) #right

#standard normal curve
answer <- pnorm(2.08) #left/normal
round(answer, digits=4)
answer <- pnorm(0.06, lower.tail=F) #right
round(answer, digits=4)

answer <- pnorm(607,mean=590,sd=sqrt(625)) #less than
round(answer, digits=4) #at most
answer <- pnorm(920,mean=1100,sd=30, lower.tail=F) #more than
round.off(answer, 4) #at least

m <- 1300
s <- sqrt(10000) 
min <- 1169
max <- 1390
answer <- pnorm(max,mean=m,sd=s) #less than
answer2 <- pnorm(min,mean=m,sd=s) #less than
answer3 <- answer - answer2
round(answer3, digits=4)

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