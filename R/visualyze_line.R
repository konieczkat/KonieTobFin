#' Constructs a trend line of vaccination rates over time
#'
#' @import tidyverse
#' @import ggplot2
#' @import dplyr
#'
#' @param data The tibble from which the plot will be constructed
#' @param dateBreaks Specifies the data breaks in the x-axis
#' @param dateLabels Specifies the data Labels in the x-axis
#'
#' @export
#'
visualyze_line <- function(data, dateBreaks = waiver(), dateLabels = waiver()){
  aPlot <- ggplot(data, aes(x = date, y = people_at_least_one_dose)) +
    geom_line() +
    labs(y = "People with One or More Doses", x = "Date") +
    ggtitle("Vaccination Trend") + scale_x_date(date_breaks = dateBreaks, date_labels = dateLabels)
  return(aPlot)
}
