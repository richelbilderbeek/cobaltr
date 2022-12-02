#' Show the COBALT help page
#' @inheritParams default_params_doc
#' @export
run_cobalt_help <- function(
  cobalt_folder = get_default_cobalt_folder()
) {
  cobalt_bin_filename <- file.path(cobalt_folder, "cobalt.linux")
  testthat::expect_true(file.exists(cobalt_bin_filename))
  testthat::expect_equal(0, unname(file.access(cobalt_bin_filename, 1)))
  cmds <- c(cobalt_bin_filename, "-help")
  system2(
    command = normalizePath(cmds[1], mustWork = TRUE),
    args = cmds[-1],
    stdout = TRUE,
    stderr = TRUE
  )
}
