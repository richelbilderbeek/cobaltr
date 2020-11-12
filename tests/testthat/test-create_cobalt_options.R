test_that("use", {
  expect_silent(create_cobalt_options())
})

test_that("search_pattern_filename", {
  search_pattern_filename <- tempfile()
  cobalt_options <- create_cobalt_options(
    search_pattern_filename = search_pattern_filename
  )
  expect_equal(search_pattern_filename, cobalt_options$search_pattern_filename)
})

test_that("domain_database_filename", {
  domain_database_filename <- tempfile()
  cobalt_options <- create_cobalt_options(
    domain_database_filename = domain_database_filename
  )
  expect_equal(
    domain_database_filename,
    cobalt_options$domain_database_filename
  )
})

test_that("conserved_block_filename", {
  conserved_block_filename <- tempfile()
  cobalt_options <- create_cobalt_options(
    conserved_block_filename = conserved_block_filename
  )
  expect_equal(
    conserved_block_filename,
    cobalt_options$conserved_block_filename
  )
})

test_that("residue_frequencies_filename", {
  residue_frequencies_filename <- tempfile()
  cobalt_options <- create_cobalt_options(
    residue_frequencies_filename = residue_frequencies_filename
  )
  expect_equal(
    residue_frequencies_filename,
    cobalt_options$residue_frequencies_filename
  )
})

test_that("destination_filename", {
  destination_filename <- tempfile()
  cobalt_options <- create_cobalt_options(
    destination_filename = destination_filename
  )
  expect_equal(
    destination_filename,
    cobalt_options$destination_filename
  )
})

test_that("pac_filename", {
  pac_filename <- tempfile()
  cobalt_options <- create_cobalt_options(
    pac_filename = pac_filename
  )
  expect_equal(
    pac_filename,
    cobalt_options$pac_filename
  )
})

test_that("conserved_domain_threshold", {
  conserved_domain_threshold <- tempfile()
  cobalt_options <- create_cobalt_options(
    conserved_domain_threshold = conserved_domain_threshold
  )
  expect_equal(
    conserved_domain_threshold,
    cobalt_options$conserved_domain_threshold
  )
})

test_that("filler_threshold", {
  filler_threshold <- 0.42
  cobalt_options <- create_cobalt_options(
    filler_threshold = filler_threshold
  )
  expect_equal(
    filler_threshold,
    cobalt_options$filler_threshold
  )
})

test_that("terminal_open_gap_penalty", {
  terminal_open_gap_penalty <- 42
  cobalt_options <- create_cobalt_options(
    terminal_open_gap_penalty = terminal_open_gap_penalty
  )
  expect_equal(
    terminal_open_gap_penalty,
    cobalt_options$terminal_open_gap_penalty
  )
})

test_that("terminal_extend_gap_penalty", {
  terminal_extend_gap_penalty <- 42
  cobalt_options <- create_cobalt_options(
    terminal_extend_gap_penalty = terminal_extend_gap_penalty
  )
  expect_equal(
    terminal_extend_gap_penalty,
    cobalt_options$terminal_extend_gap_penalty
  )
})

test_that("open_gap_in_middle_penalty", {
  open_gap_in_middle_penalty <- 42
  cobalt_options <- create_cobalt_options(
    open_gap_in_middle_penalty = open_gap_in_middle_penalty
  )
  expect_equal(
    open_gap_in_middle_penalty,
    cobalt_options$open_gap_in_middle_penalty
  )
})

test_that("middle_extend_gap_penalty", {
  middle_extend_gap_penalty <- 42
  cobalt_options <- create_cobalt_options(
    middle_extend_gap_penalty = middle_extend_gap_penalty
  )
  expect_equal(
    middle_extend_gap_penalty,
    cobalt_options$middle_extend_gap_penalty
  )
})

test_that("conservation_score_threshold", {
  conservation_score_threshold <- 0.42
  cobalt_options <- create_cobalt_options(
    conservation_score_threshold = conservation_score_threshold
  )
  expect_equal(
    conservation_score_threshold,
    cobalt_options$conservation_score_threshold
  )
})

test_that("use", {
  dfb_added_weight <- 0.42
  cobalt_options <- create_cobalt_options(
    dfb_added_weight = dfb_added_weight
  )
  expect_equal(
    dfb_added_weight,
    cobalt_options$dfb_added_weight
  )
})

test_that("ffb_added_weight", {
  ffb_added_weight <- 0.42
  cobalt_options <- create_cobalt_options(
    ffb_added_weight = ffb_added_weight
  )
  expect_equal(
    ffb_added_weight,
    cobalt_options$ffb_added_weight
  )
})

test_that("no_rps", {
  no_rps <- TRUE
  cobalt_options <- create_cobalt_options(
    no_rps = no_rps
  )
  expect_equal(
    no_rps,
    cobalt_options$no_rps
  )
})

test_that("use", {
  verbose <- TRUE
  cobalt_options <- create_cobalt_options(verbose = verbose)
  expect_equal(verbose, cobalt_options$verbose)
})

test_that("use", {
  search_around_ccs <- FALSE
  cobalt_options <- create_cobalt_options(
    search_around_ccs = search_around_ccs
  )
  expect_equal(
    search_around_ccs,
    cobalt_options$search_around_ccs
  )
})

test_that("use", {
  score_matrix_name <- "PAM30"
  cobalt_options <- create_cobalt_options(score_matrix_name = score_matrix_name)
  expect_equal(score_matrix_name, cobalt_options$score_matrix_name)
})

test_that("use", {
  pseudocount_constant <- 3.14
  cobalt_options <- create_cobalt_options(
    pseudocount_constant = pseudocount_constant
  )
  expect_equal(
    pseudocount_constant,
    cobalt_options$pseudocount_constant
  )
})

test_that("use", {
  use_fastme <- TRUE
  cobalt_options <- create_cobalt_options(
    use_fastme = use_fastme
  )
  expect_equal(
    use_fastme,
    cobalt_options$use_fastme
  )
})

test_that("use", {
  do_dry_run <- TRUE
  cobalt_options <- create_cobalt_options(
    do_dry_run = do_dry_run
  )
  expect_equal(
    do_dry_run,
    cobalt_options$do_dry_run
  )
})
