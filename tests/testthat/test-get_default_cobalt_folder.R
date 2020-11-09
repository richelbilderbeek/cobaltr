test_that("use", {
  expect_equal(
    get_default_cobalt_folder(),
    file.path(rappdirs::user_data_dir(), "cobalt")
  )
})
