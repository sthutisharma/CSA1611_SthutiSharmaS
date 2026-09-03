# Data
AvgSpeed <- c(78, 81, 82, 74, 83, 82, 77, 80, 70)
TotalTime <- c(39, 37, 36, 42, 35, 36, 40, 38, 46)

# Standard deviation
sd_speed <- sd(AvgSpeed)
sd_time <- sd(TotalTime)

# Variance
var_speed <- var(AvgSpeed)
var_time <- var(TotalTime)

# Display results
cat("AvgSpeed Standard Deviation:", sd_speed, "\n")
cat("TotalTime Standard Deviation:", sd_time, "\n")

cat("AvgSpeed Variance:", var_speed, "\n")
cat("TotalTime Variance:", var_time, "\n")