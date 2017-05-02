subsetbycollevels <- function(levelsvec, colname, df) {
      #'Receives a vector of variables to look for, the name of the column
      #'that the variables will be looked upon
      #'the df that will be searched

      #create the answer dataframe
      true.for.line <- NULL
      #Transform the selected column in a vector
      sel.column <- as.vector(colbyname(colname, df,"keep"))

      #Define if a cell i is listed in the desired column
      for(i in 1:length(sel.column)){
            for (j in 1:length(levelsvec)){
                  if(levelsvec[j] %in% sel.column[i]){
                        true.for.line[i]<-T
                  }
            }
      }
      return(df[true.for.line,])
}
