firstsd=sqrt(0.025)
newsd=0.2478  
a=0.01
n=28

df=n-1
#1
round.off(firstsd, 4)

#2-use chi table
#1 tail
df #df
1-a #crit <
a   #crit >

#2 tail
1-a/2 #crit value
a/2   #crit value

#3-test stat, if test > crit: reject
round.off((df*newsd^2) / firstsd^2, 3)