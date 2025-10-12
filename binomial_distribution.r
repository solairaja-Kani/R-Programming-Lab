
# 1.	n = 6, p = 0.5
# Find P(X = 3).
# 2.	n = 15, p = 0.2
# Compute the probability that at most 8 fail the test.
# P(X <= 8)
# 3.	n = 15, p = 0.2
# Compute the probability that exactly 8 fail the test.
# P(X = 8)
# 4.	n = 15, p = 0.2
# Compute the probability that at least 8 fail the test.
# P(X >= 8)
# 5.	n = 15, p = 0.2
# Compute the probability that between 4 and 7 (inclusive) fail the test.
# P(4 <= X <= 7)


# P(X = 3)
print(dbinom(3, size = 6, prob = 0.5))


# P(X <= 8)
print(pbinom(q = 8, size = 15, prob = 0.2))


# P(X = 8) = P(X <= 8) - P(X <= 7)
print(pbinom(q = 8, size = 15, prob = 0.2) - pbinom(q = 7, size = 15, prob = 0.2))


# P(X >= 8) = 1 - P(X <= 7)
print(1 - pbinom(q = 7, size = 15, prob = 0.2))


# P(4 <= X <= 7) = P(X <= 7) - P(X <= 3)
print(pbinom(q = 7, size = 15, prob = 0.2) - pbinom(q = 3, size = 15, prob = 0.2))



# =======================================================================================

#. Suppose that 20% of all copies of a particular textbook fail a certain binding strength test. Let X denote the number among 15 randomly selected copies that fail the test The X has a binomial distribution with n = 15 and p = 0.2. Compute the following probabilities,
# a)	P(X=8) 
# b)	P(X>=8)
# c)	P(X<=8)
# d)	P(4<=X<=7)

#P(X=8)
pbinom(8,15,0.2)-pbinom(7,15,0.2)
#P(X>=8)
1-pbinom(7,15,0.2)
#P(4<=X<=7)
pbinom(7,15,0.2)-pbinom(3,15,0.2)
#P(X<=8)
pbinom(8,15,0.2)


