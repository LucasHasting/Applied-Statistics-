#Library allows table manip
install.packages('data.table')
library ('data.table')

#Upload the data file
ES <- read.csv("Employee_Satisfaction.csv")

#create frequency distrubutions 
tab <- data.table(ES$X.10, ES$X.8)

highfreq <- tab[which(tab$V1=="Greater than $75,000")]
highfreq <- table(highfreq)

medfreq <- tab[which(tab$V1=="$45,000 - $74,999")]
medfreq <- table(medfreq)

smallfreq <- tab[which(tab$V1=="Less than $45,000")]
smallfreq <- table(smallfreq)

#A
#Plot the bar graph of the data
install.packages('plotly')
library(plotly)
highfreq <- as.data.frame(t(highfreq))
BarP <- plot_ly(x=highfreq$Freq, y=highfreq$V2, type='bar', orientation='h')

#B