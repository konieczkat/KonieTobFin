#' Constructs a bar plot of vaccination information from a data set
#'
#' @import tidyverse
#' @import ggplot2
#' @import dplyr
#'
visualyze <- function(data){
  aPlot <- ggplot(data, aes(x = data$date, y = data$people_at_least_one_dose)) +
    geom_line() +
    labs(y = "People with at Least One Dose", x = "Date") +
    ggtitle("Vaccination Trend") + scale_x_date(date_breaks = "1 month", date_labels = "%b %Y")
  return(aPlot)
}
