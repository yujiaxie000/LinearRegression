# plot the matrix plot of data frame into a PDF file 
# input:  data -- data frame
#         outFileName -- output PDF name
# output: PDF
# return: None
vis.matrixPlot <- function(data, outFileName) {

}

# plot the p-value of pair-wise t-test into a PDF file
# input:  data -- data frame
#         pValue -- p value matrix
#         outFileName -- output PDF name
# output: PDF
# return: None
vis.matrixPValue <- function(data, pValue, outFileName, alpha=0.1) {

}

# plot the result from best subset selection into a PDF file
#   including 1) size vs. cp; 2) size vs. r_adj; 3) size vs. rss; 4) predicor vs. r2
# input:  model -- linear model
#         outFileName -- output PDF name 
# output: PDF
# return: None
vis.bestSubset <- function(model, outFileName) {

}

# plot residual analysis plots
#     including 1) qq norm; 2) residual vs. fitted value; 3) histogram; 4) observed order vs. residual
# input:  model -- linear model
#         outFileName -- output PDF name
# output: PDF
# return: None
vis.residualAnalysis <- function(model, outFileName) {

}