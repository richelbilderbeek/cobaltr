test_that("use", {

  expect_false(is_cobalt_installed())
  expect_silent(install_cobalt())
  expect_true(is_cobalt_installed())
})
