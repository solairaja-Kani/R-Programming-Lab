library(BSDA)
# Sample lifetimes of LED bulbs (in hours)
led_lifetimes <- c(980, 1020, 995, 1010, 985, 1005, 990, 1008, 1012, 998)
# Hypothesized population mean
hypothesized_mean <- 1000
# Known population standard deviation
pop_sd <- 50
# Significance level
alpha <- 0.05
# Perform one-sample z-test
result <- z.test(led_lifetimes, mu = hypothesized_mean, sigma.x = pop_sd)
print(result)
# Interpretation
if (result$p.value < alpha) {
  cat("Result: Reject H0 at alpha =", alpha, "\n")
} else {
  cat("Result: Fail to reject H0 at alpha =", alpha, "\n")
}


#Two Sample z-Test:

library(BSDA)
group1_scores <- c(92, 95, 90, 94, 96, 93, 91, 97, 95, 94)
group2_scores <- c(88, 86, 90, 87, 89, 85, 88, 90, 86, 87)
pop_sd <- 6
alpha <- 0.05
result <- z.test(group1_scores, group2_scores,
                 sigma.x = pop_sd, sigma.y = pop_sd)
print(result)
if (result$p.value < alpha) {
  cat("Result: Reject H0 at alpha =", alpha, "\n")
} else {
  cat("Result: Fail to reject H0 at alpha =", alpha, "\n")
}
