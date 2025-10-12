# Mean:
x <- c(1,2,3,4,5)
mean(x)

#Median:
y <- c(1, 3, 5, 7, 9)
median(y)

#getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}
v <- c(1,1,2,2,3,2,4,5,2,3,1,4,5)
result <- getmode(v)
print(result)
