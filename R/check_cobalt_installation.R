#' Check that COBALT is installed
#'
#' Check that COBALT is installed, give a helpful error message if not
#' @inheritParams default_params_doc
#' @export
check_cobalt_installation <- function(
  cobalt_folder = get_default_cobalt_folder()
) {
  for (filename in get_cobalt_filenames()) {
    if (!file.exists(file.path(cobalt_folder, filename))) {
      stop(
        "File '", filename, "' not found ",
        "in COBALT folder '", cobalt_folder, "'.\n ",
        "Tip: run 'cobaltr::install_cobalt()' to install COBALT"
      )
    }
  }
  cobalt_bin_filename <- file.path(cobalt_folder, "cobalt.linux")
  testthat::expect_true(file.exists(cobalt_bin_filename))
  testthat::expect_equal(0, unname(file.access(cobalt_bin_filename, 1)))
}
