#library(MASS) for fractions

install.packages('gtools')
library("gtools")

#get's permutations for heads and tails
amount_of_flips <- 3
amount_of_possibilities <- 2
coin <- c("H", "T")
total_flips <- permutations(amount_of_possibilities, 
                    amount_of_flips,  
                    coin, repeats.allowed=T)
total_flips

#Dice
dice <- c(1, 2, 3, 4, 5, 6)
amount_of_flips <- 2
amount_of_possibilities <- 6
total_flips <- permutations(amount_of_possibilities, 
                            amount_of_flips,  
                            dice, repeats.allowed=T)
total_flips <- as.data.frame(t(total_flips))
total_flips[3,] <- total_flips[1,] + total_flips[2,]
View(total_flips)