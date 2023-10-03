#' Remove observations that do not contain vaccination data
#' @export
ObsWithData <- function(tib){
  return(tib %>% na.omit())
}
