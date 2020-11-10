#' Documentation of general function arguments.
#' This function does nothing.
#' It is intended to inherit function argument documentation.
#' @param cobalt_folder the folder where COBALT is installed in.
#' Use \link{get_default_cobalt_folder} to get the default COBALT folder
#' @param fasta_filename name of a FASTA file
#' @param matrix_name name of the COBALT matrix.
#'   Use \link{get_matrix_names} to get a list of all possible matrix names
#' @param verbose if TRUE, additional information is displayed, that
#'   is potentially useful in debugging
#' @author Richèl J.C. Bilderbeek
#' @note This is an internal function, so it should be marked with
#'   \code{@export}. This is not done, as this will disallow all
#'   functions to find the documentation parameters
default_params_doc <- function(
  cobalt_folder,
  fasta_filename,
  matrix_name,
  verbose
) {
  # Nothing
}
