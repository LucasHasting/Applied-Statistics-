estpor <- function(sample, compare)
{
  #sample - compare for opposite
  porption = compare/sample
  porption = round.off(porption, 3)
  return (porption)
}
estpor2 <- function(sample, compare, con)
{
Answers1 <- c("Low", "High")
porption = estpor(sample, compare)

confidence = con / 100
a = 1 - confidence
a = a / 2

crit = qnorm(a)
if (qnorm(a) < 0)
  crit = -qnorm(a)

solution = (crit * sqrt(porption * (1-porption) / sample))
low = porption - solution
low = round.off(low,3)
high = porption + solution
high = round.off(high,3)
Answers2 <- c(low, high)
table <- cbind(Answers1, Answers2)
View(table)
}

poproSamp <- function(popro, con, error)
{
confidence = con / 100
a = 1 - confidence
a = a / 2

crit = qnorm(a)
if (qnorm(a) < 0)
  crit = -qnorm(a)

crit = round.off(crit, 2)

n = ((crit^2) * popro * (1 - popro)) / (error^2)
if (!is.integer(n))
{
  n = n + 1
  n = as.integer(n)
}
return(n)
}