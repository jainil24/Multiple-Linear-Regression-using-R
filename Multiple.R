vehicle <- read.csv('vehicle.csv')

head(vehicle)
pairs(vehicle[3:5])

#Multiple Linear Regression

results <- lm(lc~Mileage+lh , data = vehicle)
results
summary(results)

result <- lm(lc~ lh , vehicle)
result
summary(result)

a <- anova(result , results)

predict(result , data.frame(lh = 10) , interval = 'confidence')

a$`Pr(>F)`[2]
