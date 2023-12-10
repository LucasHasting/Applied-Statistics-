#A permutation is used for the list of data (where the order of the data matters) 
#A combination is used for a group of data (where the order of data doesn't matter).


#2 value stats
data <- c(3,4,5,6,7)
prob <- c(0.3,0.1,0.2,0.2,0.2)
u <- weighted.mean(data, prob) #expected value/mean
var <- sum((data^2) * prob) - u^2
a <- round(sqrt(var), 1)

#Loss/Wins
payoff <- c(-25000,35000,30000)
prob <- c(0.35,0.41,0.24)
solution <- round.off(sum(payoff * prob),2)

#Binomial Distribution (only 2 possible outcomes for each trial)
round.off(dbinom(5, size=14, prob=0.2), 4)

#Binomial Distribution-Cultivate
round.off(pbinom(8, size=14, prob=0.5), 4)

#multiple
answer <- dbinom(10:12, 12, 0.8)
