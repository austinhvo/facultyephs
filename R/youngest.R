#' Find the youngest person
#'
#' Takes in a catalog dataset full of Williams faculty members and finds the youngest person
#' @param x A parsed Williams faculty dataset to be searched through
#' @return The name of the youngest faculty member
#' @export
#'
youngest <- function(x) {
  return(levels(droplevels(
    x[which.min(x$Age),1])
    )
  )
}



