# set working directory
setwd("E:GH/DS/DataToImport")

# Load data from tab-delimited file
movies <- read.table(
  file = "Movies.txt",
  sep = "\t",
  header = TRUE,
  quote="\"")

# peak at data
head(movies)