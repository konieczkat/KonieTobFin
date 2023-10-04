#' Finds the percentage of vaccinated people on a given day.
#'
#' @export
#'
vax_percentage <- function(data){
  return(data$Percent_Vax <- (data$people_at_least_one_dose / data$population)*100)
}
