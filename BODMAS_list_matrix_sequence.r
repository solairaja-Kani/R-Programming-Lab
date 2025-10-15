#A)	BODMAS
A = 21*7/2-1*20
print(A)

#B)	Sequences 
seq(from=1,to=10)
seq(from=1,to=10,by=2)

#Creating list with c cmd
a=c(23,34,56,34)
b=c("Tamil", "English", "Hindi")
print(a)
print(b)

#Creating list with list()
empId = c(2,3,5,1) 
empName = c("Raja","Vel","Anthony","Mani")
numberOfEmp = 4
empList = list(empId, empName, numberOfEmp)
print(empList)


#D)	Matrix
a=matrix( 
  c(1,2,3,4,5,6),
  nrow=2, 
  ncol=3,
  byrow=TRUE)
dim(a)


# Create two matrices
matrix_A <- matrix(c(2,3,1,43,3,5), nrow = 2, ncol = 3, byrow = TRUE)
matrix_B <- matrix(c(12,23,34,45,56,67), nrow = 3, ncol = 2, byrow = TRUE)
# Print the matrices
print("Matrix A:")
print(matrix_A)
print("Matrix B:")
print(matrix_B)
# Perform matrix multiplication
result_matrix <- matrix_A %*% matrix_B
# Print the result
print("Result of Matrix A %*% Matrix B:")
print(result_matrix)
