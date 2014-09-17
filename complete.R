source("getMonitorData.R")

complete <- function(directory, id = 1:332) {
  
  nobs <- vector()
  
  for ( i in id )
    nobs <- c(nobs, nrow(na.omit(getMonitorData(directory, i))))   
  
  data.frame( id = id, nobs = nobs)
}