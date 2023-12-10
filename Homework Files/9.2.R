#x: greater mean
#sampg: smaple mean greater than
sampg <- function(a, u, x, n){
  ax <- sqrt((a^2)/n)
  p <- (x - u) / ax
  p <- round.off(p, 2)
  print(p)
  answer <- pnorm(p, lower.tail=F)
  return(round.off(answer, 4))
}

#x: lesser mean
#sampl: smaple mean lesser than
sampl <- function(a, u, x, n){
  ax = sqrt((a^2)/n)
  p <- (x - u) / ax
  p <- round.off(p, 2)
  print(p)
  answer <- pnorm(p)
  return(round.off(answer, 4))
}

#x: true mean
tmeanL <- function(a, u, x, n){
  ax = sqrt((a^2)/n)
  x <- u - x
  p <- (x - u) / ax
  p <- round.off(p, 2)
  answer1 <- round.off(pnorm(p), 4)
  answer2 <- round.off(pnorm(-p), 4)
  answer <- answer2 - answer1
  return(answer)
}

#x: true mean
tmeanM <- function(a, u, x, n){
  ax = sqrt((a^2)/n)
  x <- u - x
  p <- (x - u) / ax
  p <- round.off(p, 2)
  answer <- round.off(pnorm(p), 4)
  answer <- answer * 2
  return(answer)
}

#create empty vector to hold sample means
sample5 <- c()

#take 1,000 random samples of size n=5
n = 1141
for (i in 1:n){
  sample5[i] = mean(sample(data, 5, replace=TRUE))
}

#calculate mean and standard deviation of sample means
mean(sample5)
sd(sample5)