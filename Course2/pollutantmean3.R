pollutantmean3 <- function(directory,pollutant,id=1:332){
  my_list <- list.files(path = directory, pattern = "csv$")
  first <- id[1]; last <- id[length(id)] 
  sulsum <- 0; nitsum <- 0;sulcnt <- 0; nitcnt <- 0
  for (i in first:last){
      df <- read.csv(my_list[i]) 
      df_clean <- df[complete.cases(df),]
      sulsum <- sum(df_clean[,2])+sulsum; sulcnt <- nrow(df_clean)+sulcnt; sulmean<-sulsum/sulcnt
      nitsum <- sum(df_clean[,3])+nitsum; nitcnt <- nrow(df_clean)+nitcnt; nitmean<-nitsum/nitcnt
    } 
  if (pollutant=="sulfate"){print(sulmean)}
  if (pollutant=="nitrate"){print(nitmean)}
}