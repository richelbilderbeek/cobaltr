test_that("use", {
  if (is_cobalt_installed()) {
    expect_silent(cobaltr_self_test())
  } else {
    expect_error(cobaltr_self_test())
  }
})
