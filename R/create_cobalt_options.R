#' Create the COBALT options
#' @inheritParams default_params_doc
#' @export
create_cobalt_options <- function(
  search_pattern_filename = file.path(get_default_cobalt_folder(), "patterns"),
  domain_database_filename = file.path(get_default_cobalt_folder(), "cdd"),
  conserved_block_filename = file.path(get_default_cobalt_folder(), "cdd.blocks"),
  residue_frequencies_filename = file.path(get_default_cobalt_folder(), "cdd.freq"),
  destination_filename = "",
  pairwise_alignment_constraints_filename = "",
  conserved_domain_threshold = 0.01,
  filler_threshold = 0.01,
  terminal_open_gap_penalty = 5,
  terminal_extend_gap_penalty = 1,
  open_gap_in_middle_penalty = 11,
  middle_extend_gap_penalty = 1,
  conservation_score_threshold = 0.67,
  dfb_added_weight = 0.5,
  ffb_added_weight = 1.0,
  no_rps = FALSE,
  search_around_conserved_columns = TRUE,
  score_matrix_name = "BLOSUM62",
  pseudocount_constant = 2.0,
  use_fastme = FALSE,
  do_dry_run = FALSE,
  verbose = FALSE
) {
  list(
    search_pattern_filename = search_pattern_filename,
    domain_database_filename = domain_database_filename,
    conserved_block_filename = conserved_block_filename,
    residue_frequencies_filename = residue_frequencies_filename,
    destination_filename = destination_filename,
    pairwise_alignment_constraints_filename = pairwise_alignment_constraints_filename,
    conserved_domain_threshold = conserved_domain_threshold,
    filler_threshold = filler_threshold,
    terminal_open_gap_penalty = terminal_open_gap_penalty,
    terminal_extend_gap_penalty = terminal_extend_gap_penalty,
    open_gap_in_middle_penalty = open_gap_in_middle_penalty,
    middle_extend_gap_penalty = middle_extend_gap_penalty,
    conservation_score_threshold = conservation_score_threshold,
    dfb_added_weight = dfb_added_weight,
    ffb_added_weight = ffb_added_weight,
    no_rps = no_rps,
    search_around_conserved_columns = search_around_conserved_columns,
    score_matrix_name = score_matrix_name,
    pseudocount_constant = pseudocount_constant,
    use_fastme = use_fastme,
    do_dry_run = do_dry_run,
    verbose = verbose
  )
}
