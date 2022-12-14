# Deliverable 1

# Step 3 - Use the library() function to load the dplyr package
library(dbplyr)

# Step 4 - Import and read the .csv as a dataframe
MechaCar <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors=F)

# Step 5 - Perform linear regression using all 6 variables and dataframe from step 4
mpg <- lm(mpg ~ vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, MechaCar)

# Step 6 - Using summary() function, determine p-value and r-sqaured for linear regression model
summary(mpg)

# Deliverable 2

# Step 2 - Import and read the csv as a table
suspension_csv <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

# Step 3 - Create a dataframe using summarize() function to get mean, median, variance & std. dev.
total_summary <- suspension_csv %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = "keep")

# Call dataframe to see results
total_summary

# Step 4 - Create a dataframe using group_by() and summarize() function to group each 
# manufacturing lot by the mean, median, variance, and std. dev. of suspension coil's PSI column.
lot_summary <- suspension_csv %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = "keep")

# Call dataframe to see results
lot_summary

# Deliverable 3

# Step 1 - Using the t.test() function determine if PSI across all lots is statistically different
# from the population mean of 1,500 pounds per square inch.
t.test(suspension_csv$PSI,mu=1500)

# Step 2 - Write three RScripts using t.test() and subset() argument to determine if the PSI
# for each lot is statistically different from population mean of 1,500 pounds per square inch.

Lot1 <- subset(suspension_csv,Manufacturing_Lot=="Lot1")
Lot2 <- subset(suspension_csv,Manufacturing_Lot=="Lot2")
Lot3 <- subset(suspension_csv,Manufacturing_Lot=="Lot3")

t.test(Lot1$PSI,mu=1500)
t.test(Lot2$PSI,mu=1500)
t.test(Lot3$PSI,mu=1500)
