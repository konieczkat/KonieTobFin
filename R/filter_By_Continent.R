#' Returns all data for a specified Continent
#'
#' @import tidyverse
#' @import dplyr
#'
#' @param data The tibble from which the information will be filtered
#' @param country The continent of interest
#'
#' @export

filter_By_Continent<- function(data, country){
  out <- data %>% filter(data$continent_name == country)
  return(out)
}
