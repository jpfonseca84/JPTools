colbyname <- function(colnames, df, action = "remove") {
      #'This function receives a list of column names and a data frame,
      #'it then removes or keeps from the df all columns in the list
      colposition<-match(colnames, names(df))

      if(any(is.na(colposition))){
            stop(paste("Column name at",
                       match(NA,colposition),
                       "is wrong"))
      }else if (action == "remove") {
            return(df[, -colposition])
      }
      if (action == "keep") {
            return(df[, colposition])
      }
}
