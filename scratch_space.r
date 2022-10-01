install.packages("rpart.plot")
library(rpart)
library(rpart.plot)
iris
dim(iris)

sample_iris = sample(150, 100)
sample_iris

train_df = iris[sample_iris,]
test_df = iris[-sample_iris,]

dim(train_df)
dim(test_df)

?rpart
colnames(iris)
model = rpart(Species ~ ., data=train_df, method="class")
plot(model)
rpart.plot(model)

predictions = predict(model, test_df)
predictions
