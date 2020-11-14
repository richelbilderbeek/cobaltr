#' Install COBALT
#' @inheritParams default_params_doc
#' @export
install_cobalt <- function(
  cobalt_folder = get_default_cobalt_folder()
) {
  if (is_cobalt_installed()) {
    stop("COBALT is already installed in folder '", cobalt_folder, "'")
  }
  # wget ftp://ftp.ncbi.nlm.nih.gov/pub/agarwala/cobalt/*.* # nolint this is what I did
  cobalt_files <- cobaltr::get_cobalt_filenames()
  dir.create(cobalt_folder, recursive = TRUE, showWarnings = FALSE)
  for (cobalt_file in cobalt_files) {
    local_file_path <- file.path(cobalt_folder, cobalt_file)
    if (!file.exists(local_file_path)) {
      url <- file.path(
        "ftp://ftp.ncbi.nlm.nih.gov/pub/agarwala/cobalt",
        cobalt_file
      )
      utils::download.file(
        url = url,
        destfile = local_file_path
      )
    }
  }
  cobalt_bin_filename <- file.path(cobalt_folder, "cobalt.linux")
  testthat::expect_true(file.exists(cobalt_bin_filename))
  if (file.access(cobalt_bin_filename, 1) == -1) {
    Sys.chmod(cobalt_bin_filename, "0777", use_umask = TRUE)
  }
  testthat::expect_equal(0, unname(file.access(cobalt_bin_filename, 1)))
}
