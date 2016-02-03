#' Find the oldest person
#'
#' Takes in a catalog dataset full of Williams faculty members and finds the oldest person
#' @param x A parsed Williams faculty dataset to be searched through
#' @return The name of the oldest faculty member
#' @export


oldest <- function(x) {
  return(levels(droplevels(
    x[which.max(x$Age),1])
  )
  )
}
