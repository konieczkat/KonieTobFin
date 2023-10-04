#' Returns all data for a specified Continent
#'
#' @import tidyverse
#' @import dplyr
#'
#' @param data The tibble from which the information will be filtered
#' @param country The country of interest
#'
#' @export

filter_by_country <- function(data, country){
  out <- data %>% filter(data$country_region == country)
  return(out)
}
