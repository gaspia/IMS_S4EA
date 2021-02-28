# assigning variables
x<-1
print (x) # explicit printing
x # auto printing || var names are case-sensitive

# x <- 5 x is a vector [1] where 5 is the first element

# initializing a vector with ints from 10 to 30 using the ":" char
x<-10:30
x

######
#
# Basic or Atomic classes of objects
#  - Character
#  - numeric (real numbers)
#  - integer 
#  - complex
#  - logical (True/False)
#
######

# most basic object in R is a vector. Can be created with vector() function
# A vector can only contain objects from one same class

# in R all numbers are double precision i.e. 2 = 2.00
# to specify an integer 2L

i <- 2L
i

# inf represents infinity
q <- Inf
q 

# R atribures
# metadata describing the objects content, e.g. column names in data frames describe the data they contain
# attributes can be accessed using attributes()

# c() function is used to create vectors
c(1, 2, 3, 4)
c(T, F)

# vector can be used to create vectors

x <- vector("numeric", 10L)
x

# In some cases different classes of R objects can be mixed, leading to coersion

y <- c(1.7, "a") ## character 
y <- c(TRUE, 2) ## numeric
y <- c("a", TRUE) ## character
y

# coersion can be implicit (see above) or explicit, i.e. the numeric and char vector was converted 
# to char because numbers can easily be represented as strings 

# Explicit coersion
# Objects can be explicitly coerced from one class to another using the as.* functions, if available.

x <- 0:6 
class(x)
# casting (coerion'nig) to numeric
as.numeric(x)
# casting to logical
as.logical(x)
# casting to char
as.character(x)

# if coersion isn't possible NA's will be returned

x <- c("a", "b", "c") 
as.numeric(x) 

#######
#
# Matrices - Vectors with a dimension attribute
# 
#######

m <- matrix(nrow = 2, ncol = 3) 
m

dim (m)

attributes(m)

# matrices are constructed row-wyse, top-to-bottom

m <- matrix(1:6, nrow = 2, ncol = 3)
m

# can also get a matrix from a vectors by adding a dimmension attribute

m <- 1:10
m

dim(m) <- c(2,5)
m
