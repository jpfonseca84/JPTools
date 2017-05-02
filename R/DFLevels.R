
dflevels <- function(data = NULL) {
      #' This function makes a list of all columns levels in a provided
      #' dataframe. For a specific column in a DF, you can easily subset it.
      if (is.null(data)) {
            stop("Please provide a data frame")
      }
      ncolumns <- length(names(data))
      answerlist <- list()

      #make a loop to evaluate each levels of each column
      for (i in 1:ncolumns) {
            nameofcolumn<-as.character(names(data[i]))
            answerlist[[i]]<- levels(as.factor(data[, i]))
      }
      names(answerlist)<-names(data)
      return(answerlist)
}
