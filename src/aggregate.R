
# detecting multicollinarity by 1) matrix plot; 2) pair-wise p value 3) VIF
# input:  data -- data frame
#         outFileName -- output file name
# output: PDF plot for 1) matrix plot; 2) pair-wise p value
#         CSV table for pair-wise p value
# return: None
agg.multicol <- function(data, outFileName) {

}

# perform all three screening methods: 1) stepwise regression; 2) backward elimination; 3) best subset selection
# input:  data -- data frame
#         outFileName -- output file name
# output: PDF plot for best subset selection
#         TXT file for all outputs in separate files
# return: None
agg.modelSelect <- function(data, outFileName) {

}

# compare two models (partial F-test)
# input:  model1 -- the first model 
#         model2 -- the second model 
#         outFileName -- output file name
# output: TXT file with comparison result
# return: None
agg.modelCompare <- function(model1, model2, outFileName) {

}

# update the model with its data
# input:  outFileName
agg.modelUpdate <- function(outFileName) {

}

agg.modelAssumption <- function() {
    
}