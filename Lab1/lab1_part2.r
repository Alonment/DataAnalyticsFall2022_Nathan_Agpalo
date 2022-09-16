
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

# visualization exercises
plot(mtcars$wt, mtcars$mpg)
install.packages("tidyverse")
library("ggplot2")
qplot(mtcars$wt, mtcars$mpg)
qplot(wt, mpg, data=mtcars)
ggplot(mtcars, aes(x=wt, y=mpg)) + geom_point()
plot(pressure$temperature, pressure$pressure, type="l")
points(pressure$temperature, pressure$pressure)

lines(pressure$temperature, pressure$pressure/2, col="red")
points(pressure$temperature, pressure$pressure/2, col="blue")

library(ggplot2)
qplot(pressure$temperature, pressure$pressure, geom="line")
qplot(temperature, pressure, data=pressure, geom="line")
ggplot(pressure, aes(x=temperature, y=pressure)) + geom_line() + geom_point()
ggplot(pressure, aes(x=temperature, y=pressure)) + geom_line() + geom_point()

# Creating Bar Graphs
barplot(BOD$demand, names.arg=BOD$Time)
table(mtcars$cyl)
barplot(table(mtcars$cyl))
qplot(mtcars$cyl)
qplot(factor(mtcars$cyl))

# Bar graph of counts
qplot(factor(cyl), data=mtcars)
ggplot(mtcars, aes(x=factor(cyl))) + geom_bar()

hist(mtcars$mpg)
hist(mtcars$mpg, breaks=10)
hist(mtcars$mpg, breaks=5)
hist(mtcars$mpg, breaks=12)
qplot(mpg, data=mtcars, binwidth=4)
ggplot(mtcars, aes(x=mpg)) + geom_histogram(binwidth = 4)
ggplot(mtcars, aes(x=mpg)) + geom_histogram(binwidth = 5)

# Creating Box - Plots
plot(ToothGrowth$supp, ToothGrowth$len)

boxplot(len ~ supp, data=ToothGrowth)
boxplot(len ~ supp + dose, data=ToothGrowth)

qplot(ToothGrowth$supp, ToothGrowth$len, geom="boxplot")
qplot(supp, len, data=ToothGrowth, geom="boxplot")
ggplot(ToothGrowth, aes(x=supp, y=len)) + geom_boxplot()
qplot(interaction(ToothGrowth$supp, ToothGrowth$dose), ToothGrowth$len, geom="boxplot")
qplot(interaction(supp, dose), len, data=ToothGrowth, geom="boxplot")
ggplot(ToothGrowth, aes(x=interaction(supp, dose), y=len)) + geom_boxplot()
