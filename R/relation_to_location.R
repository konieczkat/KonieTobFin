#' Constructs a linear regression model between a vector and physical space
#'
#' @param data Data set of interest
#' @param var Variable to regress against physical space
#' @param lat Latitude
#' @param long Longitude
#'
#' @export
#'
relation_to_location <- function(data,var, lat, long){
  linReg <- lm(data$people_at_least_one_dose ~ lat:long, data = data)
  return(summary(linReg))
}
