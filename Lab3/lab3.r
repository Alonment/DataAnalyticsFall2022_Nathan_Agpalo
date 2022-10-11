set.set(12345)
help(par)

par(mar = rep(0.2, 4))
dataMat = matrix(rnorm(400), nrow=40)
image(1:10, 1:40, t(dataMat)[, nrow(dataMat):1])

help(heatmap)
help(rep)

heatmap(dataMat)

help(rbinom)

set.seed(678910)
for(i in 1:40){

    # Flip coin
    flip = rbinom(1, size=1, prob=0.5)

    # Add pattern if flip is heads
    if(flip){
        dataMat[i, ] = dataMat[i, ] + rep(c(0, 3), each=5)
    }
}

image(1:10, 1:40, t(dataMat)[, nrow(dataMat):1])
heatmap(dataMat)


help(hclust)

hh = hclust(dist(dataMat))
dataMatOrdered = dataMat[hh$order,]
par(mfrow = c(1,3))

image(t(dataMatOrdered)[, nrow(dataMatOrdered):1])
plot(rowMeans(dataMatOrdered), 40:1, xlab="The Row Mean", ylab="Row", pch=19)
plot(colMeans(dataMatOrdered), xlab="Column", ylab="The Column Mean", pch=19)
