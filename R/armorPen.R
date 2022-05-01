#' @title Total Armor Penetration Calculator
#' @description Combines calculated values of flat armor reduction, % armor reduction, % armor penetration, and lethality into a single vector.It also checks to make sure inputted variables are valid.
#' @param flatRed Flat armor reduction. May be taken from already-known total.
#' @param pRed Total Percent armor reduction. May be taken from already-known total or calculated using pRedCalc.
#' @param pPen Total Percent armor penetration. May be taken from already-known total or calculated using pRedCalc.
#' @param leth Total Percent armor reduction. May be taken from already-known total or calculated using pRedCalc.
#' @return A vector containing three values.
#' First value returns a flat reduction amount which for damage calculations must be subtracted from theoretical armor amount.
#' Second value returns total percent armor Reduction input for purposes of organization.
#' Third value repeats second value purpose but for total percent Penetration.
#' @examples
#' armorPen(25,.12,.20,15)
#' @export

armorPen <- function(flatRed, pRed, pPen, leth){
  tFlat <- flatRed + leth
  totalPen <- c(tFlat, pRed, pPen)
  if(flatRed >= 0)
    if(leth >= 0)
      if(pRed >= 0 & pRed <= 1)
        if(pPen >= 0 & pPen <= 1)
          return(totalPen)
        else(stop("Invalid percent penetration value detected. Must be between 0 and 1."))
      else(stop("Invalid percent reduction value detected. Must be between 0 and 1."))
    else(stop("Invalid lethality value detected. Must be >= 0."))
  else(stop("Invalid flat armor reduction value detected. Must be >= 0."))


}
