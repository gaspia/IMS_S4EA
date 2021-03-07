data (airquality)
str(airquality)
Temperature <- airquality$Temp
hist(Temperature)

# to represent the density instead of frequency
hist(Temperature, freq = FALSE)

# to get more info on hist

?hist
help("hist")

# Hist example returns
h <- hist (Temperature)
h
