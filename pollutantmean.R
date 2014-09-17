source("getMonitorData.R")

pollutantmean <- function(directory, pollutant, id = 1:332) {
  
  total_data <- vector()
  
  for ( i in id )
    total_data <- c(total_data, getMonitorData(directory, i)[[pollutant]])    
  
  mean(total_data, na.rm=TRUE)
}