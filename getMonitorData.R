getMonitorData <- function(directory, id) {
  stopifnot(id %in% 1:332)
  
  if( nchar(id) == 1 )
    data <- read.csv( file.path( directory, paste('00', id, '.csv', sep="")) )
  else if( nchar(id) == 2 )
    data <- read.csv( file.path( directory, paste('0', id, '.csv', sep="")) )
  else if( nchar(id) == 3 )
    data <- read.csv( file.path( directory, paste(id, '.csv', sep="")) )
  else
    data <- data.frame
  
  data
}