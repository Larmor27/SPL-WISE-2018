# Code 1
print("Hello World!")

# Code 2

a = 'pommes frites'
b = chartr('oemsp', 'eol H', a)
c = unlist(strsplit(b, " "))[c(1,3)]
d = as.numeric(charToRaw(c[2]))
e = rawToChar(as.raw(d + c(17, -3, 9, -8, -11)))
f = paste(c[1], e, '!!!')

# Code 3
g = floor(-pi)

# Code 4
rm(list = ls()) # Cleans all variables

# Linear Algebra

## Matrices
A = matrix(c(1:5)) # 5 Rows, 1 Column
B = matrix(c(1:5), nrow=1) # 1 Column, 5 Rows
C = matrix(c(1:5), ncol=1) # 5 Rows, 1 Column

## Dataframes
A_df = as.data.frame(A)
A_mat = as.matrix(A_df)

## Vectors
A_V = as.vector(A)
x = 1
y = 2
vector_of_xy = c(x,y)
a = 1:3 # Defines vector containing values 1, 2, 3
T = t(a) # transposes a to a Matrix

## Mathematical Functions
E = exp(2)
hundred_times_one = rep(1, 100) # vector containing 100x 1

## Accessing vector elements (slicing in python I guess)
a = c(2, 3, 1, 4)
length(a)
a[1:2]
a[-1]

## Constructing matrixes
M_three_row = matrix(1:12, nrow = 3) # Values 1-12 are put first in rows, then columns
M_three_row_T = matrix(1:12, nrow= 3, byrow = T)
