# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG
* The variables that provided a non random amount of variance to the mpg values were vehicle length and ground clearance. Both of these variables had extremely low P values in the multivariate linear regression formula. These low values indicate statistical significance which means they have a strong impact on mpg. 
* The p value is well below the standard threshold of .05 so we reject our null hypothesis. Thus, the slope of the linear model is not 0. 
* This model predicts MPG somewhat effectively. The r squared value is .68 so the model will predict the mpg around 68% of the time. 

![Linear_Regression_Summary](https://github.com/chenylk/MechaCar_Statistical_Analysis/blob/main/linear%20regression%20summary.PNG).

## Summary Statistics on Suspension Coils
* From the two charts seen below, it can be determined that the overall manufacturing of the coils meets the design specifications of under 100 pounds per square inch variance. The overall variance is 76.23. However, when the different lots are evaluated, Lot 3 exceeds the maximum variance while Lots 1 and 2 still meet the specifications. Lots 1 and 2 have variances of 1.14 and 10.13, respectively. Lot 3 has a variance of 220.01, which is double the design specification. Lot 3 is dragging the variance of all coils down so this lot, in particular, needs to be further evaluated to figure out what is going wrong. 

![total_summary](https://github.com/chenylk/MechaCar_Statistical_Analysis/blob/main/total%20summary.PNG).
![lot_summary](https://github.com/chenylk/MechaCar_Statistical_Analysis/blob/main/lot%20summary.PNG).

## T-Tests on Suspension Coils
* The t-test on the overall manufacuring lot of coils gave a p-value of .4894 meaning that the coils in the manufacturing lots are not statistically different from the population mean of 1500 pounds per square inch. I used the shaprio test to determine the normality of the data set. the overall lots shaprio test gave a p value of 6e-11 meaning the the distribution is not normal. Thus, I performed a log function on the dataset before running the t-test. I ran the same shapiro test for each indiviual lot and lot 1 turned out to be the only lot that is not normally distributed. When I ran the subset t-test for the individual lots I used the log10 function to transform the data in lot 1. The subset t-test functions told me that each individual lot failed to reject the null hypothesis meaning that each lot is not statistically different from the population mean of 1500 pounds per square inch. 

![overall_ttest](https://github.com/chenylk/MechaCar_Statistical_Analysis/blob/main/overall_ttest.PNG).
![lot1_ttest](https://github.com/chenylk/MechaCar_Statistical_Analysis/blob/main/lot1_ttest.PNG).
![lot2_ttest](https://github.com/chenylk/MechaCar_Statistical_Analysis/blob/main/lot2_ttest.PNG).
![lot3_ttest](https://github.com/chenylk/MechaCar_Statistical_Analysis/blob/main/lot3_ttest.PNG).

## Study Design: MechaCar vs Competition 
* When comparing the MechaCar against the competition there are several metrics that should be evaluated. I would create a test that examined the fuel efficiency, price, safety, size of engine, and maintenance costs. To evaluate different cars I would set up a statistical test with the null hypothesis being that the two cars being tested are not statistically different in terms of the metrics mentioned earlier. I would run a 2 sample t-test because this test shows if the difference between two sample populations is statistically significant. The data needed for this test would be fuel data, safety data, engine data, and maintenance data for both the MechaCar and the competitions' car. 
