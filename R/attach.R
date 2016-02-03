#' Receive a welcome message
#'
#' Sends a message when the library is loaded

.onAttach <- function(devtools, ephsr) {
  packageStartupMessage("Welcome to the facultyephs package")
}

