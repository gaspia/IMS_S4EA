# histogram for Beta-Charotine concentration in the blood
hist(PlasmaRetinol$BETADIET, xlab="Concentration of Beta Charotine in the blood")
# Mean
mean(PlasmaRetinol$BETADIET)
# Mode
library(DescTools)
Mode(PlasmaRetinol$BETADIET)


#Exercise 7
### Mammals
mean(MammalLongevity$Longevity)
sd(MammalLongevity$Longevity)
# Choosing the elephant form the list
MammalLongevity$Longevity [15]
# Getting a boxplot
boxplot(MammalLongevity$Longevity)
# Calculating he std deviation
scale(MammalLongevity$Longevity)[15]

# Exercise 32
sample(OlympicMarathon2016,10, 





