library(ISLR)

head(Hitters)
dim(Hitters)

HittersData <- na.omit(Hitters)

dim(HittersData)
library(dplyr)
glimpse(HittersData)

head(HittersData)

SalaryPredicctModel1 <- lm(Salary ~., data=HittersData)
summary(SalaryPredicctModel1)
