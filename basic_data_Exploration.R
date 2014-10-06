setwd("F:/coursera_management/Statistics-coursera")
data=read.table('LifeExpTable.txt')
lifeexp=data[,2]
plot(lifeexp)
plot(lifeexp,xlab='country',ylab='life expectency')
plot(lifeexp,xlab='country',ylab='life expectency',ylim=c(0,86))
plot(sort(lifeexp),xlab='country',ylab='life expectency',ylim=c(0,86))
boxplot(lifeexp,ylab='life expectency',ylim=c(0,86))
summary(lifeexp)
range(lifeexp)
max(lifeexp)-min(lifeexp)
IQR(lifeexp)
hist(lifeexp)  ##to get shape of data, r default create bins!
hist(lifeexp,breaks=5) ## 5 bin
hist(lifeexp,breaks=5,xlab='life expectancy (years)',main='histogram') ##have bins in control ie less
boxplot(lifeexp,horizontal=TRUE) ## horizontal box plot








grades=c(79,68,69,74,76,87,88,90,93)
sort(grades)
summary(grades)
boxplot(grades,ylab='grades',ylim=c(60,100))
plot(sort(grades),type='b',xlab='students',ylab='grades',ylim=c(60,100))
var(grades) ##variance
sd(grades) ##standard deviation
round(sd(grades),1)
gradesTrim=sort(grades)
gradesTrim=gradesTrim[2:6]
stats=cbind(grades[1:5],gradesTrim) ## add column binding 
rownames(stats)=c('a','b','c','d','e') ## add row name





skeleton=read.table('R%20tutorials%2FSkeletonData.txt',header=TRUE)
attach(skeleton) ##to have direct access of data by variable name
Sex ##take advantage if attach 
boxplot(DGDifference,range=0,ylab='estimated age- actual age(years)')
boxplot(DGDifference,ylab='estimated age- actual age(years)') ##modified Boxplot
summary(DGDifference)
mean(DGDifference)
median(DGDifference)
mean(DGDifference,trim=0.1) ##trim data
boxplot(DGDifference/10,ylab='estimated age- actual age(years)')
hist(DGDifference,breaks=20,xlab='life expectancy (years)',main='histogram') ##shape of data
Sex
sex_counts=table(Sex)
sex_names=c('male','female')





data=read.table('LifeExpRegion.txt')
head(data)
plot(data)
region=data[,3]
table(region) ##summary of a column of categorical data
counts=table(region) ##store the table
relfreq=counts/sum(counts) ##releative frequency
region_names=c("america","e africa pc","euro c as","me n africa","s asia","ss africa")
barplot(counts,col=rainbow(6),names.arg=region_names,main="world region") ##barchart
barplot(relfreq,col=rainbow(6),names.arg=region_names,main="world region")
pie(relfreq,col=rainbow(6),label=region_names,main="world region")













