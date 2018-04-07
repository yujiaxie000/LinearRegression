source('util.R')

# data <- read.csv('data.csv', header=TRUE, sep=',')

# model1 = cor(data[0:12])
# corrplot(model1, method='number')
# plot(data[0:12], pch=20, col='blue')

data <- importData('data.csv')
data <- data.range(c(1,2,3,4,5,6,7,8,9), data)
data <- data.random(data, 20)
data
