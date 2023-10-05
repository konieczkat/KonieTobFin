#' Returns all vaccination data for a specified Continent
#'
#' @import tidyverse
#' @import dplyr
#'
#' @param data A tibble containing relevant covid-19 vaccination information obtained from RamiKrispin's
#' coronavirus package.
#' @param country The continent of interest in the vaccination dataset
#'
#' @export

filter_by_continent<- function(data, country){
  out <- data %>% filter(data$continent_name == country)
  return(out)
}
