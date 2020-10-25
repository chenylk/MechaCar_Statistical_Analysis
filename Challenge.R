# Challenge 1
library(dplyr)
df1 <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
head(df1,5)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = df1)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = df1))


#Challenge 2
df2 <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors=F)
total_summary <- df2 %>% summarise(mean=mean(PSI),median=median(PSI),var=var(PSI),sd=sd(PSI))
lot_summary <- df2 %>% group_by(Manufacturing_Lot) %>% summarise(mean=mean(PSI),median=median(PSI),var=var(PSI),sd=sd(PSI))


#Challenge 3
t.test(x=log10(df2$PSI),mu=log10(1500))
t.test((subset(x=log10(df2$PSI),df2$Manufacturing_Lot=='Lot1')),mu=log10(1500))
t.test((subset(x=log10(df2$PSI),df2$Manufacturing_Lot=='Lot2')),mu=log10(1500))
t.test((subset(x=log10(df2$PSI),df2$Manufacturing_Lot=='Lot3')),mu=log10(1500))
