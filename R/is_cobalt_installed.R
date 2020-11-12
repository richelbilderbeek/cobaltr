#' See if COBALT is installed
#' @inheritParams default_params_doc
#' @export
is_cobalt_installed <- function(
  cobalt_folder = get_default_cobalt_folder(),
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
