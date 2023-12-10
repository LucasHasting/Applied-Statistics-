#Mean, Median, Mode
data <- c(8,13,12,14,8,13,9)
data.mean <- mean(data)
data.median <- median(data)
data.mode <- getmode(data)

data.mean
data.median
data.mode

#variance is sd squared

#check if it returns the first value (false)
data.mode

#Trimmed Mean
data <- c(0.35,0.38,0.41,0.45,0.47,0.47,0.47,0.50,0.51,0.52,0.54,0.56,0.61,0.63,0.68,0.69,0.73,0.76,0.78,0.79)
data.mean <- mean(data, trim=0.2)
data.mean

#Moving Average: The average of numbers starting at
#the requested number, and going down the amount 
#requested

#range, variance, standard deviation
data <- c(8,13,12,14,8,13,9)
data.range <- range(data,na.rm=F)
data.range.value <- sum(abs(data.range))
data.var <- var(data)
data.sd <- sd(data)

data.range
data.range.value
data.var
data.sd

#Empirical Rule
n1 <- 300  #range (1) 
n2 <- 1100 #range (2)
nG <- 920  #greater than
nL <- 6.82 #less than
E.mean <- 7.25
E.sd <- 0.43

  #Greater than a number
  pnorm(nG, mean=E.mean, sd=E.sd, lower.tail=F)
  
  #Less than a number
  pnorm(nL, mean=E.mean, sd=E.sd)
  
  #find area under normal curve between n1 and n2
  pnorm(n2, mean=E.mean, sd=E.sd) - pnorm(n1, mean=E.mean, sd=E.sd)

  #find which values contain 68% of data
  E.mean-E.sd; E.mean+E.sd
  
  #find which values contain 95% of data
  E.mean-2*E.sd; E.mean-2*E.sd
  
  #find which values contain 99.7% of data
  E.mean-3*E.sd; E.mean-3*E.sd

#Chebyshev's Theorem
  #k = 2, 75%
  #k = 3, 88.9%
k <- 3
C.mean <- 265000
C.sd <- 8950
C.solution <- c(C.mean - k * C.sd, C.mean + k * C.sd)
C.solution
  
#Coefficient Of Variation
data <- c(4.39, 4.47, 4.21, 3.86, 3.72, 3.64, 3.77, 4.60, 3.82, 4.87, 3.94, 2.91, 4.88,  4.21)
cv <- (sd(data) / mean(data)) * 100
round.off(cv, 1)
