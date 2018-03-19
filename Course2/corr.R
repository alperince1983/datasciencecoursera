corr <- function(directory, threshold =0){
  my_list <- list.files(directory, full.names=TRUE)
  for (i in 1:length(my_list)){
    df <- read.csv(my_list[i]) 
    df_clean <- df[complete.cases(df),] 
    criteria <- nrow(df_clean)
    if (threshold < criteria){
      x <- df_clean[,2]; y <- df_clean[,3]
      corres[i] <- cor(x,y)  
    } else {
      corres[i] <- 0
    } 
  }      
  corres[corres!=0]
}