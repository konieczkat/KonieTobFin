#' Returns all vaccination data for a specified Country
#'
#' @import tidyverse
#' @import dplyr
#'
#' @param data A tibble containing relevant covid-19 vaccination information obtained from RamiKrispin's
#' coronavirus package.
#' @param country The country of interest in the vaccination Dataset
#'
#' @export

filter_by_country <- function(data, country){
  out <- data %>% filter(data$country_region == country)
  return(out)
}
