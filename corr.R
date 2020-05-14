## Write a function that takes a directory of data files 
## and a threshold for complete cases and calculates 
## the correlation between sulfate and nitrate 
## for monitor locations where the number of completely observed cases 
## (on all variables) is greater than the threshold. 
## The function should return a vector of correlations 
## for the monitors that meet the threshold requirement. 
## If no monitors meet the threshold requirement, 
## then the function should return a numeric vector of length 0.

corr <- function (directory = "specdata", threshold = 0){
        files <- list.files(directory) ##al files in one vector
        pollutantNoNA <- data.frame()
        correlations <- numeric()
        for (i in seq_along(files)) {
                ## reads CSV File
                csvf <- read.csv(paste(directory, "/", files[i], sep = ""))
                
                pollutantNoNA <- csvf[complete.cases(csvf), ]
                
                if(nrow(pollutantNoNA) >= threshold){
                        addcor <- 
                        cor(pollutantNoNA[, 2], pollutantNoNA[, 3])
                        correlations <- c(correlations, addcor)
                }
        }
        correlations  
}