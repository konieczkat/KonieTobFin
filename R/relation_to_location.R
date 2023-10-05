#' Constructs a linear regression model between a specified vaccination variable
#' and a country's latitude/longitude
#'
#' @param data Data set of interest
#' @param var Variable to regress against physical space
#' @param lat Latitude
#' @param long Longitude
#'
#' @export

relation_to_location <- function(data,var, lat, long){
  linReg <- lm(var ~ lat + long + lat:long, data = data)
  return(summary(linReg))
}
