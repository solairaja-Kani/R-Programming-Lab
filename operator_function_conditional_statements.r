# Relation operators
a <- 10
b <- 20
a > b
a < b
a >= b
a <= b
a == b
a != b

# Operation on vectors even length

print("Operation on vectors even length")
a=c(2,3,4)
b=c(14,12,24)
a+b
a>y


#Operation on vectors uneven length
print("operation on vectors uneven length")
m=c(3,2,1,6)
n=c(10,20)
m+n
m-1
m+c(1,2,3)


# logical operators
print("logical operators")
x=10
y=8
z=15
(x>y) & (y<z)
(x>y) | (y>z)
!(x>y)
(x>y) && (y<z)
(x>y) || (y>z)
!(x>y) && (y<z)
!(x>y) || (y<z)

#Assignment operator
print("Assignment Operator")
a = 50
a


# function to calculate power
pow <- function(x,y){
  result <- x ^ y
  print(paste(x, "raised to the power", y, "is", result))
}

x = 14
y = 2
check <- pow(x,y)

# conditional statements
year = as.integer(readline(prompt = "Enter year:"))

if ((year %% 4 == 0) & ((year %% 100 != 0) | (year %% 400 == 0))) {
  print(paste(year, " is a leap year"))
} else {
  print(paste(year, " is not a leap year"))
}


