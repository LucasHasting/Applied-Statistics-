#Question 1: Construct a frequency distribution table 
#and a relative frequency distribution table.

#create vector to store values
gradeTable <- c("D","C","E","B","B","B","A","D","B","C","B","E","C","B","C","B","B","D","B","C")

#store and print the frequency distribution
frequencyDistribution <- table(gradeTable)
print(frequencyDistribution)

#store and print the relative frequency distribution
rFrequencyDistribution <- table(gradeTable)/length(gradeTable)
print(rFrequencyDistribution)


#Question 2: Using the House Style variable from the 
#Mount Pleasant Real Estate data set, answer the 
#following questions.

#importing and viewing the data set
MPRE = read.csv("Mount_Pleasant_Real_Estate_Data.csv")
View(MPRE)

#What level of measurement does the data possess?
#Answer: Nominal

#Is the data qualitative or quantitative? 
#Answer: quantitative

#Construct a frequency distribution for the House Style variable
houseStyle <- MPRE$House.Style
houseStyle.Freq <- table(houseStyle)

#print the distribution in column format
cbind(houseStyle.Freq)