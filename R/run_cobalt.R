#' Run COBALT
#'
#' Will stop if COBALT has an error.
#' @inheritParams default_params_doc
#' @return text of a FASTA file
#' @export
run_cobalt <- function(
  fasta_filename,
  cobalt_options = create_cobalt_options(),
  cobalt_folder = get_default_cobalt_folder(),
  verbose = FALSE
) {
  testthat::expect_true(file.exists(fasta_filename))
  testthat::expect_true(cobalt_options$score_matrix_name %in% get_matrix_names())
  cobaltr::check_cobalt_installation(cobalt_folder = cobalt_folder)
  cobalt_bin_filename <- file.path(cobalt_folder, "cobalt.linux")
  testthat::expect_true(file.exists(cobalt_bin_filename))
  testthat::expect_equal(0, unname(file.access(cobalt_bin_filename, 1)))


  testthat::expect_true(file.exists(cobalt_options$conserved_block_filename))
  testthat::expect_true(file.exists(cobalt_options$search_pattern_filename))
  testthat::expect_true(file.exists(cobalt_options$residue_frequencies_filename))
  cmds <- c(
    cobalt_bin_filename,
    "-db", cobalt_options$domain_database_filename,
    "-b", cobalt_options$conserved_block_filename,
    "-i", fasta_filename,
    "-p", cobalt_options$search_pattern_filename,
    "-f", cobalt_options$residue_frequencies_filename,
    "-matrix", cobalt_options$score_matrix_name,
    "-v", cobalt_options$verbose
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
  if (is.null(attributes(out))) return(out)
  if (attr(x = out, which = "status") == 3) {
    stop(
      "Error in 'run_cobalt'.\n",
      "COBALT error message: ", paste0(out, collapse = "\n"), "\n",
      "cmds: '", paste0(cmds, collapse = " "), "'.\n"

    )
  }
}
