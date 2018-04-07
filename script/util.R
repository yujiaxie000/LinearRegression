library(corrplot)
'''
import data from csv file
input:  fileName -- csv file name 
        header -- default TRUE
        sep -- separator, default comma
output: data frame object
'''
importData <- function(fileName, header=TRUE, sep=',') {
    data <- read.csv(fileName, header=header, sep=sep)
    return(data)
}

'''
select columns from data frame (select predictors)
input:  rangeCollection -- collection of column indices
        data -- data frame
output: data frame with selected range
'''
data.range <- function(rangeCollection, data) {
    return(data[,rangeCollection])
}

'''
random sampling from data frame
input:  data -- data frame
        size -- sample size
output: data frame with designated sample size
'''
data.random <- function(data, size) {
    return(data[sample(nrow(data), 30), ])
}

'''
plot the regression matrix plot of the data frame
input:  data -- data frame
output: None -- matrix plot
'''
analysis.matrixPlot <- function(data) {

}