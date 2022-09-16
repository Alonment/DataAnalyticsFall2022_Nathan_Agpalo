
EPI_DATA = read.csv("/Users/naytun/Downloads/EPI_DATA.csv")

help("qqnorm")
qqnorm(EPI_DATA$EPI)
qqline(EPI_DATA$EPI)
x <- seq(30,95,1)
x
x2 <-seq(30,95,2)
x2
x2 <-seq(30,96,2)
x2
qqplot(qt(ppoints(250),df=5),x, xlab = "Q-Q plot")
qqline(x)
install.packages("readxl")
library("readxl")
help(c)
multivariate <- read_xls("/Users/naytun/Downloads/multivariate.xls")
multivariate
multivariate = multivariate[c(1:7), c(1:6)]
View(multivariate)
attach(multivariate)
?attach
?lm
mm = lm(Homeowners~Immigrants)
plot(Homeowners~Immigrants)
summary(mm)
help(abline)
abline(mm)
abline(mm, col=2, lwd=3)
abline(mm)
abline(mm, col=3, lwd=3)
attributes(mm)
mm$coefficients
