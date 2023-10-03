#' A function that does something
#' @export
#'
vaccinationInfo <- function(){
  library(tidyverse)
  library(tibble)
  devtools::install_github("RamiKrispin/coronavirus")
  DataName <- as_tibble(coronavirus::covid19_vaccine)
  return(DataName)
}
