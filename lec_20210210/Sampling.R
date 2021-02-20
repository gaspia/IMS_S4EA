########################
#Lecture 01 - 20210210
#
# Sampling example
# 
########################

# Creating a data frame with 10 Names and respective ages
# Array with 10 names

Names = c("Bob", "Mary", "William", "George", "Lucas", "Mathew", "Angel", "Steven", "Ariana", "Chen")
length(Names)
# Array with 10 age Values
Ages = c(22, 23, 21, 25, 28, 25, 23, 23, 32, 28)
length(Ages)
#creating the data frame
Pop = data.frame(Names = Names, Ages = Ages)
print(head(Pop))

# Creating a sample with 4 cases non replaceable
S = sample(1:10,size = 4, replace = FALSE )
head(S)

# creating the sample data frame
S.data = Pop[S,]
S.data

