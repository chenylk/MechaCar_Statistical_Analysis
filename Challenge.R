# Challenge 1
#import library
library(dplyr)
#create data frame and read file
df1 <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
#check whats in the dataframe
head(df1,5)
#create linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = df1)
#summary of linear regressionee
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = df1))


#Challenge 2
#read the file and create dataframe
df2 <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors=F)
#create the total summary table
total_summary <- df2 %>% summarise(mean=mean(PSI),median=median(PSI),var=var(PSI),sd=sd(PSI))
#summary for each grouped lot
lot_summary <- df2 %>% group_by(Manufacturing_Lot) %>% summarise(mean=mean(PSI),median=median(PSI),var=var(PSI),sd=sd(PSI))


#Challenge 3
t.test(x=log10(df2$PSI),mu=log10(1500))
t.test(subset(x=log10(df2$PSI),df2$Manufacturing_Lot=='Lot1'),mu=log10(1500))
t.test(subset(x=df2$PSI,df2$Manufacturing_Lot=='Lot2'),mu=1500)
t.test(subset(x=df2$PSI,df2$Manufacturing_Lot=='Lot3'),mu=1500)


lot_1 <- df2 %>% filter(Manufacturing_Lot == 'Lot1')
lot_2 <- df2 %>% filter(Manufacturing_Lot == 'Lot2')
lot_3 <- df2 %>% filter(Manufacturing_Lot == 'Lot3')
shapiro.test(lot_1$PSI) #not normal distribution
shapiro.test(lot_2$PSI) #normal distribution
shapiro.test(lot_3$PSI) #normal distribution 
