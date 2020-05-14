## Write a function named 'pollutantmean' 
## that calculates the mean of a pollutant (sulfate or nitrate)
## across a specified list of monitors. 
## The function 'pollutantmean' takes three arguments: 
## 'directory', 'pollutant', and 'id'. 
## Given a vector monitor ID numbers, 
## 'pollutantmean' reads that monitors' 
## particulate matter data from the directory specified 
## in the 'directory' argument and returns the mean
## of the pollutant across all of the monitors, 
## ignoring any missing values coded as NA.

pollutantmean <- function (directory = "specdata", pollutant, id = 1:332){
        files <- list.files(directory) ##al files in one vector
        pollutantNoNA <- as.numeric()
        for (i in id) {
                csvf <-read.csv(paste(directory, "/", files[i], sep = ""))
                pollutantNoNA <- c(pollutantNoNA, na.omit(csvf[, pollutant],))
        }
        mean(pollutantNoNA)
}
