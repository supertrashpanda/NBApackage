#' A Function
#'
#' This function takes an individual year as input, and output a correlation matrix for all numeric variables in the NBA data for that year.
#' @param year an integer, which is the year
#' @keywords corrNumerics
#' @export
#' @examples
#' corrNumerics(2000)


corrNumerics<- function(yr) {
  options(warn=-1)
  nums<-keep(df[which(df$Year==yr),-1],is.numeric)
  if (nrow(nums)==0) {return(NULL)}
  else {cov_mat<-cor(nums,use = "complete.obs")
  return(cov_mat)}
}