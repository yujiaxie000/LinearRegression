source('util.R')

# data <- read.csv('data.csv', header=TRUE, sep=',')

# model1 = cor(data[0:12])
# corrplot(model1, method='number')
# plot(data[0:12], pch=20, col='blue')

data <- importData('../data/data.csv')
#analysis.matrixPlot(data, 'MatrixPlot.pdf')
a <- reg.stepwise(data)

newData <- data.predictors(data, c(c('Y'),access.predictor(a)))
b <- reg.all(data)
a <- reg.all(newData)

analysis.VIF(a)
analysis.VIF(b)