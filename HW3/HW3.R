#1 
SB <- read.delim("~/Desktop/FIN503/data/Stock_bond.txt")
attach(SB)
summary(SB)
GM_NR = diff(GM_AC)/lag(GM_AC)
GM_NR
F_NR = diff(F_AC)/lag(F_AC)
F_NR
pairs(cbind(GM_NR, F_NR))
logGM_NR <- log(1+GM_NR)
logGM_NR
pairs(cbind(GM_NR, logGM_NR))
cor(GM_NR, logGM_NR)

#2
CBE <- read.delim("~/Desktop/FIN503/data/cbe.dat")
attach(CBE)
#(1)
choco <- ts(choc, start=c(1958,1), end=c(1990,12), freq=12)
plot(choco, ylim=c(1000,10000),main="Time Plot of Monthly Chocolate Productions", col="blue")
#(2)
choco_mean <- aggregate(choco)/12
plot(choco_mean, ylim=c(2000,9000), main="Aggregated Annual Series", col="blue")
#(3)
boxplot(choco~cycle(choco), main="Boxplot of values for each season")

#3
BOE <- read.delim("~/Desktop/FIN503/data/Boeing.txt")
attach(BOE)
logHt <- log(1+ASKHI)
logLt <- log(1+BIDLO)
rt <- logHt-logLt
rt
par(mfrow=c(1,1))
acf(rt,lag=10)
Box.test(rt, lag=10, type="Ljung-Box")
#4
#(a)
pnorm(log(990/1000), 0.001, 0.015) 
#(b)
pnorm(log(990/1000), 0.001*5, 0.015*sqrt(5)) 