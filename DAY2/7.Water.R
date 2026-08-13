install.packages("HSAUR")
library(HSAUR)
data(water)
# Scatter plot
plot(water$hardness, water$mortality,
     xlab="Hardness",
     ylab="Mortality",
     main="Mortality vs Hardness")
model <- lm(mortality ~ hardness, data=water)
abline(model)
summary(model)
# Predict mortality for hardness = 88
predict(model, data.frame(hardness=88))