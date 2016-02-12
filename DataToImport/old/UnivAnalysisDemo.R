# Set working directory E:\GH\DS\DataToImport
setwd("E:/GH/DS/DataToImport")

# Load CSV data
movies <- read.csv("Movies.csv", quote = "\"")

genres <- read.csv("Genres.csv", quote = "\"")

# Peek at the data
head(movies)

head(genres)

# Univariate visualizations for
# a qualitative variable

# bar graph of ratings observations
plot(movies$Rating)

# pie chart of rating observations
pie(table(movies$Rating))

# Univariate visualizations of
# a quantitiative variable

# Create a dot plot of runtime
plot(
  x = movies$Runtime, 
  y = rep(0, nrow(movies)), 
  ylab = "", 
  yaxt = "n")

# Create a boxplot of runtime
boxplot(
  x = movies$Runtime, 
  xlab = "Runtime (minutes)", 
  horizontal = TRUE)

# Create a histogram of runtime
hist(movies$Runtime)

# Create a more course-grain histogram
hist(
  x = movies$Runtime,
  breaks = 10)

# Create a more fine-grain histogram
hist(
  x = movies$Runtime,
  breaks = 30)