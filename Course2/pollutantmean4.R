pollutantmean4<-function(directory,pollutant,id=1:332){
   my_list <- list.files(path = directory, pattern = "csv$")
   meansulfatetot <- 0
   meannitratetot <- 0
   last <- id[length(id)]
   for (i in 1:last){
        df <- read.csv(my_list[i])
        df2 <- df[complete.cases(df),]
        if (pollutant=="sulfate"){
          meansulfate <- mean(df2[,2])
          meansulfatetot <- meansulfate+meansulfatetot
        }
        if (pollutant=="nitrate"){
          meannitrate <- mean(df2[,3])
          meannitratetot <- meannitrate+meannitratetot
        } 
   }
   print(meansulfatetot/last)
   print(meannitratetot/last)
   
}
   