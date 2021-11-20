#1
#a
dnorm(0.5, 2, 0.5)
#b
pnorm(2.5, 2, 0.5)
#c
pnorm(3, 2, 0.5) - pnorm(1, 2, 0.5)

#2
#a
dt(0.5, 5)
#b
pt(2.5, 5)
#c
pt(3, 5)-pt(1, 5)

#3
CRSP <- read.delim("~/Desktop/FIN503/data/CRSPday.txt")
summary(CRSP)
cov(CRSP[,4:6])
cor(CRSP[,4:6])
mean(CRSP$ge)
mean(CRSP$ibm)
mean(CRSP$mobil)
var(CRSP$ge)
sd(CRSP$ge)
cor.test(CRSP[,4],CRSP[,6])
#4
USMacro <- read.delim("~/Desktop/FIN503/data/USMacroG.txt")
attach(USMacro)
#(1)(2)
d_com <- diff(consumption)
d_dpi <- diff(dpi)
d_cpi <- diff(cpi)
d_gov <- diff(government)
d_une <- diff(unemp)
pairs(cbind(d_com, d_dpi, d_cpi, d_gov, d_une))
#(3)
model <- lm(d_com~d_dpi+d_cpi+d_gov+d_une)
summary(model)
#(4)
anova(model)
#(5)
library(MASS)
step <- stepAIC(model)