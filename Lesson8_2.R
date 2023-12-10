approc <- function(n1, n2, p)
{
u <- n2 * p
check <- n2 * (1 - p)
a <- sqrt((n2 * p) * (1 - p))
answer_less <- ((n1 - 0.5) - u) / round(a, 2) #at least
answer_less <- round(answer_less, 2)
answer_more <- ((n1 + 0.5) - u) / round(a, 2) #at most
answer_more <- round(answer_more, 2)
if (answer_less <= -1)
{
  answer_1 <- (round(pnorm(answer_less, lower.tail=F), 4))
} else {
  answer_1 <- (round(pnorm(answer_less), 4))
}
if (answer_more <= -1)
{
  answer_2 <- (round(pnorm(answer_more, lower.tail=F), 4))
} else {
  answer_2 <- (round(pnorm(answer_more), 4))
}
answers1 <- c("a", "check", "u", "Answer Less", "Answer More", "Answer Exact")
answer_exact <- answer_1 - answer_2

answers2 <- c(a, check, u, answer_1, answer_2, answer_exact)
answer_table <- as.table(setNames(answers2, answers1))
answer_table <- round(answer_table, 4)
View(answer_table)
}