#' A function that does something
#' @export
vaccinationInfo <- function(){
  devtools::install_github("RamiKrispin/coronavirus")
  library(coronavirus)
  library(tidyverse)
  library(tibble)
  DataName <- as_tibble(coronavirus::covid19_vaccine)
  return(DataName)
}
