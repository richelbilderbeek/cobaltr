test_that("use", {
  expect_true("BLOSUM45" %in% get_matrix_names())
  expect_true("BLOSUM62" %in% get_matrix_names())
  expect_true("BLOSUM80" %in% get_matrix_names())
  expect_true("PAM30" %in% get_matrix_names())
  expect_true("PAM70" %in% get_matrix_names())
  expect_true("PAM250" %in% get_matrix_names())
  expect_false("nonsense" %in% get_matrix_names())
})
