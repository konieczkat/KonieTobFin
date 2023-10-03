#' Returns a tibble that contains information on countries with at least one dose
library(tidyverse)
library(dplyr)

AtlOneDose <- function(tib){
  return(tib %>% filter(!(is.na(data$people_at_least_one_dose))))
}

