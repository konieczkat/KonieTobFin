#' Filters a tibble between two dates
#'
#' @import tidyverse
#' @import dplyr
#'
#' @export
#'
filter_by_date <- function(data, past, future){
  dateData <- data %>% filter(data$date > as.Date(past) & data$date < as.Date(future))
  return(dateData)
}
