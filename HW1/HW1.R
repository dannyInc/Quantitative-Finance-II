CSP<-read.delim("~/Desktop/FIN503/data/CSP.txt")
# Question 1
library(moments)
summary(CSP)
attach(CSP)
mean(C)
sd(C)
skewness(C)
kurtosis(C, method=c("excess"))
min(C)
max(C)
basicStats(C)

logC <- log(1+C)
summary(C)
summary(logC)
mean(logC)
sd(logC)
skewness(logC)
kurtosis(logC)
min(logC)
max(logC)
# 
t.test(logC)
t.test(SP)

#Question 2
GMSP<-read.delim("~/Desktop/FIN503/data/GMSP.txt")
summary(GMSP)
attach(GMSP)
logGM <- log(1+GM)
logSP <- log(1+SP)
# logGM
mean(logGM)
sd(logGM)
skewness(logGM)
kurtosis(logGM)
min(logGM)
max(logGM)
# logSP
mean(logSP)
sd(logSP)
skewness(logSP)
kurtosis(logSP)
min(logSP)
max(logSP)

#Question 3
library(fBasics)
jarqueberaTest(logC)

#Question 4
#(a)
GMSPTB<-read.delim("~/Desktop/FIN503/data/GMSPTB.txt")
summary(GMSPTB)
TB <- GMSPTB$Tbill/12
ERGM <- GMSPTB$GM - TB
ERSP <- GMSPTB$SP - TB
summary(ERGM)
summary(ERSP)
t.test(ERGM)
t.test(ERSP)
#(b)
t.test(ERSP, alternative = "greater")
t.test(ERSP, alternative = "greater",conf.level = 0.9)
