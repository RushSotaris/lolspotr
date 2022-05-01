#' @title Lethality Calculator
#' @description Function designed to calculate applied lethality of a champion based on total lethality gained according to the current level of a champion. As champion level increases, the ratio at which lethality translates to flat armor penetration also increases.
#' @param lethality base lethality given from item
#' @param level current level of champion being analyzed in scenario
#' @return Total lethality, to be used as part of armorPen() calculation.
#' @examples
#' lethCalc(30,16)
#' @export

lethCalc <- function(lethality, level){
  faPenLeth <- lethality * (0.6 + 0.4 * level / 18)
  #Does a check to ensure valid lethality and level inputs and returns an error message if invalid
  ifelse(lethality > 0 & level > 0  & level < 19, return(faPenLeth), stop("Error: Invalid level or lethality"))
}
