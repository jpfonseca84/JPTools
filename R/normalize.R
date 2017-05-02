normalize<-function(datavec){
      # This Function receives a vector and allows you to normalize it.
      lo<-min(datavec,na.rm=TRUE)
      up<-max(datavec,na.rm=TRUE)
      datanorm<-(datavec-lo)/(up-lo)
      return(datanorm)
}
