countNA <- function(data = NULL) {
      #'Gives the percentual of NA values of each column ranked by percentual.
      #'For a specific Column simply use a subsetted df.
      if (is.null(data)) {
            stop("Please provide a data frame")
      }
      ncolumns <- length(names(data))
      observations <- nrow(data)
      answer <- NA
      for (i in 1:ncolumns) {
            answer[i] <- sum(is.na.data.frame(data[i])) / observations
            answer[i] <- round(answer[i], digits = 2)
      }
      names(answer) <- names(data)
      answer<-sort(answer,decreasing = T)
      return(answer)
}
