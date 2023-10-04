#' Returns all data for a specified Continent
#'
#' @import tidyverse
#' @import dplyr
#'
#' @param data The tibble from which the information will be filtered
#' @param country The country of interest
#'
#' @export

filter_By_Country <- function(data, country){
  out <- data %>% filter(data$country_region == country)
  return(out)
}
