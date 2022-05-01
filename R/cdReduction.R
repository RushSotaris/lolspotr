#' @title Cool down Reduction
#' @description Calculates total cool down reduction of abilities given by the haste item stat.
#' @param haste1 first haste stat provided by item, mastery, champion ability, etc.
#' @param ... Any further additional haste bonuses.
#' @return Total percent cool down reduction.
#' @examples
#' cdReduction(20,12,15)
#' @export

cdReduction <- function(haste1, ...){
  tHaste <- haste1 + sum(...)
  if(tHaste <= 500 & tHaste >= 0)
    return(tHaste/(tHaste + 100) * 100)
  else(stop("Invalid total haste. Valid range: 0-500."))
}

