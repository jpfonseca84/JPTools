plot3dlines <- function(xvec,yvec,zvec,
                        colvec=NULL,
                        icolor = topo.colors(50),
                        breaknum = 50,
                        ...) {
      #'receives 4 vectors of data and a color object to return a 3d interactive
      #'plot with lines. requires package "rgl".
      #'As is, the function works better with the collor.
      if (!is.null(colvec)) {
            cutcol <- cut(colvec,
                          breaks = breaknum,
                          include.lowest = T)
            xfromto <- rep(xvec, each = 2)
            yfromto <- rep(yvec, each = 2)
            zfromto <- rep(min(zvec), length.out = length(yfromto))
            zfromto[seq(2, length(zfromto), by = 2)] <- zvec
            plot3d(
                  x = xvec,
                  y = yvec,
                  z = zvec,
                  col = icolor[cutcol],
                  ...
            )
            segments3d(
                  x = xfromto,
                  y = yfromto,
                  z = zfromto,
                  col = rep(icolor[cutcol], each = 2)
            )
      } else {
            xfromto <- rep(xvec, each = 2)
            yfromto <- rep(yvec, each = 2)
            zfromto <- rep(min(zvec), length.out = length(yfromto))
            zfromto[seq(2, length(zfromto), by = 2)] <- zvec
            plot3d(x = xvec,
                   y = yvec,
                   z = zvec,
                   ...)
            segments3d(x = xfromto,
                       y = yfromto,
                       z = zfromto)
            return("plot avaiable")
      }
}
