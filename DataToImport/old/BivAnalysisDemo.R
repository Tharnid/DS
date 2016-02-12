# Set working directory E:\GH\DS\DataToImport
setwd("E:/GH/DS/DataToImport")

# Load CSV data
movies <- read.csv("Movies.csv", quote = "\"")

genres <- read.csv("Genres.csv", quote = "\"")

# Peek at the data
head(movies)

head(genres)