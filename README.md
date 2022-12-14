# MechaCar_Statistical_Analysis

## Deliverable 1 - Linear Regression to Predict MPG

### Which variables/coeffecients provided a non-random amount of variance to the mpg values in the dataset?

Based on the results from the linear regression, the vehicle length and the ground clearance are the only variables that contribute to a non-random amount of variance to the MPG, as their p-values are less than 0.05. The remainder of the variables had p-values greater than 5, meaning that the null hypothesis is valid and that the latter variables add random variance to the MPG of the vehicles.

![Deliverable1](https://user-images.githubusercontent.com/111096246/207481526-7a8fa929-4be8-4b91-b308-75f858aea631.PNG)

### Is the slope of the linear model considered to be zero? Why or why not?

The slope for this model is not zero. In fact, the p-value, calculated at 5.35x10^-11, is less than 0.05. Given that it is not zero, that means that there is some correlation that exists there, and that would be from the first two variables mentioned above (Vehicle length and ground clearance).

### Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

This linear model does a decent job at predicting a car's MPG. In order to verify whether or not this is case, one needs to pay attention to the r-squared value (Multiple R-squared), calculated at 0.7149, or, 71.49%. Therefore, this model has a 71.49% chance of predicting a car's MPG.

![Deliverable1 2](https://user-images.githubusercontent.com/111096246/207481550-f5539bd6-64a5-437b-a869-f549bc293e7a.PNG)

## Deliverable 2 - Summary Statistics on Suspension Coils

### The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

The design specs look alright from afar. Using the variance from "total_summary" of 62.3, we can also refer to it as 62.3 PSI (Pounds per Square Inch). As one goes through "lot_summary", lot by lot, lot 1 has a great variance of just under one, and Lot 2 did well as well with a variance of 7.47. Lot 3, however, has an incredibly high variance of 170, which is beyond the required 100 PSI.

## Deliverable 3 - T-Tests on Suspension Coils

The results from the T-tests on each lot verify the analysis from the statistical summary on suspension coils.

Lot 1's t-test has resulted in a p-value of 1, along with with a 95% confidence interval. This means that the suspension coils have a PSi of 1,500 ± 0.281. Therefore, the null hypothesis can be accepted with the notion that random chance is probably what is affecting the differences between each coil.

![Lot1](https://user-images.githubusercontent.com/111096246/207485558-74923436-d71f-44ed-b699-160128dc8f68.PNG)

Lot 2's t-test has resulted in a p-value of 0.61, somewhat lower than Lot 1, but still acceptable, as it is higher than 0.05. Moreover, the mean is slightly higher than Lot 1 (0.2 higher to be precise), and with the 95% confidence interval, the coils will be 1500.2 ± 0.777.

![Lot2](https://user-images.githubusercontent.com/111096246/207485578-bc9ae98a-9ddd-4c59-93c7-bc5d580e3820.PNG)

Lot 3's t-test has resulted in a p-value of 0.04. Something has gone wrong with this lot. Given that the p-value is less than 0.05, the null hypothesis must be rejected. As to what would exactly cause the coils on this lot to be subpar cannot be solved from here, but this analysis paints a clear picture of the lot's performance. A review should be performed and each coil inspected for quality purposes.

![Lot3](https://user-images.githubusercontent.com/111096246/207485591-dda135f3-79a5-4c83-ae67-9ab85866bc76.PNG)

## Deliverable 4- Study Design: MechaCar Vs. Competition

### What metric or metrics are you going to test?

