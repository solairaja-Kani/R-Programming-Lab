# Pie Chart:
x <- c(12,24,33,50)
mylabel <- c("HTML","CSS","PHP","JS");
colors <- c("#ccffcc", "#ccffff", "#ccb3ff", "#ff99cc")
pie(x, labels = mylabel, main = "Languages", col = colors)
legend("bottomright",mylabel,fill = colors)


#Bar Chart:
x <- c("HTML","CSS","PHP","JS");
y <- c(42,50,35,20)
barplot(y,names.arg = x, col ="#ccf2ff", main = "Language used by No. of Companies ")


#Horizontal Bar Chart:
x <- c("Apple" , "Orange" ,"Mango", "Grapes", "Guava")
y <- c(30, 25, 40, 35, 20)
barplot(y, names.arg = x, horiz = TRUE, col = "#ffcccb", main = "Fruits Price per kg")

#Histogram:
v <- c(19, 23, 11, 5, 16, 21, 32, 14, 19, 27, 39)

hist(v, xlab = "No.of Articles", col = "green", border = "black", xlim = c(0, 50), ylim = c(0, 5), breaks = 5)  


#) Scatter Plots:
x <- c(5,7,8,7,2,2,9,4,11,12,9,6)
y <- c(99,86,87,88,111,103,87,94,78,77,85,86)
plot(x, y, main="Observation of Cars", xlab="Car age", ylab="Car speed")


# Line Graph:
v <- c(23,10,15,25,30,2)
plot(v, type = "o")

# Grouped Line Graph:
v <- c(12, 23, 16, 40, 36)
t <- c(22, 45, 10, 8, 45)
m <- c(25, 14, 16, 34, 29)
plot(v, type = "o", col = "red", xlab = "Month", ylab = "Articles Written", main = "Articles Written Chart")
lines(t, type = "o", col = "blue")
lines(m, type = "o", col = "green")


