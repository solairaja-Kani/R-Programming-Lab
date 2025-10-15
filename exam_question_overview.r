##############################
# COMPUTATIONAL STATISTICS LAB USING R
# Complete Practical Reference
##############################

#-----------------------------
# 1️⃣ BASIC OPERATORS
#-----------------------------

# Arithmetic Operators
a <- 25
b <- 5
cat("Sum:", a+b, "\nDifference:", a-b, "\nProduct:", a*b, "\nDivision:", a/b,
    "\nModulus:", a%%b, "\nExponent:", a^b, "\n\n")

# Relational Operators
x <- 10; y <- 20
cat("x>y:", x>y, "\n", "x<y:", x<y, "\n", "x==y:", x==y, "\n", "x!=y:", x!=y, "\n\n")

# Logical Operators
p <- TRUE; q <- FALSE
cat("p&q:", p&q, "\n", "p|q:", p|q, "\n", "!p:", !p, "\n\n")

#-----------------------------
# 2️⃣ CONDITIONAL & LOOPING STATEMENTS
#-----------------------------

# If-Else Statement
num <- -5
if (num > 0) {
  print("Positive number")
} else if (num < 0) {
  print("Negative number")
} else {
  print("Zero")
}

# For Loop
for (i in 1:5) {
  print(paste("Iteration:", i))
}

# While Loop
i <- 1
while (i <= 5) {
  print(i)
  i <- i + 1
}

# Repeat Loop
i <- 1
repeat {
  print(i)
  i <- i + 1
  if (i > 5) break
}

#-----------------------------
# 3️⃣ VECTORS, LISTS, MATRICES, SEQUENCES
#-----------------------------

# Vector
v <- c(10, 20, 30, 40, 50)
cat("Vector v:", v, "\n")
cat("Sum:", sum(v), "Mean:", mean(v), "Length:", length(v), "\n\n")

# List
student <- list(Name="Raja", Age=22, Marks=c(90,85,88))
print(student)
cat("2nd Mark:", student$Marks[2], "\n\n")

# Matrix
mat1 <- matrix(1:9, nrow=3)
mat2 <- matrix(seq(9,1,-1), nrow=3)
cat("Matrix Addition:\n"); print(mat1 + mat2)
cat("Matrix Multiplication:\n"); print(mat1 * mat2)
cat("Transpose of mat1:\n"); print(t(mat1))

# Sequence
seq1 <- seq(5, 50, by=5)
cat("Sequence:", seq1, "\n\n")

#-----------------------------
# 4️⃣ DATA VISUALIZATION
#-----------------------------

months <- c("Jan","Feb","Mar","Apr","May","Jun")
sales <- c(120,150,200,250,145,170)

# Bar Chart
barplot(sales, names.arg=months, col="skyblue", main="Monthly Sales")

# Line Chart
plot(months, sales, type="o", col="red", main="Sales Trend", xlab="Months", ylab="Sales")

# Pie Chart
pie(sales, labels=months, col=rainbow(length(sales)), main="Sales Distribution")

# Histogram
data <- c(5,10,15,10,20,25,20,15,10)
hist(data, col="orange", main="Histogram Example", xlab="Value")

# Scatter Plot
x <- c(1,2,3,4,5)
y <- c(2,4,5,7,10)
plot(x, y, col="blue", main="Scatter Plot", xlab="X", ylab="Y")

# Box Plot
scores <- c(45,50,55,60,65,70,75,80,85,90,95)
boxplot(scores, col="lightgreen", main="Box Plot of Scores", ylab="Scores")

#-----------------------------
# 5️⃣ DESCRIPTIVE STATISTICS
#-----------------------------

values <- c(10,20,30,20,40,50,20)
cat("Mean:", mean(values), "\n")
cat("Median:", median(values), "\n")

# Mode Function
mode_func <- function(x) {
  uniq <- unique(x)
  uniq[which.max(tabulate(match(x, uniq)))]
}
cat("Mode:", mode_func(values), "\n\n")

#-----------------------------
# 6️⃣ PROBABILITY DISTRIBUTIONS
#-----------------------------

# Binomial Distribution
n <- 15; p <- 0.5
cat("P(X=3):", dbinom(3,n,p), "\n")
cat("P(X<3):", pbinom(2,n,p), "\n")
cat("P(X>4):", 1 - pbinom(4,n,p), "\n\n")

# Poisson Distribution
lambda <- 4
cat("P(X=2):", dpois(2,lambda), "\n")
cat("P(X<=3):", ppois(3,lambda), "\n")
cat("P(X>3):", 1 - ppois(3,lambda), "\n\n")

#-----------------------------
# 7️⃣ CORRELATION & REGRESSION
#-----------------------------

hours <- c(2,3,4,5,6,7)
marks <- c(50,55,65,70,75,85)

# Correlation
cat("Correlation Coefficient:", cor(hours, marks), "\n")
cor.test(hours, marks)

# Linear Regression
model <- lm(marks ~ hours)
summary(model)
plot(hours, marks, col="blue", pch=19, main="Regression Line")
abline(model, col="red", lwd=2)
predict(model, data.frame(hours=8))

#-----------------------------
# 8️⃣ HYPOTHESIS TESTING
#-----------------------------

# One-sample Z-Test
xbar <- 52; mu <- 50; sigma <- 8; n <- 25
z <- (xbar - mu) / (sigma / sqrt(n))
p_value <- 2 * (1 - pnorm(abs(z)))
cat("Z value:", z, "P-value:", p_value, "\n")
if (p_value < 0.05) print("Reject H0") else print("Fail to reject H0")

# One-sample T-Test
xbar <- 30; mu <- 28; s <- 4; n <- 16
t <- (xbar - mu) / (s / sqrt(n))
df <- n - 1
p_value <- 1 - pt(t, df)
cat("T value:", t, "P-value:", p_value, "\n")
if (p_value < 0.05) print("Reject H0") else print("Fail to reject H0")

# Two-sample Z-Test
xbar1 <- 105; xbar2 <- 100; sigma1 <- 10; sigma2 <- 12; n1 <- 50; n2 <- 40
z <- (xbar1 - xbar2) / sqrt((sigma1^2/n1) + (sigma2^2/n2))
p_value <- 2 * (1 - pnorm(abs(z)))
cat("Two-sample Z:", z, "P-value:", p_value, "\n")
if (p_value < 0.05) print("Reject H0") else print("Fail to reject H0")

# Two-sample T-Test (Welch’s)
xbar1 <- 20; xbar2 <- 15; s1 <- 4; s2 <- 5; n1 <- 12; n2 <- 10
t <- (xbar1 - xbar2) / sqrt((s1^2/n1) + (s2^2/n2))
df <- ((s1^2/n1 + s2^2/n2)^2) / ((s1^2/n1)^2/(n1-1) + (s2^2/n2)^2/(n2-1))
p_value <- 1 - pt(t, df)
cat("Two-sample T:", t, "P-value:", p_value, "\n")
if (p_value < 0.05) print("Reject H0") else print("Fail to reject H0")

#