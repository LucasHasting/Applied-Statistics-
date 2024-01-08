#Load the data
data <- read.csv("California_DDS_Expenditures.csv")
#Create side-by-side boxplots of the Expenditures by Ethnicity
boxplot(data$Expenditures ~ data$Ethnicity,
        xlab = "Ethnicity",
        ylab = "Expenditures")

View(data)

#subset the data by only Hispanic and white non-Hispanic
dataHispanic <- subset(data, Ethnicity == "Hispanic")
dataWhite <- subset(data, Ethnicity == "White not Hispanic")

#Plot the subsetted data
barplot(dataHispanic$Expenditures,
        xlab = "Hispanic",
        ylab = "Expenditures")
barplot(dataWhite$Expenditures,
        xlab = "White not Hispanic",
        ylab = "Expenditures")

#Subset the data by Age Group
data1 <- subset(data, Age.Group == "0 to 5")
data2 <- subset(data, Age.Group == "6 to 12")
data3 <- subset(data, Age.Group == "13 to 17")
data4 <- subset(data, Age.Group == "18 to 21")
data5 <- subset(data, Age.Group == "22 to 50")
data6 <- subset(data, Age.Group == "51+")

#Create side-by-side boxplots of the Expenditures by Ethnicity for each of the Age Groups.
boxplot(data1$Expenditures ~ data1$Ethnicity,
        xlab = "Ethnicity for Age Groups: 0-5",
        ylab = "Expenditures")
boxplot(data2$Expenditures ~ data2$Ethnicity,
        xlab = "Ethnicity for Age Groups: 6-12",
        ylab = "Expenditures")
boxplot(data3$Expenditures ~ data3$Ethnicity,
        xlab = "Ethnicity for Age Groups: 13-17",
        ylab = "Expenditures")
boxplot(data4$Expenditures ~ data4$Ethnicity,
        xlab = "Ethnicity for Age Groups: 18-21",
        ylab = "Expenditures")
boxplot(data5$Expenditures ~ data5$Ethnicity,
        xlab = "Ethnicity for Age Groups: 22-50",
        ylab = "Expenditures")
boxplot(data6$Expenditures ~ data6$Ethnicity,
        xlab = "Ethnicity for Age Groups: 51+",
        ylab = "Expenditures")

#Subset your data by Gender
dataM1 <- subset(data1, Gender == "Male")
dataM2 <- subset(data2, Gender == "Male")
dataM3 <- subset(data3, Gender == "Male")
dataM4 <- subset(data4, Gender == "Male")
dataM5 <- subset(data5, Gender == "Male")
dataM6 <- subset(data6, Gender == "Male")
dataF1 <- subset(data1, Gender == "Female")
dataF2 <- subset(data2, Gender == "Female")
dataF3 <- subset(data3, Gender == "Female")
dataF4 <- subset(data4, Gender == "Female")
dataF5 <- subset(data5, Gender == "Female")
dataF6 <- subset(data6, Gender == "Female")
#Construct bar charts using Age Group as classes for the Expenditures for Males.
barplot(dataM1$Expenditures, xlab = "Males Age Groups: 0-5", ylab = "Expenditures")
barplot(dataM2$Expenditures, xlab = "Males Age Groups: 6-12", ylab = "Expenditures")
barplot(dataM3$Expenditures, xlab = "Males Age Groups: 13-17", ylab = "Expenditures")
barplot(dataM4$Expenditures, xlab = "Males Age Groups: 18-21", ylab = "Expenditures")
barplot(dataM5$Expenditures, xlab = "Males Age Groups: 22-50", ylab = "Expenditures")
barplot(dataM6$Expenditures, xlab = "Males Age Groups: 51+", ylab = "Expenditures")

#Construct bar charts using Age Group as classes for the Expenditures for Females.
barplot(dataF1$Expenditures,
        xlab = "Females Age Groups: 0-5",
        ylab = "Expenditures")
barplot(dataF2$Expenditures,
        xlab = "Females Age Groups: 6-12",
        ylab = "Expenditures")
barplot(dataF3$Expenditures,
        xlab = "Females Age Groups: 13-17",
        ylab = "Expenditures")
barplot(dataF4$Expenditures,
        xlab = "Females Age Groups: 18-21",
        ylab = "Expenditures")
barplot(dataF5$Expenditures,
        xlab = "Females Age Groups: 22-50",
        ylab = "Expenditures")
barplot(dataF6$Expenditures,
        xlab = "Females Age Groups: 51+",
        ylab = "Expenditures")

#Subset the main data by Ethnicity
data2_1 <- subset(data, Ethnicity == "American Indian")
data2_2 <- subset(data, Ethnicity == "Asian")
data2_3 <- subset(data, Ethnicity == "Black")
data2_4 <- subset(data, Ethnicity == "Hispanic")
data2_5 <- subset(data, Ethnicity == "Multi Race")
data2_6 <- subset(data, Ethnicity == "Native Hawaiian")
data2_7 <- subset(data, Ethnicity == "Other")
data2_8 <- subset(data, Ethnicity == "White not Hispanic")

#subset your data by Gender
dataM2_1 <- subset(data2_1, Gender == "Male")
dataM2_2 <- subset(data2_2, Gender == "Male")
dataM2_3 <- subset(data2_3, Gender == "Male")
dataM2_4 <- subset(data2_4, Gender == "Male")
dataM2_5 <- subset(data2_5, Gender == "Male")
dataM2_6 <- subset(data2_6, Gender == "Male")
dataM2_7 <- subset(data2_7, Gender == "Male")
dataM2_8 <- subset(data2_8, Gender == "Male")
dataF2_1 <- subset(data2_1, Gender == "Female")
dataF2_2 <- subset(data2_2, Gender == "Female")
dataF2_3 <- subset(data2_3, Gender == "Female")
dataF2_4 <- subset(data2_4, Gender == "Female")
dataF2_5 <- subset(data2_5, Gender == "Female")
dataF2_6 <- subset(data2_6, Gender == "Female")
dataF2_7 <- subset(data2_7, Gender == "Female")
dataF2_8 <- subset(data2_8, Gender == "Female")

#Create bar charts using Ethnicity as classes for Males.
barplot(dataM2_1$Expenditures,
        xlab = "Amercian Indian Males",
        ylab = "Expenditures")
barplot(dataM2_2$Expenditures,
        xlab = "Asian Males",
        ylab = "Expenditures")
barplot(dataM2_3$Expenditures,
        xlab = "Black Males",
        ylab = "Expenditures")
barplot(dataM2_4$Expenditures,
        xlab = "Hispanic Males",
        ylab = "Expenditures")
barplot(dataM2_5$Expenditures,
        xlab = "Multi Race Males",
        ylab = "Expenditures")
barplot(dataM2_6$Expenditures,
        xlab = "Native Hawaiian Males",
        ylab = "Expenditures")
barplot(dataM2_7$Expenditures,
        xlab = "Other Males",
        ylab = "Expenditures")
barplot(dataM2_8$Expenditures,
        xlab = "White not Hispanic Males",
        ylab = "Expenditures")

#Create bar charts using Ethnicity as classes for Females.
barplot(dataF2_1$Expenditures,
        xlab = "Amercian Indian Females",
        ylab = "Expenditures")
barplot(dataF2_2$Expenditures,
        xlab = "Asian Females",
        ylab = "Expenditures")
barplot(dataF2_3$Expenditures,
        xlab = "Black Females",
        ylab = "Expenditures")
barplot(dataF2_4$Expenditures,
        xlab = "Hispanic Females",
        ylab = "Expenditures")
barplot(dataF2_5$Expenditures,
        xlab = "Multi Race Females",
        ylab = "Expenditures")
barplot(dataF2_6$Expenditures,
        xlab = "Native Hawaiian Females",
        ylab = "Expenditures")
barplot(dataF2_7$Expenditures,
        xlab = "Other Females",
        ylab = "Expenditures")
barplot(dataF2_8$Expenditures,
        xlab = "White not Hispanic Females",
        ylab = "Expenditures")
