complete <- function(directory,id=1:332){ 
  my_list <- list.files(directory, full.names=TRUE)[id]
  nobs <- vector()
  for (i in 1:length(id)){
    df <- read.csv(my_list[i]) 
    nobs[i] <- sum(complete.cases(df)) 
  }      
   data.frame(cbind(id,nobs))
} 
 

