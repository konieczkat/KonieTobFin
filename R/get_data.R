#' Installs and loads the covid vaccine dataset from the RamiKrispin's package "coronavirus"
#'
#' @import tidyverse
#' @import tibble
#'
#' @examples
#' # data <- getData()
#' # head(data)
#'
#' @export

get_data <- function(){
  devtools::install_github("RamiKrispin/coronavirus")
  DataName <- as_tibble(coronavirus::covid19_vaccine)
  return(DataName)
}
