#' Returns all data for a specified Continent
#' @export
#'
#' @param data The tibble from which the information will be filtered
#'
#' @param scale The scale of the area of interest. "Continental" refers to Continents by name,
#' "Code refers to Continents by letter code, and "National" refers to Countries by name. Default
#' is Continental
#'
#' @param locality The Name of the area of interest
#'
#' @examples Africa_Data <-
#'
#' #


filterByRegion <- function(data, scale = "Continental", locality){
  library(tidyverse)
  library(dplyr)

  if (scale == "Continental"){
    out <- data %>% filter(data$continent_name == locality)
  }
  else if (scale == "Code"){
    out <- data %>% filter(data$continent_code == locality)
  }
  else{
    out <- data %>% filter(data$country_region == locality)
  }
  return(out)
}
