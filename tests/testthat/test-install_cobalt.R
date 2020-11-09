test_that("use", {
  if (is_cobalt_installed()) {
    expect_error(
      install_cobalt(),
      "COBALT is already installed"
    )
  }
})
