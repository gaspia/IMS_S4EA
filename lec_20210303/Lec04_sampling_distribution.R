nfl=read.csv("source/ims/IMS_S4EA/lec_20210303/NFL2015.csv", header=T)
head(nfl)

#display a summary
summary(nfl$YearlySalary)

dim(nfl)

hist(nfl$YearlySalary)

#Defining sampling size and creating an object to store results

n=5 # sample size
# object to store samples
s<-matrix(NA, nrow=5, ncol=5000)

#First sample: there are a total of 2099 cases; sampling 5 case numbers between 1 and 2099 and storing the data
s[,1]=nfl$YearlySalary[sample(1:2099,n)]
mean(s[,1]) # and its mean

sd(s[,1]) # and its se

median(s[,1]) # its median

#Second sample: there are a total of 2099 cases; sampling 5 case numbers between 1 and 2099 and storing the data
s[,2]=nfl$YearlySalary[sample(1:2099,n)]
mean(s[,2]) # and its mean

sd(s[,2]) # and its se

median(s[,2]) # its median

#First 1000 samples: there are a total of 2099 cases; sampling 5 case numbers between 1 and 2099 and storing the data; plotting the histogram os the sample means

#
for (i in 3:1000){s[,i]=nfl$YearlySalary[sample(1:2099,n)]}
mean.s=colMeans(s[,1:1000])
hist(mean.s, main="Histogram of 1000 sample means",
     xlab=substitute(paste("Mean=", mean, "; Stdev=",
                           std, " of 1000 samples"),
                     list(mean=signif(mean(mean.s),3),
                          std=signif(sd(mean.s),3))))


#####################################################

s=c(1,1,0,1,1,0,1,0,0,0,1,1,0,1,0,1,1,0,0,1,0,0,0,1,1,0,1,0,0,
    1,0,0,1,0,1,0,1,1,1,1,0,1,1,1,1,1,0,1,0,0,0,1,0,1,0,0,0,0,
    1,0,0,0,0,1,1,1,0,0,1,1,0,0,1,1,1,0,1,0,1,1,0,1,1,1,0,1,0,
    1,0,1,1,1,0,0,1,0,0,1,0,1)

count=sum(s)
count

n=length(s)
n

p=count/n
p

S.boot=matrix(0, nrow=100, ncol=5000) # to store the data
#
S.boot[,1]=s[sample(1:100,100,replace=TRUE)] # first sample
sum(S.boot[,1]) # count

sum(S.boot[,1])/100 # proportion

# additional 999 samples
for (i in 2:1000){S.boot[,i]=s[sample(1:100,100,replace=TRUE)]}
#
mean.s=colMeans(S.boot[,1:1000]) # 1000 sample means
plot(table(mean.s), main="Histogram of 1000 sample means",
  ylab="Frequency",
  xlab=substitute(paste("Mean=", mean, "; Stdev=",
  std, " of 1000 samples; n=100"),
  list(mean=signif(mean(mean.s),3),
  std=signif(sd(mean.s),3))))
