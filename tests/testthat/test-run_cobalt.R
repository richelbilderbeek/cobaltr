test_that("use", {
  fasta_filename <- system.file("extdata", "example.fasta", package = "cobaltr")
  fasta_text <- run_cobalt(fasta_filename)
  expect_equal(class(fasta_text), "character")
  expect_equal(4, length(fasta_text))
})

test_that("matrices", {
  fasta_filename <- system.file("extdata", "example.fasta", package = "cobaltr")
  run_cobalt(fasta_filename, matrix_name = "BLOSUM62")
  expect_error(
    run_cobalt(fasta_filename, matrix_name = "PAM30"),
    "Cannot generate Karlin block"
  )
})
