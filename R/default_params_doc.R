#' Documentation of general function arguments.
#' This function does nothing.
#' It is intended to inherit function argument documentation.
#' @param cobalt_folder the folder where COBALT is installed in.
#' Use \link{get_default_cobalt_folder} to get the default COBALT folder
#' @param cobalt_options a set of COBALT options,
#'   as can be created by \link{create_cobalt_options}
#' @param conserved_domain_threshold the threshold of the E-value
#' for selecting conserved domains.
#'  The COBALT \code{-evalue} flag
#' @param conservation_score_threshold the minimum average score needed
#'   for a multiple alignment column to be considered as conserved.
#'   The COBALT \code{-ccc} flag
#' @param conserved_block_filename filename containing conserved blocks,
#'   the COBALT \code{-b} option
#' @param dfb_added_weight the amount of extra weight (0..1)
#'  to give the actual sequence letter at that position,
#   when assigning domain residue frequencies
#'   The COBALT \code{-dfb} flag
#' @param destination_filename filename for destination text seqalign
#'   the COBALT \code{-seqalign} option
#' @param do_dry_run Do a dry run, that is, only test all preconditions
#'   The COBALT \code{-dryrun} flag
#' @param domain_database_filename  domain database filename,
#'   the COBALT \code{-db} option
#' @param fasta_filename name of a FASTA file
#' @param ffb_added_weight the amount of extra weight
#'   (0..1) to give the actual sequence letter at that position
#'   when assigning filler residue frequencies.
#'   The COBALT \code{-ffb} flag
#' @param filler_threshold the threshold of the E-value
#'   for aligning filler segments.
#' The COBALT \code{-evalue2} flag
#' @param middle_extend_gap_penalty
#'   The COBALT \code{-e1} flag
#' @param no_rps do not perform initial RPS blast search
#'   The COBALT \code{-norps} flag
#' @param open_gap_in_middle_penalty
#'   The COBALT \code{-g1} flag
#' @param pairwise_alignment_constraints_filename name of the file
#'   containing pairwise alignment constraints, one per line,
#'   each of the following form:
#'   \code{seq1_idx seq1_start seq1_end seq2_idx seq2_start seq2_end}.
#'  The COBALT \code{-c} flag
#' @param pseudocount_constant the pseudocount constant
#'   The COBALT \code{-pseudo} flag
#' @param residue_frequencies_filename filename containing residue frequencies,
#'   the COBALT \code{-f} option
#' @param score_matrix_name name of the COBALT score matrix.
#'   Use \link{get_matrix_names} to get a list of all possible matrix names
#' @param search_around_conserved_columns look for conserved columns
#'   and iterate if any are found.
#'   The COBALT \code{-iter} flag
#' @param search_pattern_filename filename containing search patterns,
#'   the COBALT \code{-p} option
#' @param terminal_extend_gap_penalty
#'   The COBALT \code{-e0} flag
#' @param terminal_open_gap_penalty the gap open penalty
#'   for initial/terminal gaps.
#' The COBALT \code{-g0} flag
#' @param use_fastme use FastME tree generation algorithm (instead
#' of neighbor joining).
#'   The COBALT \code{-fastme} flag
#' @param verbose verbose output
#'   the COBALT \code{-v} option
#' @author Richèl J.C. Bilderbeek
#' @note This is an internal function, so it should be marked with
#'   \code{@export}. This is not done, as this will disallow all
#'   functions to find the documentation parameters
default_params_doc <- function(
  cobalt_folder,
  cobalt_options,
  conserved_domain_threshold,
  conservation_score_threshold,
  conserved_block_filename,
  dfb_added_weight,
  destination_filename,
  do_dry_run,
  domain_database_filename,
  fasta_filename,
  ffb_added_weight,
  filler_threshold,
  middle_extend_gap_penalty,
  no_rps,
  open_gap_in_middle_penalty,
  pairwise_alignment_constraints_filename,
  pseudocount_constant,
  residue_frequencies_filename,
  score_matrix_name,
  search_around_conserved_columns,
  search_pattern_filename,
  terminal_extend_gap_penalty,
  terminal_open_gap_penalty,
  use_fastme,
  verbose
) {
  # Nothing
}
