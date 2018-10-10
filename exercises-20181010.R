#Exercises Day 4

# 1 Generate 100 random samples from normal distribution
# with mean = 0, standard_deviantion = 2. For each element of x compute y,
# such that y_1 = 0

x = rnorm(100,0,2)
y = 1:100
for(i in 1:length(x)) {
  if (i == 1) {
    y[i] = 0
  }
  if (x[i] >= 0) {
    y[i+1] = y[i] + x[i] 
  }
  if(-1 < x[i] && x[i] < 0) {
    y[i+1] = y[i] - 2*x[i]
  }
  if(x[i] <= -1) {
    y[i+1] = y[i] - x[i]
  }
}


# 2 Compute max and min of variable Sepal.Length for each species of the iris data
data(iris)
min_sepal_length = tapply(X = iris$Sepal.Length, INDEX = iris$Species,
       FUN = min)
min_sepal_length

max_sepal_length = tapply(X = iris$Sepal.Length, INDEX = iris$Species,
       FUN = max)
max_sepal_length

# 3 Write a function for replacing a row in a df with NAs
data(iris)
setRowNA = function(x, row){
  x[row, ] = NA
  return(x)
}

df = setRowNA(iris, 3)
deleteRow = function(df) {
  # get list with bools which rows containt NAs
  missingRows = complete.cases(df)
  
  # remove rows consisting solely of NAs
  df = df[-c(which(missingRows == FALSE)),]
  return(df)
}

deleteRow(df)

# 4 Write a recursive function which return n Fibonaci numbers
# 4! = 4 * 3 * 2 * 1
recursive.factorial <- function(x) {
  if (x == 0)    return (1)
  else           return (x * recursive.factorial(x-1))
}

recursive.factorial(2)

fibonacci = function(len, v1, v2){
  if(len == 1) {
    return(v1)
  }
  if(len == 2) {
    return(v2)
  }
  if(len >= 3) {
    return(fibonacci(len-1, v1, v2) + fibonacci(len-2, v1, v2))
  }
}

x = fibonacci(4, 2, 3)
x

# 5 Write functions to compare densities and probabilities of a random variable following the normal distribution

mu = 0
sig = 2

x = rnorm(6,mu,sig)

compare = function(x, mu, sig){
  sd = sig**2
  prob = pnorm(x, mu, sd)
  dens = dnorm(x, mu, sd)
  return(data.frame(x,prob,dens))
}

y = compare(x, mu, sig)
