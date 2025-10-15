###########################################################
# 🧮 R PROGRAM COLLECTION — STUDENT DATA, LIST, OUTLIER, 
# AND LINEAR REGRESSION PROBLEMS (All-in-One)
###########################################################

###########################################################
# 1️⃣ Create a Data Frame for Students and Display Structure
###########################################################

# Create a dataframe for students
students <- data.frame(
  StudentID = c(101, 102, 103, 104, 105),
  Name = c("Arun", "Divya", "Kiran", "Ravi", "Meena"),
  Age = c(20, 21, 19, 22, 20),
  Gender = c("Male", "Female", "Male", "Male", "Female"),
  Marks = c(85, 90, 78, 88, 92)
)

# Display the dataframe
print("Student Data Frame:")
print(students)

# Display the structure of the dataframe
print("Structure of the Data Frame:")
str(students)

###########################################################
# 2️⃣ Create a List and Display Using Bar Chart & Box Plot
#    Also Detect Outliers
###########################################################

# Create a list (numeric vector)
data <- c(65, 78, 70, 85, 73, 80, 69)

# Display the data
print("Data values:")
print(data)

# ---- Bar chart ----
barplot(data,
        main = "Bar Chart of Scores",
        xlab = "Index",
        ylab = "Scores",
        col = "skyblue",
        border = "black")

# ---- Box plot ----
boxplot(data,
        main = "Box Plot of Scores",
        ylab = "Scores",
        col = "lightgreen",
        border = "darkgreen")

# ---- Outlier detection ----
outliers <- boxplot.stats(data)$out

# Display outliers if any
if(length(outliers) > 0) {
  print("Outliers detected:")
  print(outliers)
} else {
  print("No outliers detected.")
}

###########################################################
# 3️⃣ Fit Linear Regression Model for Ad Spend vs Sales
#    Display Equation on Graph and Predict New Value
###########################################################

# Given data
ad_spend <- c(10, 20, 25, 40, 45)
sales <- c(45, 75, 90, 135, 150)

# Fit the linear regression model
model <- lm(sales ~ ad_spend)

# Display model summary
summary(model)

# Extract coefficients
intercept <- coef(model)[1]
slope <- coef(model)[2]

# Display regression equation
cat("Linear Regression Equation: Sales =", round(intercept,2), "+", round(slope,2), "* Ad_Spend\n")

# Predict sales when ad_spend = 54
new_data <- data.frame(ad_spend = 54)
predicted_sales <- predict(model, new_data)
cat("Predicted Sales when Ad_Spend = 54:", round(predicted_sales,2), "\n")

# ---- Plotting ----
plot(ad_spend, sales, 
     main = "Linear Regression: Ad Spend vs Sales",
     xlab = "Ad Spend",
     ylab = "Sales",
     pch = 19, 
     col = "blue")

# Add regression line
abline(model, col = "red", lwd = 2)

# Display regression equation on the graph
eq <- paste0("y = ", round(intercept,2), " + ", round(slope,2), "x")
text(x = 20, y = 140, labels = eq, col = "darkred", cex = 1.2)

###########################################################
# ✅ END OF ALL R PROGRAMS
###########################################################

# Note: 
# Run this full script in RStudio or R console.
# Each section is independent, so you can run them separately too.
