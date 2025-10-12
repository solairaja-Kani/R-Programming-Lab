#One Sample t-Test:
sample_data <- c(14, 16, 15, 17, 13, 18, 16, 14, 15)
mu <- 15
conf_level <- 0.95
one_sample_ttest <- function(sample_data, mu, conf_level) {
  result <- t.test(sample_data, mu = mu, conf.level = conf_level)
  cat("One-sample t-test\n")
  print(result)
  if (result$p.value < (1 - conf_level)) {
    cat("Decision: Reject H0\n")
  } else {
    cat("Decision: Accept H0\n")
  }
}
one_sample_ttest(sample_data, mu, conf_level)





#Two Sample t-Test:
sample1 <- c(78, 82, 85, 80, 79, 84, 83, 81)
sample2 <- c(70, 72, 75, 73, 71, 74, 76, 72)
conf_level <- 0.95
var_equal <- FALSE

two_sample_ttest <- function(sample1, sample2, conf_level, var_equal) {
  result <- t.test(sample1, sample2, conf.level = conf_level, var.equal = var_equal)
  cat("Two-sample t-test\n")
  print(result)
  if (result$p.value < (1 - conf_level)) {
    cat("Decision: Reject H0\n")
  } else {
    cat("Decision: Accept H0\n")
  }
}

two_sample_ttest(sample1, sample2, conf_level, var_equal)
