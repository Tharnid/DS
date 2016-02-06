# set working directory
setwd("E:/GH/DS/DataToImport")

# Load CSV data
movies <- read.csv(
  file = "Movies.csv",
  quote = "\"")

genres <- read.csv(
  file = "Genres.csv",
  quote = "\"")

# Peek at data
head(movies)

head(genres)

# Uinvariate stats Qualitative
table(movies$Rating)

table(genres$Genre)

# Univariate stats Quantitative

# analyze the location of quant variable
mean(movies$Runtime)

median(movies$Runtime)

which.max(table(movies$Runtime))

# measure spread of the data
min(movies$Runtime)

max(movies$Runtime)

# range of values
range(movies$Runtime)

# total spread of data using the max and min
diff(range(movies$Runtime))

# Quartiles
quantile(movies$Runtime)

quantile(movies$Runtime, 0.25)

quantile(movies$Runtime, 0.90)

# Return 3rd quartile - first Quartile
IQR(movies$Runtime)

# Return variance of data - numerical of how far data is spread
var(movies$Runtime)

# sd standard deviation
sd(movies$Runtime)

# analyze shape of quantitative variable
install.packages("moments")

# load moments
library(moments)

# skewness || positive = positively skewed || negative = negatively skewd
skewness(movies$Runtime)

# kurtosis - steeper than normal distribution
kurtosis(movies$Runtime)

# Plot the densisty
plot(density(movies$Runtime))

# summarize the variable
summary(movies$Runtime)