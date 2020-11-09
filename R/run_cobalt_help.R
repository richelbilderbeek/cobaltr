#' Show the COBALT help page
#' @export
run_cobalt_help <- function(
  cobalt_folder = file.path(rappdirs::user_data_dir(), "cobalt")
) {
  cobalt_bin_filename <- file.path(cobalt_folder, "cobalt.linux")
  testthat::expect_true(file.exists(cobalt_bin_filename))
  testthat::expect_equal(0, unname(file.access(cobalt_bin_filename, 1)))
  cmds <- c(cobalt_bin_filename, "-help")
  system2(command = cmds[1], args = cmds[-1], stdout = TRUE, stderr = TRUE)
}
