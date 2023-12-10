#sum of squares for treatments df = 2
#sum of squares for error df = 21

data = c(171,186,192,180,184,
         170,169,165,174,194,
         183,165,165,152,171,
         166,190,178,184,172)
area = c("1","1","1","1","1",
         "2","2","2","2","2",
         "3","3","3","3","3",
         "4","4","4","4","4")
values = data.frame(data,area)
model = lm(data~area, data=values)
model.aov = aov(model)

summary(model)
summary(model.aov)

#F < Crit = not signicantly reduced, fail to reject
#F > Crit = signicantly reduced, reject
#F = MST/MFE
qf(0.01,df1=2,df2=18,lower.tail=F) #crit