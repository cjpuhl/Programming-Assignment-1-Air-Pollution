## Write a function that reads a directory full of files 
## and reports the number of completely observed cases in each data file. 
## The function should return a data frame 
## where the first column is the name of the file 
## and the second column is the number of complete cases.


complete <- function (directory = "specdata", id){
        ##print(directory)
        files <- list.files(directory) ##al files in one vector
        ##adds data frame with total Nobs
        CompleteDF <- data.frame()
        for (i in id) {
                ## reads CSV File
                csvf <- read.csv(paste(directory, "/", files[i], sep = ""))
                ##creates data frame with complete rows
                nodes <- csvf[complete.cases(csvf), ]
                addrow <- data.frame(ID = i, Nobs = nrow(nodes))
                CompleteDF <- rbind(CompleteDF, addrow)
        }
        CompleteDF
}
