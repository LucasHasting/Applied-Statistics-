popg <- function(p, pg, n)
{
  p <- p / 100
  pg <- pg / 100
  ap <- sqrt((p * (1-p)) / n)
  ap <- round.off(ap, 4)
  P <- (pg - p) / ap
  P <- round.off(P, 2)
  return(round.off(pnorm(-P),4))
}

popl <- function(p, pg, n)
{
  p <- p / 100
  pg <- pg / 100
  ap <- sqrt((p * (1-p)) / n)
  ap <- round.off(ap, 4)
  P <- (pg - p) / ap
  P <- round.off(P, 2)
  return(round.off(pnorm(P),4))
}

tpopg <- function(p, pg, n)
{
  p <- p / 100
  pg <- pg / 100
  ap <- sqrt((p * (1-p)) / n)
  ap <- round.off(ap, 4)
  P <- ((p - pg) - p) / ap
  P <- round.off(P, 2)
  answer <- round.off(pnorm(P),4)
  answer <- answer * 2
  return(answer)
}

tpopl <- function(p, pg, n)
{
  p <- p / 100
  pg <- pg / 100
  ap <- sqrt((p * (1-p)) / n)
  ap <- round.off(ap, 4)
  P <- ((p - pg) - p) / ap
  P <- round.off(P, 2)
  answerLess <- round.off(pnorm(-P),4)
  answerMore <- round.off(pnorm(P),4)
  return(answerLess - answerMore)
}