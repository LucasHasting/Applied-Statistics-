mean = 100
sd = 18

x = 113 #number to test

x1 = -1.97 #lower num
x2 = -0.79 #higher num

#greater than
pnorm((mean-x)/sd)

#less than
pnorm((mean-x)/sd, lower.tail=F)

#between 2 numbers (with mean and sd)
pnorm((mean-x1)/sd) - pnorm((mean-x2)/sd)

#between 2 numbers (without mean and sd)
z1 = 2.93
z2 = 2.98
abs(pnorm(z1) - pnorm(z2))

z = 0.05

#z lies to the right
abs(qnorm(z))

abs(pnorm(z,lower.tail=F)) #use for negatives

#z lies to the left
qnorm(z)

pnorm(z) #use for negatives

#Sample with % defective
total = 18
defective = 3
percent = 30 #use 50 for true/false questions

percent = percent / 100
nrow(combinations(total, defective)) * ((percent)^defective) * (1-percent)^(total - defective)

#multiple chooses
total = 10
choices = c(4,3,4,4)
choice = choices[4]
limiter = 4
limiter_helper = limiter

#no more than
choiceSum = sum(choices) - choice
answer = 0
while (limiter_helper != -1)
{
  if (limiter_helper == 0)
    answer_temp = nrow(combinations(choiceSum, total-limiter_helper))
  else
    answer_temp = nrow(combinations(choice, limiter_helper)) * nrow(combinations(choiceSum, total-limiter_helper))
  answer = answer + answer_temp
  limiter_helper = limiter_helper - 1
}
helper = factorial(total)
formatC(answer * helper, format = "e", digits = 2)

#all of
answer = nrow(combinations(choice, limiter)) * nrow(combinations(choiceSum, total-limiter))
formatC(answer * helper, format = "e", digits = 2)