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

# missing values
# Count them
sum(is.na(movies))

# inspect rows with missing values
tail(movies)

# exclude movies
# with no values
movies <- na.omit(movies)

# Runtime cleanup

# remove abbr for minutes
head(movies$Runtime)

# try to run calculations
mean(movies$Runtime)

# Determine the data type...its a factor
class(movies$Runtime)

# Cast from factor to character string
runtimes <- as.character(movies$Runtime)

# check out the conversion
head(runtimes)
class(runtimes)

# remove min and whitespace using sub
runtimes <- sub(" min", "", runtimes)
# check the conversion
head(runtimes)

# convert from character to integer
movies$Runtime <- as.integer(runtimes)

# show results
head(movies$Runtime)

# see the class
class(movies$Runtime)

# now we can perform mathematical ops
mean(movies$Runtime)

# Box office cleanup

# Box office uses three units of measure
head(movies$Box.Office)

# create a function to convert
# Box.Office to char
# removes $
# converts to numeric

convertBoxOffice <- function(boxOffice)
{
  stringBoxOffice <- as.character(boxOffice)
  
  replaceBoxOffice <- gsub("[$|k|M]", "", stringBoxOffice)
  
  numericBoxOffice <- as.numeric(replaceBoxOffice)
  
  if(grepl("M", boxOffice)) {
    numericBoxOffice
  } else if(grepl("k", boxOffice)) {
    numericBoxOffice * 0.001
  } else {
    numericBoxOffice * 0.000001
  }
}

# convert box office to single unit of measure...millions
movies$Box.Office <- sapply(movies$Box.Office, convertBoxOffice)

# see results of function
head(movies$Box.Office)
class(movies$Box.Office)
mean(movies$Box.Office)