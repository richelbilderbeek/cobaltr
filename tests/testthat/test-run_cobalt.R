test_that("use", {
  fasta_filename <- system.file("extdata", "example.fasta", package = "cobaltr")
  fasta_text <- run_cobalt(fasta_filename)
  expect_equal(class(fasta_text), "character")
  expect_equal(4, length(fasta_text))
})
