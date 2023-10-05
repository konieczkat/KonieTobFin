#' Filters a tibble containing vaccination data between two dates. If the same date is used
#' for both parameters
#'
#' @import tidyverse
#' @import dplyr
#'
#' @param data A tibble containing relevant covid-19 vaccination information obtained from RamiKrispin's
#' coronavirus package.
#' @param past The earlier date in the specified range
#' @param future The later date in the specified range
#'
#' @export
#'
filter_by_date <- function(data, past, future){
  dateData <- data %>% filter(data$date >= as.Date(past) & data$date <= as.Date(future))
  return(dateData)
}
