#' Run COBALT
#'
#' Will stop if COBALT has an error.
#' @inheritParams default_params_doc
#' @return text of a FASTA file
#' @export
run_cobalt <- function(
  fasta_filename,
  matrix_name = "BLOSUM62",
  cobalt_folder = get_default_cobalt_folder(),
  verbose = FALSE
) {
  testthat::expect_true(file.exists(fasta_filename))
  testthat::expect_true(matrix_name %in% get_matrix_names())
  cobaltr::check_cobalt_installation(cobalt_folder = cobalt_folder)
  cobalt_bin_filename <- file.path(cobalt_folder, "cobalt.linux")
  testthat::expect_true(file.exists(cobalt_bin_filename))
  testthat::expect_equal(0, unname(file.access(cobalt_bin_filename, 1)))
  cobalt_cdd_filename <- file.path(cobalt_folder, "cdd")
  cobalt_cdd_blocksfilename <- file.path(cobalt_folder, "cdd.blocks")
  cobalt_patterns_filename <- file.path(cobalt_folder, "patterns")
  cobalt_cdd_freq_filename <- file.path(cobalt_folder, "cdd.freq")
  testthat::expect_true(file.exists(cobalt_cdd_blocksfilename))
  testthat::expect_true(file.exists(cobalt_patterns_filename))
  testthat::expect_true(file.exists(cobalt_cdd_freq_filename))
  cmds <- c(
    cobalt_bin_filename,
    "-db", cobalt_cdd_filename,
    "-b", cobalt_cdd_blocksfilename,
    "-i", fasta_filename,
    "-p", cobalt_patterns_filename,
    "-f", cobalt_cdd_freq_filename,
    "-matrix", matrix_name
  )
  if (verbose) message("Running cmds: ", paste0(cmds, collapse = " "))
  suppressWarnings({
    out <- system2(
      command = cmds[1],
      args = cmds[-1],
      stdout = TRUE,
      stderr = TRUE
    )
  })
  if (attr(x = out, which = "status") == 3) {
    stop(
      "Error in 'run_cobalt'.\n",
      "COBALT error message: ", paste0(out, collapse = "\n"), "\n",
      "cmds: '", paste0(cmds, collapse = " "), "'.\n"

    )
  }
}
