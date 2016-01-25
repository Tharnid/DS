# Creating a set of factors
factors <- factor(c("Male", "Female", "Male", "Male", "Female"))
levels(factors) # distinct list in alpha order
unclass(factors)
