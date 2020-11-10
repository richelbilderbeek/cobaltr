test_that("use", {
  expect_silent(check_cobalt_options(create_cobalt_options()))
})

test_that("search_pattern_filename", {
  expect_error(
    check_cobalt_options(
      create_cobalt_options(search_pattern_filename = 42)
    ),
    "'search_pattern_filename' must be a filename"
  )
})

test_that("domain_database_filename", {
  expect_error(
    check_cobalt_options(
      create_cobalt_options(domain_database_filename = 42)
    ),
    "'domain_database_filename' must be a filename"
  )
})

test_that("conserved_block_filename", {
  expect_error(
    check_cobalt_options(
      create_cobalt_options(conserved_block_filename = 42)
    ),
    "'conserved_block_filename' must be a filename"
  )
})

test_that("residue_frequencies_filename", {
  expect_error(
    check_cobalt_options(
      create_cobalt_options(residue_frequencies_filename = 42)
    ),
    "'residue_frequencies_filename' must be a filename"
  )
})

test_that("destination_filename", {
  expect_error(
    check_cobalt_options(
      create_cobalt_options(destination_filename = 42)
    ),
    "'destination_filename' must be a filename"
  )
})

test_that("pairwise_alignment_constraints_filename", {
  expect_error(
    check_cobalt_options(
      create_cobalt_options(pairwise_alignment_constraints_filename = 42)
    ),
    "'pairwise_alignment_constraints_filename' must be a filename"
  )
})

test_that("conserved_domain_threshold", {
  expect_error(
    check_cobalt_options(
      create_cobalt_options(conserved_domain_threshold = "nonsense")
    ),
    "'conserved_domain_threshold' must be a number"
  )
})

test_that("filler_threshold", {
  expect_error(
    check_cobalt_options(
      create_cobalt_options(filler_threshold = "nonsense")
    ),
    "'filler_threshold' must be a number"
  )
})

test_that("terminal_open_gap_penalty", {
  expect_error(
    check_cobalt_options(
      create_cobalt_options(terminal_open_gap_penalty = "nonsense")
    ),
    "'terminal_open_gap_penalty' must be a number"
  )
})

test_that("terminal_extend_gap_penalty", {
  expect_error(
    check_cobalt_options(
      create_cobalt_options(terminal_extend_gap_penalty = "nonsense")
    ),
    "'terminal_extend_gap_penalty' must be a number"
  )
})

test_that("open_gap_in_middle_penalty", {
  expect_error(
    check_cobalt_options(
      create_cobalt_options(open_gap_in_middle_penalty = "nonsense")
    ),
    "'open_gap_in_middle_penalty' must be a number"
  )
})

test_that("middle_extend_gap_penalty", {
  expect_error(
    check_cobalt_options(
      create_cobalt_options(middle_extend_gap_penalty = "nonsense")
    ),
    "'middle_extend_gap_penalty' must be a number"
  )
})

test_that("conservation_score_threshold", {
  expect_error(
    check_cobalt_options(
      create_cobalt_options(conservation_score_threshold = "nonsense")
    ),
    "'conservation_score_threshold' must be a number"
  )
})

test_that("use", {
  expect_error(
    check_cobalt_options(
      create_cobalt_options(dfb_added_weight = "nonsense")
    ),
    "'dfb_added_weight' must be a number"
  )
})

test_that("ffb_added_weight", {
  expect_error(
    check_cobalt_options(
      create_cobalt_options(ffb_added_weight = "nonsense")
    ),
    "'ffb_added_weight' must be a number"
  )
})

test_that("no_rps", {
  expect_error(
    check_cobalt_options(
      create_cobalt_options(no_rps = "nonsense")
    ),
    "'no_rps' must be TRUE or FALSE"
  )
})

test_that("use", {
  expect_error(
    check_cobalt_options(
      create_cobalt_options(verbose = "nonsense")
    ),
    "'verbose' must be TRUE or FALSE"
  )
})

test_that("use", {
  expect_error(
    check_cobalt_options(
      create_cobalt_options(search_around_conserved_columns = "nonsense")
    ),
    "'search_around_conserved_columns' must be TRUE or FALSE"
  )
})

test_that("score_matrix_name", {
  expect_error(
    check_cobalt_options(
      create_cobalt_options(score_matrix_name = 42)
    ),
    "'score_matrix_name' must be a string"
  )
})

test_that("use", {
  expect_error(
    check_cobalt_options(
      create_cobalt_options(pseudocount_constant = "nonsense")
    ),
    "'pseudocount_constant' must be a number"
  )
})

test_that("use", {
  expect_error(
    check_cobalt_options(
      create_cobalt_options(use_fastme = "nonsense")
    ),
    "'use_fastme' must be TRUE or FALSE"
  )
})

test_that("use", {
  expect_error(
    check_cobalt_options(
      create_cobalt_options(do_dry_run = "nonsense")
    ),
    "'do_dry_run' must be TRUE or FALSE"
  )
})
