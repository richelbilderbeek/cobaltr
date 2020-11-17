test_that("use", {
  if (is_cobalt_installed()) {
    expect_error(
      install_cobalt(),
      "COBALT is already installed"
    )
  }
})

test_that("install and uninstall in custom folder", {
  if (Sys.getenv("TRAVIS") == "") return()
  if (!is_cobalt_installed()) return()

  folder_name <- tempfile(pattern = "cobalt_")

  # Not yet installed
  expect_false(is_cobalt_installed(cobalt_folder = folder_name))
  expect_message(
    is_cobalt_installed(
      cobalt_folder = folder_name,
      verbose = TRUE
    )
  )
  expect_error(check_cobalt_installation(folder_name))

  # Install
  install_cobalt(cobalt_folder = folder_name)

  # Now installed
  expect_true(is_cobalt_installed(cobalt_folder = folder_name))
  expect_message(
    is_cobalt_installed(
      cobalt_folder = folder_name,
      verbose = TRUE
    )
  )
  expect_silent(check_cobalt_installation(folder_name))

  # Uninstall
  expect_silent(
    uninstall_cobalt(cobalt_folder = folder_name)
  )
  expect_error(
    uninstall_cobalt(cobalt_folder = folder_name),
    "Cannot uninstall absent COBALT"
  )

  # Not installed anymore
  expect_false(is_cobalt_installed(cobalt_folder = folder_name))
  expect_message(
    is_cobalt_installed(
      cobalt_folder = folder_name,
      verbose = TRUE
    )
  )
  expect_error(check_cobalt_installation(folder_name))
})
