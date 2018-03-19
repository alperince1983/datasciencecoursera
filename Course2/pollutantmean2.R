pollutantmean2<-function(directory,pollutant,id=1:332){
  
  my_list <- list.files(path = directory, pattern = "csv$")
  sumsulfatetot <- 0; sumnitratetot <- 0
  first <- id[1]; last <- id[length(id)]
  for (i in first:last){
    df <- read.csv(my_list[i])
    df_clean <- df[complete.cases(df),]
    if (pollutant=="sulfate"){
      sumsulfate <- mean(df_clean[,2]) 
      sumsulfatetot <- sumsulfate+sumsulfatetot
    }
    if (pollutant=="nitrate"){
      sumnitrate <- mean(df_clean[,3]) 
      sumnitratetot <- sumnitrate+sumnitratetot
    } 
    
  }
 
  if (pollutant=="sulfate"){
    print(sumsulfatetot/length(id))
  }
  if (pollutant=="nitrate"){
    print(sumnitratetot/length(id))
  } 
  
}