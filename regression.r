#SIMPLE LINEAR REGRESSION IN R
# Example: Happiness as a function of Income
# ---- Step 1: Load required libraries ----
library(ggplot2)
library(dplyr)
library(broom)
library(ggpubr)
# ---- Step 2: Load your data ----
# Example dataset
income.data <- data.frame(
  income = c(5, 10, 15, 20, 25, 30, 35, 40, 45, 50),
  happiness = c(2.5, 3.0, 3.2, 3.8, 4.1, 4.5, 4.9, 5.2, 5.6, 6.0)
)
# View the data
head(income.data)

# ---- Step 3: Check assumptions ----
# 3a. Check if dependent variable is normally distributed
hist(income.data$happiness,
     main = "Histogram of Happiness",
     xlab = "Happiness Score",
     col = "lightblue",
     border = "black")

# 3b. Check if relationship is approximately linear
plot(happiness ~ income, data = income.data,
     main = "Scatter Plot: Happiness vs Income",
     xlab = "Income (x$10,000)",
     ylab = "Happiness Score",
     pch = 19, col = "blue")

# ---- Step 4: Fit the linear regression model ----
model <- lm(happiness ~ income, data = income.data)

# Print model summary
summary(model)

# ---- Step 5: Visualize regression results ----

# 6a. Plot the data points
income.graph <- ggplot(income.data, aes(x = income, y = happiness)) +
  geom_point()

# 6b. Add regression line with confidence interval
income.graph <- income.graph + geom_smooth(method = "lm", col = "black")

# 6c. Add regression equation on the graph
income.graph <- income.graph +
  stat_regline_equation(label.x = 3, label.y = 7)

# Display the base graph
income.graph
