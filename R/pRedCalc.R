#' @title Percent Reduction (Armor)
#' @description Calculates percent armor reduction based on two factors: champion's ability and Black Cleaver stacks.
#' @param champAbility Percent armor reduction based on a specific champion ability.
#' @param BC Number of stacks of black cleaver procs being used in calculation. Limit 6..
#' @return Total percentage of armor reduced for purposes of damage calculations.
#' @examples
#' pRedCalc(.25,6)
#' @export

pRedCalc <- function (champAbility, BC){
  if(BC >=  0 & BC < 7)
    if(champAbility >= 0 & champAbility <1)
      pRed <- 1-(1-champAbility)*(1-(BC*.05))
    else(stop("Invalid champion ability value. Must be >= 0 and < 1"))
  else(stop("Invalid BC stacks. Must be between 0 and 6."))
  #Checks to see if pRed <= 0, if so, % armor reduction is not calculated
  ifelse(pRed > 0, return(pRed), stop("Not Applicable"))
}
