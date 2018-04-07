# select columns (predictors) from data based the given index
# input:  data -- data frame
#         index -- collection of column indices
# output: None
# return: data frame with selected indices
data.byIndex <- function(data, index) {

}

# select columns (predictors) from data based the given predictor(s)
# input:  data -- data frame
#         predictor -- collection of predictor(s)
# output: None
# return: data frame with selected predictor(s)
data.byPredictor <- function(data, predictor) {

}

# randomly sample (size) number of entries from the data frame
# input:  data -- data frame
#         size -- targeted sample size
# output: None
# return: data frame with designated sample size
data.sample <- function(data, size) {

}

# add interactive terms into the original data frame
# input:  data -- data frame
#         interactiveTerm -- collection of interactiveTerms
#         deg -- highest degree of interaction, default 2
# output: None
# return: data frame with interactive terms added
data.interact <- function(data, interactiveTerm, deg=2) {

}

# import data from source file
# input:  fileName -- file name
#         fileType -- default csv file
#         header -- data with header
#         sep -- separator
# output: None
# return: data frame
data.import <- function(fileName, fileType='csv', header=TRUE, sep=',') {

}

# attach data2 to the right of data1 (data1 and data2 should have the same number of rows)
# input:  data1 -- first data frame
#         data2 -- second data frame
# output: None
# return: combined data frame
data.combine <- function(data1, data2) {

}
