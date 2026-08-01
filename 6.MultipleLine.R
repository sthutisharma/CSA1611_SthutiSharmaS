plot(mtcars$mpg,type="l",col="blue",
     xlab="Car Index", 
     ylab="Values")
lines(mtcars$qsec,col="red")
legend("topright",
       legend=c("mpg","qsec"),
       col=c("blue","red"),
       lty=1)