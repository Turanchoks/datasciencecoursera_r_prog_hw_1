source("getMonitorData.R")

corr <- function(directory, threshold = 0) {
  corr_vector <- vector()
  
  data = complete(directory)
  
  filtered_data <- subset(data, data$nobs > threshold)
  
  for( i in 1:nrow(filtered_data) ) {
    monitor_data <- if( filtered_data[i,]$id %in% 1:332)
                      getMonitorData(directory, filtered_data[i,]$id)
                    else
                      return(data.frame())
    corr_vector <- c(corr_vector, cor(monitor_data$nitrate, monitor_data$sulfate, use="complete.obs"))
  }
  corr_vector
}