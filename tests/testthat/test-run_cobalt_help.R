test_that("use", {
  if (!is_cobalt_installed()) return()
  expect_output(run_cobalt_help())
})
