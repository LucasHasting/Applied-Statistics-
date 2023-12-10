#less, more, equal
hypthesis = "more"
a = 0.01
num=23

z.score = function(meanOriginal, MeanNew, sd, n=num){
  z <- ((MeanNew-meanOriginal)/(sd/sqrt(n)))
  return(round.off(z, 3))
}

z.value = z.score(0.16,0.17,0.2498)

if (hypthesis == "equal") 
  a = a/2

if (num > 30) 
{
  crit = qnorm(a)
  p=pnorm(-crit)
} else {
  crit = qt(a, df=num-1)
}

if (num < 31)
{
  if (hypthesis == "less")
    p=pt(-z.value, df=num-1, lower.tail=F)
  
  if (hypthesis == "more")
    p=pt(-z.value, df=num-1)
  
  if (hypthesis == "equal")
    p=2*pt(-z.value, df=num-1)
} else {
  if (hypthesis == "less")
    p=pnorm(z.value)
  
  if (hypthesis == "more")
    p=pnorm(-z.value)
  
  if (hypthesis == "equal")
    p=2*pnorm(z.value, lower.tail=F)
}

if (hypthesis == "less")
{
  if (crit > 0)
    crit = -crit
  if (z.value < crit)
    #sufficient evidence
    print("reject")
  else 
    print("fail to reject")
}

if (hypthesis == "more")
{
  if (crit < 0)
    crit = -crit
  if (z.value > crit)
    #sufficient evidence
    print("reject")
  else 
    print("fail to reject")
}

if (hypthesis == "equal")
{
  if (crit < 0)
    crit = -crit
  if (z.value < 0)
    z.value = -z.value
  if (z.value > crit)
    #sufficient evidence
    print("reject")
  else 
    print("fail to reject")
}

#P Value

