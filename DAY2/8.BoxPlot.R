data(mtcars)
head(mtcars)
boxplot(mpg ~ cyl,data=mtcars,
        main="MPG vs Number of Cylinders",
        xlab="Number of cylinders",
        ylab="MPG",
        col=c("lightblue","lightgreen","lightpink")
)