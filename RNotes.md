R Programming Notes
---

<- || Assignment operator

Language for statistical Computing

Open-source implementation of S

Command line interface

Reproducibility through R scripts

R Packages

Vibrant community



### RStudio Commands
---

Ctrl + Enter = Runs program...standard stuff 

**Set working directory**

	setwd("C:/Pluralsight")

**Data Frames** are the most important Data Structure for Data Analysis

- set of columns
- set of rows
- all data in a column must be same data type

**R** - is a vectorized language 
	take a vector and return a vector
	
#### Easy to install packages
	
	install.packages("ggplot2")

**Use Package**

	library(Name of library)

**Command Help**

	?Command ie ?nrow

### Transforming and Cleaning Data
---
**Data Munging or Data Wrangling**

	Transferring data from raw form in suitable for data analysis

	Data must be cleaned first

	Most difficult step and most time consuming

	Record all steps using a script so you can apply them again

	Point script at new data and run it

**M.U.N.G** - Munge until no good

#### Tasks associated with Data Munging

- renaming variables ie correcting incorrect column names or removing invalid characters
- Data type conversion ie char to numeric or numeric to int
- Encoding values ie coding Male/Female to M/F
- Merging data sets ie joining to keys in tables together
- Converting units ie miles to kilometers etc
- Handling missing data ie replacing missing values with substitute values
- Handling anomalous data ie handling detecting/correcting data entry mistakes 
---
#### Loading Data into R
---

- File-based ie CSV/Tab/Excel
- Web-based data ie html/xml/json
- Db ie MSSql, MySql, and Oracle
- Statistical Data ie SAS, SPSS, and Stats

#### Aspects of clean data
---

- structure of the data
- contains a single type of observation...transaction or entity...movies released etc
- variables in columns Date/Customer/Quantity

#### Clean Data
---

1. No errors
2. No missing values
3. Properly encoded

**sapply**

	allows to apply function to each element in a collection of values

#### Exporting Data
---

**Save data to CSV**

	write.csv(name of collection, "Name".csv
---