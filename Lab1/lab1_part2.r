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
multivariate = read.csv("/Users/naytun/Downloads/multivariate.csv")
multivariate
attach(multivariate)
?attach
?lm
mm = lm(Homeowners~Immigrants)
plot(Homeowners~Immigrants)