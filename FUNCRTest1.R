#returns the mode
getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}

round.off <- function (x, digits=0) 
{
  posneg = sign(x)
  z = trunc(abs(x) * 10 ^ (digits + 1)) / 10
  z = floor(z * posneg + 0.5) / 10 ^ digits
  return(z)
}

crit2 <- function (a, n1, n2, population_variance_equal, crit_round){
  if (n1 < 30 || n2 < 30)
  {
    if (population_variance_equal){
      df = n1 + n2 - 2
    } else if (n1 < n2){
      df = n1 - 1
    } else {
      df = n2 - 1
    }
    crit = round.off(-qt((1-a)/2, df), crit_round)
  } else {
    crit = round.off(-qnorm((1-a)/2), crit_round)
  }
  return(crit)
}

crit1 <- function (a, n, decide="none"){
  if (decide=="2tail")
  {
    crit=-qnorm(a/2)
    return(crit)
  }
  if (n < 30)
  {
    crit=-qt(a, df=n-1) 
  } else {
    if (decide=="greater" || decide=="none")
      crit=-qnorm(a)
    else if (decide == "less")
      crit=qnorm(a)
  }
  return(crit)
}

hypothesis <- function (test, crit, n, decide){
  if (n < 30)
  {
    if (decide == "greater")
    {
      if (test > crit)
        print ("Reject/Suffecient")
      else
        print("Fail to reject/Not siffecient")
    } else if (decide == "less"){
      if (test < -crit)
        print ("Reject/Suffecient")
      else
        print("Fail to reject/Not siffecient")
    } else {
      if (abs(test) > crit)
        print ("Reject/Suffecient")
      else
        print("Fail to reject/Not siffecient")
    }
  } else {
    if (decide == "greater")
    {
      if (test > crit)
        print ("Reject/Suffecient")
      else
        print("Fail to reject/Not siffecient")
    } else if (decide == "less"){
      if (test < crit)
        print ("Reject/Suffecient")
      else
        print("Fail to reject/Not siffecient")
    } else {
      if (abs(test) > crit)
        print ("Reject/Suffecient")
      else
        print("Fail to reject/Not siffecient")
    }
  }
}