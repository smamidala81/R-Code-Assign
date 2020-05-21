
# One sample and one tail test#

x<-c(0.593,0.142,0.329,0.691,0.231,0.793,0.519,0.392,0.418)
x
t.test(x>0.3)

# 2 sample 2 tail test#

a<-c(91,87,99,77,88,91)
b<-c(101,110,103,93,99,104)
t.test(a,b,'two.sided')

#t-test

library(gmodels)
library(nycflights13)
data<-nycflights13::flights

dep_delay<-flights$dep_delay
dep_delay1<-dep_delay[!is.na(dep_delay)]
ci(dep_delay1,confidence = 0.95)  


#anova - more than 2 sample and tail tests

DrugA<-c(4,5,4,3,2,4,3,4,4)
DrugB<-c(6,8,4,5,4,6,5,8,6)
DrugC<-c(6,7,6,6,7,5,6,5,5)

pain<-c(4,5,4,3,2,4,3,4,4,6,8,4,5,4,6,5,8,6,6,7,6,6,7,5,6,5,5)
drug=c(rep('A',9),rep('B',9),rep('C',9))
migraine=data.frame(pain,drug)
View(migraine)

plot(pain~drug,data=migraine)
results=aov(pain~drug,data=migraine)
summary(results)
