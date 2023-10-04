#' Returns all data for a specified Continent
#'
#' @import tidyverse
#' @import dplyr
#'
#' @param data The tibble from which the information will be filtered
#' @param code The two letter code for a specified continent
#'
#' @export

filter_By_Code <- function(data, code){
  out <- data %>% filter(data$continent_code == code)
  return(out)
}
