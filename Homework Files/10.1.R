#Confidence interval-no data
confidence_intND <- function(perc, mean, sd, n)
{
table1 <- c("Crit", "Begin", "End")
confidence = perc / 100
critical=0

if (n < 30)
{
  q=-qt(((1 - confidence) / 2), df=n-1)
  critical=q
} else {
  z=qnorm((1 - confidence) / 2)
  critical = z 
}
MOE=critical*(sd/sqrt(n))
begin <- mean-MOE
end <- mean+MOE
table2 <- c(critical, begin, end)
mytable <- cbind(table1, table2)
View(mytable)
}

#Confidence interval-data
confidence_intD <- function(perc, data)
{
  table1 <- c("Mean", "SD", "N", "Crit", "Begin", "End")
  confidence = perc / 100
  mean = mean(data)
  sd = sd(data)
  n = length(data)
  
  critical=0
  
  if (n < 30)
  {
    q=-qt(((1 - confidence) / 2), df=n-1)
    critical=q
  } else {
    z=qnorm((1 - confidence) / 2)
    critical = z 
  }
  MOE=critical*(sd/sqrt(n))
  begin <- mean-MOE
  end <- mean+MOE
  table2 <- c(mean, sd, n, critical, begin, end)
  mytable <- cbind(table1, table2)
  View(mytable)
}

data = c(19,16,14,10)

#Sample Size with error
SampSize <- function(perc, sd, error)
{
  perc = perc/100
  critical = (1 - perc) / 2
  critical = round.off(-qnorm(critical), 2)
  n = (critical * sd) / error
  n = n * n
  if (!is.integer(n))
  {
    n = n + 1
    n = as.integer(n)
  } 
  return(n)
}
