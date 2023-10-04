#' Finds the percentage of vaccinated people on a given day.
#' @import tidyverse
#' @import dplyr
#' @export

vax_percentage <- function(data){
  percentage <- (data$at_least_one_dose / data$population) * 100
  newData <- data %>% ungroup() %>% mutate(Percent_Vaxxed = percentage)
  return(newData)
}
