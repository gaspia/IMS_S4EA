# slide 127
baseball = read.table("source/ims/IMS_S4EA/lec_20210303/baseball.dat.txt")
plot(baseball[,c(1,2)], xlab="Salary",ylab="Batting average",main="Scatterplot of Batting average vs Salary")
