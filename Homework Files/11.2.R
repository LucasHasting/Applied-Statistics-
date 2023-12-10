suffientG = function(z, suf)
{
  if (z > suf)
  {
    return(T) 
  } else {
    return (F)
  }
}
suffientL = function(z, suf)
{
  if (z < suf)
  {
    return(T) 
  } else {
    return (F)
  }
}

z.score = function(oldMean, n, newMean, sd, se=0){
z <- ((newMean-oldMean)/(sd/sqrt(n)))
z = round.off(z, 2)
if (n > 29){
  is_suffient = qnorm(se)
} else {
  is_suffient = qt(se,df=n-1)
}

results1 = c("Z stat:", "suff_score", "Sufficent >:", "Sufficent <:")
results2 = c(z, is_suffient, suffientG(-z, is_suffient), suffientL(z, is_suffient))
results = cbind(results1, results2)
View(results)
}

z1.score = function(oldMean, n, newMean, sd){
  z <- ((newMean-oldMean)/(sd/sqrt(n)))
  z = round.off(z, 2)
  return(z)
}

#rejecting hypothesis
qnorm()
qt()

#if rejected, there is sufficient evidence
#reject if number is in between or false
#<: left tailed, >: right tailed, other: 2 tailed

#p value
p.score = function(oldMean, n, newMean, sd){
  output=z1.score(oldMean, n, newMean, sd)
  if (n > 29)
  {
    p=round.off(pnorm(-output), 4)
  } else {
    p=round.off(pt(output, df=n-1),4)
  }
  return(p)
}

zp.score=function(op,n,np){
  op=op/100
  np=np/100
  z=(np - op) / sqrt((op * (1-op)) / n)
  z = round.off(z, 2)
  return(z)
}

zp1.score=function(op,n,np,a){
  op=op/100
  np=np/100
  z=(np - op) / sqrt((op * (1-op)) / n)
  z = round.off(z, 2)
  if(n > 29)
  {
    q=qt(a,df=n-1)
  } else {
    q=qnorm(a)
  }
  result1 = c("Z:", "SUFF:")
  result2 = c(z,q)
  result = cbind(result1,result2)
  View(result)
}

zp2.score=function(op,n,np){
  a=F
  op=op/100
  np=np/100
  z=(np - op) / sqrt((op * (1-op)) / n)
  z = round.off(z, 2)
  if (z > 0)
  {
    z=-z
    a=T
  }
  q=pnorm(z)
  q2=q*2
  z=round.off(z,4)
  q=round.off(q,4)
  q2=round.off(q2,4)
  if(a)
    z=-z
  result1 = c("Z:", "SUFF-1 Tail:", "SUFF-2 Tail:")
  result2 = c(z,q, q2)
  result = cbind(result1,result2)
  View(result)
}