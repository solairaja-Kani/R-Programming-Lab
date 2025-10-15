##############################################################
# 🧮 Problem 1: Linear Regression – Estimate Variance of y
##############################################################

# Problem Statement:
# The data below represent investment (in $1000) in the development of new software 
# by a computer company over an 11-year period.
# 
# Year (x): 2000–2010
# Investment (y): 17, 23, 31, 29, 33, 39, 39, 40, 41, 44, 47
#
# Fit a linear regression model with y as the dependent variable and 
# estimate the variance of y.

# --- Solution Code ---
year <- c(2000, 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010)
investment <- c(17, 23, 31, 29, 33, 39, 39, 40, 41, 44, 47)

# Fit Linear Regression Model
model <- lm(investment ~ year)
summary(model)

# Extract coefficients
intercept <- coef(model)[1]
slope <- coef(model)[2]
cat("Regression Equation: y =", intercept, "+", slope, "* x\n")

# Estimate Variance of y (σ² = RSS / (n - 2))
residuals <- resid(model)
n <- length(investment)
variance_y <- sum(residuals^2) / (n - 2)
cat("Estimated variance of y (σ²) =", variance_y, "\n")

# Plot regression line
plot(year, investment, main="Investment vs Year with Regression Line",
     xlab="Year", ylab="Investment ($1000)", pch=19, col="blue")
abline(model, col="red", lwd=2)
text(2002, 45, paste("y =", round(intercept,2), "+", round(slope,4), "* x"), col="darkred")

# Sample variance for comparison
cat("Sample variance of y =", var(investment), "\n")


##############################################################
# 🧪 Problem 2: One-Sample z-Test for Mean (Two-Tailed)
##############################################################

# Problem Statement:
# The melting point of each of 16 samples of a certain brand of hydrogenated vegetable oil 
# was determined. The sample mean is x̄ = 94.32, population standard deviation σ = 1.20.
# Assume normal distribution.
# 
# Hypotheses:
#   H0: μ = 95
#   H1: μ ≠ 95
# 
# Perform a two-tailed z-test at α = 0.05.

# --- Solution Code ---
x_bar <- 94.32
mu_0 <- 95
sigma <- 1.20
n <- 16
alpha <- 0.05

# Compute Z statistic
z_value <- (x_bar - mu_0) / (sigma / sqrt(n))
z_value

# Compute p-value (two-tailed)
p_value <- 2 * (1 - pnorm(abs(z_value)))
p_value

# Decision
if (p_value < alpha) {
  cat("Reject H0: Significant evidence that mu ≠ 95\n")
} else {
  cat("Fail to Reject H0: No significant difference from 95\n")
}

# Critical Z and Summary
z_critical <- qnorm(1 - alpha/2)
cat("Z critical values are ±", round(z_critical, 3), "\n")
cat("Computed Z =", round(z_value, 3), "\n")
cat("P-value =", round(p_value, 4), "\n")


##############################################################
# 📊 Problem 3: Normal Distribution – IQ Score Probabilities
##############################################################

# Problem Statement:
# IQ scores are normally distributed with:
#   Mean (μ) = 100
#   Standard deviation (σ) = 15
#
# Find:
#   1. P(X < 110) → Probability that IQ is less than 110
#   2. P(X > 125) → Probability that IQ is greater than 125
#   3. The IQ score corresponding to the 90th percentile.

# --- Solution Code ---
mean_iq <- 100
sd_iq <- 15

# 1. Probability that IQ < 110
p_less_110 <- pnorm(110, mean = mean_iq, sd = sd_iq)
cat("P(IQ < 110) =", round(p_less_110, 4), "\n")

# 2. Probability that IQ > 125
p_greater_125 <- 1 - pnorm(125, mean = mean_iq, sd = sd_iq)
cat("P(IQ > 125) =", round(p_greater_125, 4), "\n")

# 3. IQ score representing 90th percentile
iq_90th <- qnorm(0.90, mean = mean_iq, sd = sd_iq)
cat("IQ score for 90th percentile =", round(iq_90th, 2), "\n")
