df <- read.csv("C:/Users/91790/Downloads/archive/diabetes.csv")
head(df)
plot(df$Age,df$BloodPressure,
     main="scatterplot:Blood Pressure vs Age",
     xlab="Age",
     ylab="Blood pressure",
     pch=19,col="red"
     )
df$ageGroup <- cut(df$Age,
                   breaks = c(20,30,40,50,60,80),
                   labels = c("20-30","31-40","41-50","51-60","61+"),
                   right=FALSE
                   )
bp_by_age <- aggregate(BloodPressure ~ ageGroup, data=df, FUN=mean)
bp_by_age
barplot(bp_by_age$BloodPressure,
        names=bp_by_age$ageGroup,
        main="Average blood pressure by age group",
        xlab="age group",
        ylab="average blood pressure",
        col="blue")
