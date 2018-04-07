# get the predictors from a given model
# input:  model -- linear model
# output: None
# return: collections of predictors used in the linear model
access.predictor <- function(model) {

}

# write table to a csv file
# input:  data -- data frame
#         outFileName -- output csv file name 
# output: CSV file
# return: None
output.csv <- function(data, outFileName) {

}

# open the thread for writing to txt file
# input:  outFileName -- out txt file name 
# output: None
# return: None
output.txt_open <- function(outFileName) {
    sink(outFileName)
}

# close the thread of writing to txt file
# input:  None
# output: None
# return: None
output.txt_close <- function() {
    sink()
}

