#1. Let X, the number of flaws on the surface of a randomly selected boiler of a certain type, have a Poisson distribution with parameter λ = 5. Compute the following probabilities:
# a)	P(X<=8)
# b)	P(X=8)
# c)	P(X>=9)
# d)	P(5<=X<=8)
# e)	P(5<X<8)

#Poison Distribution
#lambda = 5
#P(X<=8)
ppois(8,5)
#P(X=8)
ppois(8,5) - ppois(7,5)
#P(X>=9)
ppois(8,5,lower=FALSE)
#or
1-ppois(8,5)
#P(5<=X<=8)
ppois(8,5) - ppois(4,5)
#P(5<X<8)
ppois(7,5)-ppois(5,5)



