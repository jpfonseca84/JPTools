removeNAColumns <- function(df,
                            threshold = 1,
                            savelistnames = F){
      #'receives a DF and remove automatically from it all columns 'that reach
      #'a specified percentual of NA per column

      colToRemove <- countNA(df)[countNA(df) >= threshold]
      colToRemove.num <- match(names(colToRemove), names(df))

      tempframe <- df[, -colToRemove.num]

      if (savelistnames) {
            columnsremoved <<- colToRemove
      }
      return(tempframe)
}
