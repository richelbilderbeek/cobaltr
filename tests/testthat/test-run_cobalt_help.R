test_that("use", {
  if (!is_cobalt_installed()) return()
  expect_silent(run_cobalt_help())
})
