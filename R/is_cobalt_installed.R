#' See if COBALT is installed
#' @export
is_cobalt_installed <- function(
  cobalt_folder = file.path(rappdirs::user_data_dir(), "cobalt"),
  verbose = FALSE
) {
  result <- FALSE
  tryCatch({
    cobaltr::check_cobalt_installation()
    result <- TRUE
  }, error = function(e) {
      if (verbose) message(e$msg)
    }
  )
  result
}

