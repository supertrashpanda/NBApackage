#' A Function
#'
#' This function returns the information about an NBA player and their performance in a particular season.
#' @param year an integer, which is the year of the season
#' @keywords yearView
#' @export
#' @examples
#' yearView(2000)



yearView<-function(yr){
  options(warn=-1)
  if(nrow(df[which(df$Year==yr),])==0){return(NULL)}
  else return(sample_n(df[which(df$Year==yr),],1))
}
