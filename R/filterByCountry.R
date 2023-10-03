#' Returns all data for a specified Continent
#' @export
#'
#' @param data The tibble from which the information will be filtered

#' @param country The country of interest
#'

filterByCountry <- function(data, country){
  library(tidyverse)
  library(dplyr)
  out <- data %>% filter(data$country_region == country)
  return(out)
}
