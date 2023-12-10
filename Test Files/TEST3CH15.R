#sum of squares for treatments df = 2
#sum of squares for error df = 21
#Mean Square = sum of squares / df

data = c(167,152,176,156,158,
         171,193,194,166,191,
         191,184,177,165,195,
         193,174,167,163,191)
area = c("1","1","1","1","1",
         "2","2","2","2","2",
         "3","3","3","3","3",
         "4","4","4","4","4")
values = data.frame(data,area)
model = lm(data~area, data=values)
model.aov = aov(model)

summary(model)
summary(model.aov)

#area significance
p = 0.0496
Fsig(0.1,p)

#F < Crit = not signicantly reduced, fail to reject
#F > Crit = signicantly reduced, reject

#F = MST/MFE
crit = qf(0.05,df1=3,df2=6,lower.tail=F) #crit
f = 4.1
Fsig(f,crit)


Fsig <- function(f, crit){
  if (f < crit)
    print ("not signicantly reduced, fail to reject, not sufficent")
  else
    print ("signicantly reduced, reject, sufficent")
  print ("Crit: ")
  print (crit)
}

q = 11542.30 + 2915.73 * 10 + 1071.57 * 5
w = 11542.30 + 2915.73 * 8 + 1071.57 * 5
q-w
