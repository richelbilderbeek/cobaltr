#' Create the command arguments to call COBALT with
#' @inheritParams default_params_doc
#' @return the command and its arguments
#' @export
create_cobalt_args <- function(
  fasta_filename,
  cobalt_options
) {
  args <- c(
    "-i", fasta_filename,
    "-p", cobalt_options$search_pattern_filename,
    "-db", cobalt_options$domain_database_filename,
    "-b", cobalt_options$conserved_block_filename,
    "-f", cobalt_options$residue_frequencies_filename,
    "-seqalign", cobalt_options$destination_filename,
    "-c", cobalt_options$pairwise_alignment_constraints_filename,
    "-evalue", cobalt_options$conserved_domain_threshold,
    "-evalue2", cobalt_options$filler_threshold,
    "-g0", cobalt_options$terminal_open_gap_penalty,
    "-e0", cobalt_options$terminal_extend_gap_penalty,
    "-g1", cobalt_options$open_gap_in_middle_penalty,
    "-e1", cobalt_options$middle_extend_gap_penalty,
    "-ccc", cobalt_options$conservation_score_threshold,
    "-dfb", cobalt_options$dfb_added_weight,
    "-ffb", cobalt_options$ffb_added_weight,
    "-norps", stringr::str_to_lower(cobalt_options$no_rps),
    "-v", cobalt_options$verbose,
    "-iter", cobalt_options$search_around_conserved_columns,
    "-matrix", cobalt_options$score_matrix_name,
    "-pseudo", cobalt_options$pseudocount_constant,
    "-fastme", cobalt_options$use_fastme
  )
  if (cobalt_options$do_dry_run) {
    args <- c(args, "-dryrun")
  }
  args
}
