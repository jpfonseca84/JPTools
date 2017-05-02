Animate.persplot <- function(skip = 1, ...) {
      #This function allows the creation of a animated persp plot.
      for (i in seq(90, 20, by = -skip)) {
            persp(phi = i, theta = 0, ...)
      }
      for (i in seq(0, 360, by = skip)) {
            persp(pho = 20, theta = i, ...)
      }
}
