# exercise day one 
rm(list = ls()) # Cleans all variables

## first task
first = "slumdog"
second = "millionaire"
joint = paste(first, second, sep=" ")
joint_again = cat(first, second, sep="\n")
print(joint)

## second task
a = t(c(1,3,5,7,11,13,17,19))

## third task
b = 2^(1:8)

## fourth task
c = (1:8)^2

## fifth task
coincide_b_c = which(b == c)

## sixth task
M.c = cbind(b,c)
print(dim(M.c))
M.c[7, ]

## seventh task
M.r = rbind(a, b)
rownames(M.r) = c("a", "b")
colnames(M.r) = LETTERS[seq(19,26)]

## eighth task
Q = M.r[, LETTERS[setdiff(seq(19,26),23)]]
# oder
Q = M.r[, -5]
# oder
Q = M.r[, which(colnames(M.r) != 'W')]

## nineth task
pos = which(M.r > 12)
M.r[pos]

## tenth task
grid = seq(-3,3,by = 0.5)
vals = exp(-1*grid)

## eleventh task
d = c(1:100)
e = rep(7,100)

## twelveth task
D = matrix(d, nrow=10, ncol=10)
dim(D)

v = 1/ (1:100)
E = matrix(v, 10, 10, byrow=TRUE)
G = t(E)

## thirteenth task
D + E
D - E
D %*% E
D * E

## fourteenth task
P = D%*%E
diag(P)
P[row(P) == col(P)]

## fifteenth task
x = rnorm(6) * c(-10,0,1e-15,10,100,100000) # rnorm returns 6 normally distributed numbers

y1 = x^5 + x^4 + x^3 + x^2 + x + 1
y2 = 1 + x * (1 + x * (1 + x * (1 + x * (1 + x))))

## sixteenth task
