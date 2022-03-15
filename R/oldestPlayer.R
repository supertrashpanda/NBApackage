#' A Function
#'
#' This function returns the name of oldest NBA player in a particular season.
#' @param year an integer, which is the year of the season
#' @keywords oldestPlayer
#' @export
#' @examples
#' oldestPlayer(2000)

oldestPlayer<- function(yr) {
  options(warn=-1)
  reshaped<-df[which(df$Year==yr),]%>%arrange(-Age)%>%select(Player)
  if (nrow(reshaped)==0) {return(NULL)}
  else return(reshaped[[1,1]])
}

