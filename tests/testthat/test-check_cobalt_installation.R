test_that("use", {
  if (is_cobalt_installed()) {
    expect_silent(check_cobalt_installation())
  } else {
    expect_error(check_cobalt_installation())
  }
})
