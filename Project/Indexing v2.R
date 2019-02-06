

# Illustration of indexing
# Created 19 May 2017, Updated 31 January 2018

# Indexing is a useful tool for using only some of the values stored in an R object.
# This will be useful in the project for analyzing only one scale or the other.

# First, here is a simple data set just for illustration (competely random nonsense data)
myData_vector <- round(rnorm(20,5,2),0)
myData_matrix <- matrix(myData_vector, ncol=4)
myData <- data.frame(myData_matrix)
myData

# Okay, now suppose X1 and X2 make up scale 1.

myData[,1:2]
summary(myData[,1:2])

# Or maybe your data is more complicated and Scale 1 contains X1 and X4?
myData[,c(1,4)]

# Or maybe you want just the even numbered items?
itemIndex <- seq(2,4,by=2)
itemIndex
myData[,itemIndex]

# Or maybe you only want the last 3 cases?
myData[3:5,]

# Or maybe just the first element of the data frame?
myData[1,1]

# When indexing a vector, you only need one value:
myVariable <- letters[1:5]
myVariable
myVariable[c(3,5)]

