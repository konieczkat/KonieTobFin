#' Parses only the relevant data from the dataset
#'
#' @import tidyverse
#' @import dplyr
#' @import tibble
#'
#' @examples
#' relevant_data <- relevise(data)
#'
#' @export

relevise <- function(data){
  newTibble <- data %>% select(continent_name, country_region, continent_code, doses_admin, people_at_least_one_dose, population, lat, long)
  return(newTibble)
}
