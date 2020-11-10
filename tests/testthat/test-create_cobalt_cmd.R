test_that("use", {
  expect_silent(
    create_cobalt_args(
      fasta_filename = tempfile(),
      cobalt_options = create_cobalt_options()
    )
  )
})
