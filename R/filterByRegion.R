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


  if (!is.character(scale)){
    stop("Scale must be Continental, COuntry, or Code")
  }
  if(scale != "Continental" | scale != "Country" | scale != "Code"){
    stop("Scale must be Continental, Country, or Code")
  }
  if (!is.character(locality)){
    stop("locality must be valid character and not numeric")
  }
  if (scale == "Continental"){
    out <- data %>% dplyr:filter(data$continent_name == locality)
  }
  else if (scale == "Code"){
    out <- data$continent_code %>% filter(locality)
  }
  else{
    out <- data$country_region %>% filter(locality)
  }
  return(out)
}
