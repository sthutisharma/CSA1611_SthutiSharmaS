A <- c(76,35,47,64,95,66,89,36,84)
B <- c(51,56,84,60,59,70,63,66,50)
cat("MEAN OF A:",mean(A),"\n")
cat("MEAN OF B:",mean(B),"\n")
cat("MEDIAN OF A:",median(A),"\n")
cat("MEDIAN OF B:",median(B),"\n")
cat("RANGE OF A:",diff(range(A)),"\n")
cat("RANGE OF B:",diff(range(B)),"\n")
boxplot(A,B,
        names=c("Class A","Class B"),
        col=c("lightblue","lightgreen"),
        main="Class comparison"
        )