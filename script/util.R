library(corrplot)
library(MASS)
library(leaps)
library(car)

# import data from csv file
# input:  fileName -- csv file name 
#         header -- default TRUE
#         sep -- separator, default comma
# output: data frame object
importData <- function(fileName, header=TRUE, sep=",") {
    data <- read.csv(fileName, header=header, sep=sep)
    return(data)
}


# select columns from data frame (select predictors)
# input:  rangeCollection -- collection of column indices
#         data -- data frame
# output: data frame with selected range

data.range <- function(rangeCollection, data) {
    return(data[,rangeCollection])
}

data.predictors <- function(data, predictors) {
    return(data[,which(names(data) %in% predictors)])
}

# random sampling from data frame
# input:  data -- data frame
#         size -- sample size
# output: data frame with designated sample size

data.random <- function(data, size) {
    return(data[sample(nrow(data), 30), ])
}

data.interaction <- function(data, interactPredictors, deg=2) {

}

# plot the regression matrix plot of the data frame
# input:  data -- data frame
# output: None -- matrix plot
analysis.matrixPlot <- function(data, outPDFName) {
    size= 2*ncol(data)
    pdf(outPDFName, width=size, height=size)
    plot(data, pch= ".", col='blue')
    dev.off()
}

analysis.matrixPValue <- function(data) {
    dataMatrix <- as.matrix(data)
    n <- ncol(dataMatrix)
    p_matrix <- matrix(NA, n, n)
    diag(p_matrix) <- 0
    for (i in 1:(n-1)) {
        for (j in (i+1):n) {
            temp <- cor.test(dataMatrix[,i], dataMatrix[,j])
            p_matrix[i,j] <- p_matrix[j,i] <- temp$p.value
        }
    }
    colnames(p_matrix) <- rownames(p_matrix) <- colnames(dataMatrix)
    return(p_matrix)
}

analysis.VIF <- function(model) {
    temp <- model.matrix(model)[,-1]
    print(alias(model))

    R21 <- summary(lm(temp[,1]~temp[,-1]))
    R21 <- R21$r.squared
    print(R21)
    print(vif(model))
}

vis.matrixPValue <- function(data, pValue, outPDFName, alpha=0.1) {
    size = ncol(data) * 0.6
    pdf(outPDFName, width=size, height=size) 
    D <- cor(data)

    col <- colorRampPalette(c("#BB4444", "#EE9988", "#FFFFFF", "#77AADD", "#4477AA"))
    corrplot(D, type='upper', method='color', col=col(200), addCoef.col='black', tl.srt=45, insig='blank', diag=FALSE, p.mat=pValue, sig.level=alpha)
}

vis.bestSub <- function(model, outPDFName) {
    summary <- summary(model)
    r_adj <- unlist(summary[4])
    cp <- unlist(summary[5])
    rss <- unlist(summary[3])
    pdf(outPDFName, height=10, width=10)
    par(mfrow=c(2,2))
    plot(c(1:length(cp)), cp, pch=15, main='Size vs. CP', xlab='size', ylab='CP')
    plot(c(1:length(r_adj)), r_adj, pch=15, main='Size vs. R_Adjusted', xlab='size', ylab='R_Adj')
    plot(c(1:length(rss)), rss, pch=15, main='Size vs. Residual Sum of Squares', xlab='size', ylab='Residual Sum of Squares')
    plot(model, scale='r2', , main='Predictor vs. R2', xlab='Predictor', ylab='R2')
}

reg.all <- function(data) {
    model <- lm(Y~., data=data)
    return(model)
}

reg.stepwise <- function(data, alpha=0.1) {
    model_base <- lm(Y~1, data=data)
    model_full <- lm(Y~., data=data)
    model.step <- step(model_base, alpha.fixed=alpha, direction='both', scope=list(lower=model_base, upper=model_full))
    return(model.step)
}

reg.backward <- function(data, alpha=0.1) {
    model <- lm(Y~., data=data)
    model.step <- step(model, alpha.fixed=alpha)
    return(model.step)
}

reg.bestSub <- function(data) {
    subset <- regsubsets(Y~., data=data, nbest=2, method='exhaustive', really.big=TRUE)
    return(subset)
}

access.predictor <- function(model) {
    temp <- c(names(model$coefficients))
    return(temp[2:length(temp)])
}

output.csv <- function(data, outCSVName) {
    write.csv(as.matrix(data), file=outCSVName)
}