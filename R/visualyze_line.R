#' Constructs a trend line of selected vaccination data over time.
#'
#' @import tidyverse
#' @import ggplot2
#' @import dplyr
#'
#' @param data A tibble containing relevant covid-19 vaccination information obtained from RamiKrispin's
#' coronavirus package.
#' @param interest A vector of information to be plotted against time
#' @param dateBreaks Specifies the data breaks in the x-axis
#' @param dateLabels Specifies the data Labels in the x-axis
#'
#' @export
#'
visualyze_line <- function(data, interest, dateBreaks = waiver(), dateLabels = waiver()){
  aPlot <- ggplot(data, aes(x = date, y = interest)) +
    geom_line() +
    labs(y = "Vaccination Data", x = "Date") +
    ggtitle("Vaccination Trends") + scale_x_date(date_breaks = dateBreaks, date_labels = dateLabels)
  return(aPlot)
}
