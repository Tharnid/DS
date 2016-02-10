# Set working directory E:\GH\DS\DataToImport
setwd("E:/GH/DS/DataToImport")

# Load files
nlbatting <- read.csv(
  file = "NLBatting.csv",
  quote = "\"")

movies <- read.csv(
  file = "Movies.csv",
  quote = "\"")

genres <- read.csv(
  file = "Genres.csv",
  quote = "\"")

# preview data
head(nlbatting)

# Bivariate stats for two qualitative vars
table(genres$Genre, genres$Rating)

# two numeric variables or qualitative analysis

# Covariance
cov(nlbatting$H, nlbatting$R)

cov(nlbatting$AB, nlbatting$H)

cov(movies$Runtime, movies$Box.Office)

cov(movies$Critic.Score, movies$Box.Office)

# correlations

# quantitative correlation
cor(nlbatting$H, nlbatting$R)

cor(nlbatting$AB, nlbatting$H)

cor(movies$Runtime, movies$Box.Office)

cor(movies$Critic.Score, movies$Box.Office)

# both are failry small so neither would be suitable as a predictor for box office revenue
# correlation does not imply causation

# Bivariate and stats for qualitative and quantitative variables
tapply(movies$Box.Office, movies$Rating, mean)

tapply(genres$Box.Office, genres$Genre, mean)

summary(movies)