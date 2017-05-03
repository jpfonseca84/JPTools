#'This simple function receives a vector of ZIP codes of any length and
#'it returns a df with zip, latitude and longitude.

findUSLatLon <- function(qzip = NULL) {
      if (is.null(qzip)) {
            stop("Please provide a zip vector")
      }
      #opening package with zipcodes and Lat/Long
      require("zipcode")
      data("zipcode")

      #preparing the answer
      nzip <- length(qzip)
      answer <- data.frame()
      for (i in 1:nzip) {
            tempset <- subset(zipcode, subset = zipcode$zip == qzip[i])
            answer[i, 1] <- tempset$zip
            answer[i, 2] <- tempset$latitude
            answer[i, 3] <- tempset$longitude
      }
      names(answer) <- c("zip", "Lat", "Lon") #rename columns
      return(answer)
}
