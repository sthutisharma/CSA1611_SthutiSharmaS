# Strike-rate data
x <- c(100, 70, 60, 90, 90)

# (a) Min-Max Normalization
min_max <- (x - min(x)) / (max(x) - min(x))

# (b) Z-Score Normalization
mean_x <- mean(x)
sd_x <- sqrt(mean((x - mean_x)^2))
z_score <- (x - mean_x) / sd_x

# (c) Z-Score using Mean Absolute Deviation
mad_mean <- mean(abs(x - mean_x))
z_mad <- (x - mean_x) / mad_mean

# (d) Decimal Scaling
j <- ceiling(log10(max(abs(x)) + 1))
decimal_scaling <- x / (10^j)

# Display results
cat("Original Data:\n")
print(x)

cat("\n(a) Min-Max Normalization:\n")
print(min_max)

cat("\n(b) Z-Score Normalization:\n")
print(z_score)

cat("\n(c) Z-Score using Mean Absolute Deviation:\n")
print(z_mad)

cat("\n(d) Decimal Scaling:\n")
print(decimal_scaling)