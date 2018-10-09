rm(list = ls()) # Cleans all variables

# Age, numeric
a = c(10, 20, 15, 43, 76, 41, 25, 46)
# Sex, factor
b = factor(c('m', 'f', 'm', 'f', 'm', 'f', 'm', 'f'))

# silblings, numeric
c = c(2, 5, 8, 3, 6, 1, 5, 6)

# Create data frame
mydf = data.frame(a, b, c)
colnames(mydf) = c('Age', 'Sex', 'Siblings')

# Code 2
mydf[, 1]
mydf['Age']
mydf$Age
mydf[2,3] = 2 # change value
mydf[, 2] # all vars except 2nd

# Code 3
subset(mydf, mydf$Age > 30) # 4 entries
mean(subset(mydf$Age, mydf$Sex == 'm'))
mean(subset(mydf$Age, mydf$Sex == 'f'))
# males over 30
mydf[(mydf$Sex == 'm') & (mydf$Age > 30), ]

##########

# Define data for the variable
USD = c(1700, 2100, 2300, 2050,
        2800, 1450, 3400, 2000)

# add variable to data frame
mydf = cbind(mydf, 'Income (USD)' = USD)

# find position of added variable
iPosVar = names(mydf) == 'Income (USD)'

# rename variale
names(mydf)[iPosVar] = 'IncomeUSD'

##########
# search and replace #
colnames(mydf) = gsub('In', 'Out', names(mydf))

# delete and sort #
# Order by column 'Age'
mydf[order(mydf$Age),]

# Order by column 'Sex'
mydf[order(mydf$Sex),]

# Remove column 'Age'
mydf$Age = NULL

##########################
# Example data-set on pressure #

library(datasets)
data(pressure)
pressure
help(pressure)
