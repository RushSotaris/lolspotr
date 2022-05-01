#' @title Movement Speed Calculator
#' @description Function designed to calculate attack speed of a champion given certain bonuses.
#' @param base base attack speed ratio of champion, is always equal to base attack speed.
#' @param fmodifier Flat movement speed modifier.
#' @param pmodifier Percentage-based movement speed modifier.
#' @param ... Any further percentage-based modifiers derived from skills or items.
#' @return A value indicating total movement speed of a given champion with current modifiers.
#' @examples
#' mSpeed(325, 45, .07, .07)
#' @export

mSpeed <- function (base, fmodifier, pmodifier, ...) {
  movementSpeed <- fmodifier + base*(1.0 + pmodifier + ...)
  if(movementSpeed > 0 & base > 0)
    return(movementSpeed)
    else(stop("Error: Invalid base movement speed or modifier inputs. Base and total must be > 0."))
}
