vaccinationInfo <- function(){
  install.packages("coronavirus")
  install.packages(tidyverse)
  library(coronavirus)
  library(tidyverse)
  dataFile <- as.tibble(coronavirus::covid19_vaccine)
  return(dataFile)
}
