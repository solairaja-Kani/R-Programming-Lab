# A study in Environmental Science Journal (Vol. 18, 2023, pp. 45–57) investigates the relationship between average daily temperature (°C) and electricity consumption (kWh) in a city.
# Representative data are shown below, with
# •	x = average temperature (°C)
# •	y = electricity consumption (kWh × 10³)

# Temperature (x)	18	20	23	25	28	30	33	35	37
# Consumption (y)	120	130	135	150	160	170	190	200	210


#Correlation Value
# Code

x <- c(18, 20, 23, 25, 28, 30, 33, 35, 37)
y <- c(120, 130, 135, 150, 160, 170, 190, 200, 210)

correlation <- cor(x, y, method = "pearson")
cat("Correlation coefficient (r):", correlation, "\n")



# Correlation Test
# Code
x <- c(18, 20, 23, 25, 28, 30, 33, 35, 37)
y <- c(120, 130, 135, 150, 160, 170, 190, 200, 210)

test <- cor.test(x, y, method = "pearson")
print(test)

r <- test$estimate
t_val <- test$statistic
p_val <- test$p.value
conf_int <- test$conf.int
df <- test$parameter

cat("Correlation (r):", r, "\n")
cat("t-value:", t_val, "\n")
cat("Degrees of freedom (df):", df, "\n")
cat("p-value:", p_val, "\n")
cat("95% Confidence Interval:", conf_int[1], "to", conf_int[2], "\n")

alpha <- 0.05
if (p_val < alpha) {
  cat("\nReject H0: There is significant correlation.\n")
} else {
  cat("Fail to reject H0: No significant correlation.\n")
}
