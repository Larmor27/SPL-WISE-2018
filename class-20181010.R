# R class of 10th of October 2018

rm(list = ls()) # clean vars

## Functions
myfun = function(x, a){
  r = a * sin(x)
  return(r)
}

myfun(pi/2, 1)
myfun(a=1, x=3*pi/2) # order of args doesn matter if specified

myfunsin1 = function(x, a) a*sin(x) # shortform for the above function. Weird??
myfunsin2 = function(x, a=1) { # returns the only row not asigned to anything. also weird...
  a * sin(x)
}

myfun3 = function(x, a = 1) {
  r1 = a * sin(x)
  r2 = a * cos(x)
  # return a list containing two values
  return(list(r1 = r1, r2 = r2)) # by assigning the stuff inside the list to variables, their name is returned as well
}

myfun3(pi/2, 1)

myfun4 = function(x, a = 1, b = 2) {
  r1 = a * sin(x)
  r2 = b * cos(x)
  
  return(c(r1, r2))
}

myfun4(pi/2)

## Useful standard functions
a = 1:3
b = 2:6
a %in% b # which elements of a are contained in b?

union(a, b) # creates a union of a and b
intersect(a, b) # intersect the two vectors
setdiff(a, b) # elements not in both vectors

# Conditions

## If - statements
x = 1
if(x == 2){
  print("x = 2")
} else {
  print("x != 2")
}

##  IfElse - statements
x = 1
ifelse( x >= 0, print("x >= 0"), print("x < 0"))

x = seq(2, -1)
sqrt(ifelse(x >= 0, x, NA)) # more useful example

## Switch
rootsquare = function(x, type) {
  switch(type,
         square = x * x,
         root = sqrt(x))
}

x = 4
rootsquare(x,type = "square")
rootsquare(x, type="root")

## function for measures of centrality
centre = function(x, type) {
  switch(type,
         mean = mean(x),
         median = median(x),
         trimmed = mean(x, trim = .1))
}

x = rnorm(10)
centre(x, 'mean')
centre(x, 'median')
centre(x, 'trimmed')

# For-loops
## loops are really slow as in every high-level language
for(i in 1:4){ print(i)}
for(i in letters[1:4]){ print(i) }


a = numeric(400) ## generate empty a of length 400

for(i in 1:400) { ## fill a with 1:400. Really slow, avoid!
  a[i] = i
}

# While-loops
i = 0
while (i < 4) {
  print(i)
  i= i + 1
}

# Repeat loops
## same as while, checks condition after running
i = 0
repeat{
  i = i + 1
  if( i == 4) {
    print('We are done!')
    break # Break exits a loop
  }
}

# Taking time
## system.time() tracks performance of computations

x = c(1:50000)
system.time(for(i in 1:50000) { x[i] = rnorm(1)})

system.time(1:50000)

# Avoiding loops: apply() function-family
## highly performing functions for iterating objects.
## purrr-package does the same and even better apearently

## 2x5 matrix
a = matrix(1:10, nrow = 2)

## apply by row
apply(a, MARGIN = 1, FUN = mean) # returns vector
v = c()
for(i in 1:nrow(a)) { # as loop
  v[i] = mean(a[i,])
}
v
## apply by column
apply(a, MARGIN = 2, FUN = mean)

for(i in 1:ncol(a)) {
  v[i] = mean(a[,i])
}

## lapply
a = rnorm(10)
b = rnorm(2000)
c = list(a, b)

lapply(c, mean) # apply mean-function to each element in list c

## sapply
## apply a function sequentially ot a vector or list
## and return vector or matrix
A = matrix(2:7, nrow = 2)
b = matrix(1:6, nrow = 2)
c = list(a, b)

sapply(c, as.vector) # returns a matrix


## mapply()
## multivariate version of sappyl.
## applies FUN to given amount of elements of the arg. vectors
a = c(1, 2)
b = c(-1, -2)

mapply('+', a, b) # pairwise addition of a and b

## tapply()
## apply function to element of a vector, grouped by a factor
data(iris)
tapply(X = iris$Sepal.Width, INDEX = iris$Species,
       FUN = mean)
