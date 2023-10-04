#' a function that adds the percent of vaccinated people based on people with at least one dose
#'
#' @import tidyverse
#' @import dplyr
#'
#' @export
#'
percent_vaccinated <- function(data){
  data <- data %>% mutate(Percent_Vaccinated = 100*data$people_at_least_one_dose/data$population)
  return(data)
}
