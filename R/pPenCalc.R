#' @title Percent Penetration (Armor)
#' @description Calculates percent armor penetration through multiplicative stacking.
#' @param pPen1 First source of percent penetration.
#' @param ... Further sources of percent penetration.
#' @return A ratio, which multiplied by total armor value would return theoretically decreased armor value for purposes of damage calculation.
#' @examples
#' pPenCalc(.25,.12,.5)
#' @export

pPenCalc <- function (pPen1, ...){
    perPen <- (1 - pPen1) * (1 - sum(...))
    if(perPen >= 0) {
      return(perPen)
    }
    else(stop("Invalid percent penetration. Must be > 0."))
}
