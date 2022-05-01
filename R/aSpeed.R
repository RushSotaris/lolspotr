#' @title Attack Speed Calculator
#' @description Function designed to calculate attack speed of a champion given certain bonuses.
#' @param ratio Base attack speed ratio of champion, is always equal to base attack speed.
#' @param modifier Attack speed modifier.
#' @param ... any further modifiers derived from skills or items.
#' @return A value indicating total attack speed (attacks per second).
#' @examples
#' aSpeed(.75,.25,.3,.25)
#' @export

aSpeed <- function (ratio, modifier, ...) {
  bSpeed <- ratio * (1.0 + modifier + sum(...))
  if(bSpeed > 0 & ratio > 0)
    if(bSpeed <= 2.5)
      return(bSpeed)
      else(stop("Invalid ratio or modifier. Total must not exceed 2.5"))
    else(stop("Invalid ratio or attack speed modifier inputs. Must be > 0."))
}
