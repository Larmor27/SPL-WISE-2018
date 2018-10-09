### Exercises 2

rm(list = ls()) # Cleans all variables
is.factor(countries)
# 1. create dataframe
countries = c('Belgium', 'Denmark', 'France', 'GB', 'Ireland', 'Italy', 
     'Luxembourg', 'Holland', 'Portugal', 'Spain', 'USA', 'Japan', 'Deutschland')
x = c(2.8, 1.2, 2.1, 1.6, 1.5, 4.6, 3.6, 2.1, 6.5, 4.6,
      3.0, 1.3, 4.2)
y = c(9.4, 10.4, 10.8, 10.5, 18.4, 11.1, 2.6, 8.8, 5.0,
      21.5, 6.7, 2.5, 5.6)

mydf = data.frame(countries, x, y)
colnames(mydf) = c('Land', 'increase of index (x)', 'unemployed(y)')

# 1 a) get min and max of each column. print values and corresponding country
View(mydf)
no_min = min(mydf$`increase of index (x)`)
Land_min 
mydf['Land'][(mydf$`increase of index (x)` == no_min), ]
Land_min
no_max = max(mydf$`unemployed(y)`)
Land_max = mydf[(mydf$`unemployed(y)` == no_max), ]['Land']

# 2 b) compute range for each column
range_x = max(mydf$`increase of index (x)`) - min(mydf$`increase of index (x)`)
range_y = max(mydf$`unemployed(y)`) - min(mydf$`unemployed(y)`)

# 2 load mtcars
 library(datasets)
data(mtcars)
mtcars
help(mtcars)

# 3 order mtcars
mtcars[order(mtcars$mpg, decreasing = TRUE), ]
mtcars[order(mtcars$mpg, mtcars$cyl, decreasing = TRUE), ]

# 4 remove carb
mtcars$carb = NULL

# 5 swap columns mpg and hp
namen = colnames(mtcars) 

mtcars = mtcars[c('hp,cyl,disp,mpg,drat,wt,qsec,vs,am,gear')]
r.cars = mtcars[c('hp', 'cyl', 'disp', 'mpg', 'drat', 'wt', 'qsec', 'vs', 'am', 'gear')]
r.cars

# 6 extract cars of brand Mercedes by finding indices of row names containing String 'Merc'
string_to_find = 'Merc'
car_names = rownames(r.cars)
grep(string_to_find, car_names)

# 7 read dax_prices.csv in df dax.prices
dax.prices = read.csv('~/R/r-class-1819/dax_prices.csv', header=TRUE)

# 8 inspect first rows of dax.prices. are prices correctly imported as numeric?
is.numeric(dax.prices$DAX[1]) # TRUE

# 9 Rename column DAX to prices
colnames(dax.prices) = c('Date', 'DAX Prices')

# 10 Write dax.prices to disk as .txt with ; as seperator and , as decimal point
write.table(dax.prices, "~/R/r-class-1819/dax_prices.txt", sep=';', dec=',')

# 11 Read dax_prices.txt . Make sure everything is imported as numeric
dax.prices = read.table('~/R/r-class-1819/dax_prices.txt', sep = ';', dec = ',')
