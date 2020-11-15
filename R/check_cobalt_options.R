#' Check if the argument is a valid \code{cobalt_options}
#'
#' Will \link{stop} with a helpful error message if not
#' @inheritParams default_params_doc
#' @export
check_cobalt_options <- function(cobalt_options) {
  cobaltr::check_cobalt_options_filenames(cobalt_options)

  if (!is.numeric(cobalt_options$conserved_domain_threshold)) {
    stop(
      "'conserved_domain_threshold' must be a number. \n",
      "Actual class: ", class(cobalt_options$conserved_domain_threshold)
    )
  }
  if (!is.numeric(cobalt_options$filler_threshold)) {
    stop(
      "'filler_threshold' must be a number. \n",
      "Actual class: ", class(cobalt_options$filler_threshold)
    )
  }
  if (!is.numeric(cobalt_options$terminal_open_gap_penalty)) {
    stop(
      "'terminal_open_gap_penalty' must be a number. \n",
      "Actual class: ", class(cobalt_options$terminal_open_gap_penalty)
    )
  }
  if (!is.numeric(cobalt_options$terminal_extend_gap_penalty)) {
    stop(
      "'terminal_extend_gap_penalty' must be a number. \n",
      "Actual class: ", class(cobalt_options$terminal_extend_gap_penalty)
    )
  }
  if (!is.numeric(cobalt_options$open_gap_in_middle_penalty)) {
    stop(
      "'open_gap_in_middle_penalty' must be a number. \n",
      "Actual class: ", class(cobalt_options$open_gap_in_middle_penalty)
    )
  }
  if (!is.numeric(cobalt_options$middle_extend_gap_penalty)) {
    stop(
      "'middle_extend_gap_penalty' must be a number. \n",
      "Actual class: ", class(cobalt_options$middle_extend_gap_penalty)
    )
  }
  if (!is.numeric(cobalt_options$conservation_score_threshold)) {
    stop(
      "'conservation_score_threshold' must be a number. \n",
      "Actual class: ", class(cobalt_options$conservation_score_threshold)
    )
  }
  if (!is.numeric(cobalt_options$dfb_added_weight)) {
    stop(
      "'dfb_added_weight' must be a number. \n",
      "Actual class: ", class(cobalt_options$dfb_added_weight)
    )
  }
  if (!is.numeric(cobalt_options$ffb_added_weight)) {
    stop(
      "'ffb_added_weight' must be a number. \n",
      "Actual class: ", class(cobalt_options$ffb_added_weight)
    )
  }
  if (!is.logical(cobalt_options$no_rps)) {
    stop(
      "'no_rps' must be TRUE or FALSE. \n",
      "Actual class: ", class(cobalt_options$no_rps)
    )
  }
  if (!is.logical(cobalt_options$verbose)) {
    stop(
      "'verbose' must be TRUE or FALSE. \n",
      "Actual class: ", class(cobalt_options$verbose)
    )
  }
  if (!is.logical(cobalt_options$search_around_ccs)) {
    stop(
      "'search_around_ccs' must be TRUE or FALSE. \n",
      "Actual class: ", class(cobalt_options$search_around_ccs)
    )
  }
  if (!is.character(cobalt_options$score_matrix_name)) {
    stop(
      "'score_matrix_name' must be a string. \n",
      "Actual class: ", class(cobalt_options$score_matrix_name)
    )
  }
  if (!is.numeric(cobalt_options$pseudocount_constant)) {
    stop(
      "'pseudocount_constant' must be a number \n",
      "Actual class: ", class(cobalt_options$pseudocount_constant)
    )
  }
  if (!is.logical(cobalt_options$use_fastme)) {
    stop(
      "'use_fastme' must be TRUE or FALSE. \n",
      "Actual class: ", class(cobalt_options$use_fastme)
    )
  }
  if (!is.logical(cobalt_options$do_dry_run)) {
    stop(
      "'do_dry_run' must be TRUE or FALSE. \n",
      "Actual class: ", class(cobalt_options$do_dry_run)
    )
  }
}

#' Internal function
#'
#' Check if the filename in the \code{cobalt_options}
#' are of the right datatype
#' @inheritParams default_params_doc
#' @export
check_cobalt_options_filenames <- function(cobalt_options) {
  if (!is.character(cobalt_options$search_pattern_filename)) {
    stop(
      "'search_pattern_filename' must be a filename. \n",
      "Actual class: ", class(cobalt_options$search_pattern_filename)
    )
  }
  if (!is.character(cobalt_options$domain_database_filename)) {
    stop(
      "'domain_database_filename' must be a filename. \n",
      "Actual class: ", class(cobalt_options$domain_database_filename)
    )
  }
  if (!is.character(cobalt_options$conserved_block_filename)) {
    stop(
      "'conserved_block_filename' must be a filename. \n",
      "Actual class: ", class(cobalt_options$conserved_block_filename)
    )
  }
  if (!is.character(cobalt_options$residue_frequencies_filename)) {
    stop(
      "'residue_frequencies_filename' must be a filename. \n",
      "Actual class: ", class(cobalt_options$residue_frequencies_filename)
    )
  }
  if (!is.character(cobalt_options$destination_filename)) {
    stop(
      "'destination_filename' must be a filename. \n",
      "Actual class: ", class(cobalt_options$destination_filename)
    )
  }
  if (!is.character(cobalt_options$pac_filename)) {
    stop(
      "'pac_filename' must be a filename. \n",
      "Actual class: ",
      class(cobalt_options$pac_filename)
    )
  }
}
