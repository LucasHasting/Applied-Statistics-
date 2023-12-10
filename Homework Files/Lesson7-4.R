library(MASS) 
answer <- pbinom(3, 4, 1/2) #probability
answer <- dbinom(3, 4, 1/2) #distribution
fractions(answer) #answer to fraction

#multiple distributions:
answer <- dbinom(10:12, 12, 0.8)
sum(answer)