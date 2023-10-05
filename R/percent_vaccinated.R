#' Adds the percentage of vaccinated people to a tibble containing vaccination data.
#'
#' @import tidyverse
#' @import dplyr
#'
#' @param data A tibble containing relevant covid-19 vaccination information obtained from RamiKrispin's
#' coronavirus package.
#'
#' @export
#'
percent_vaccinated <- function(data){
  data <- data %>% mutate(Percent_Vaccinated = 100*data$people_at_least_one_dose/data$population)
  return(data)
}
