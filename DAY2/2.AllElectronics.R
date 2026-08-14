data <- c(1,1,5,5,5,5,5,8,8,10,10,10,10,12,
          14,14,14,15,15,15,15,15,15,
          18,18,18,18,18,18,18,18,
          20,20,20,20,20,20,20,
          21,21,21,21,
          25,25,25,25,25,
          28,28,30,30,30)
data <- sort(data)
bin_size <- 3
bins <- split(data, ceiling(seq_along(data) / bin_size))
print("Equal Frequency Bins:")
print(bins)
# Smoothing by Bin Means
mean_bins <- lapply(bins, function(x) {
  rep(mean(x), length(x))
})
print("Smoothing by Bin Means:")
print(mean_bins)
# Smoothing by Bin Boundaries
boundary_bins <- lapply(bins, function(x) {
  low <- min(x)
  high <- max(x)
  ifelse(abs(x - low) <= abs(x - high), low, high)
})
print("Smoothing by Bin Boundaries:")
print(boundary_bins)
# Histogram
hist(data,
     main = "Histogram of All Electronics Prices",
     xlab = "Price",
     ylab = "Frequency",
     breaks = 10)