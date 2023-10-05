#' Removes columns deemed unnecessary in vaccine dataset. Keeps the date, Continent,
#' Country, Total Doses Administered, Number of People with at Least One Dose,
#' Total Population, Latitude, and Longitude.
#'
#' @import tidyverse
#' @import dplyr
#' @import tibble
#'
#' @param data A tibble containing relevant covid-19 vaccination information obtained from RamiKrispin's
#' coronavirus package.
#'
#' @export

relevise <- function(data){
  newTibble <- data %>% select(date, continent_name, country_region, doses_admin, people_at_least_one_dose, population, lat, long)
  return(newTibble)
}

