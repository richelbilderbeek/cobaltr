#' Install COBALT
#' @export
install_cobalt <- function(
  cobalt_folder = file.path(rappdirs::user_data_dir(), "cobalt")
) {
  # wget ftp://ftp.ncbi.nlm.nih.gov/pub/agarwala/cobalt/*.* # nolint this is what I did
  cobalt_files <- get_cobalt_filenames()
  dir.create(cobalt_folder, recursive = TRUE, showWarnings = FALSE)
  for (cobalt_file in cobalt_files) {
    local_file_path <- file.path(cobalt_folder, cobalt_file)
    if (!file.exists(local_file_path)) {
      url <- file.path(
        "ftp://ftp.ncbi.nlm.nih.gov/pub/agarwala/cobalt",
        cobalt_file
      )
      download.file(
        url = url,
        destfile = local_file_path
      )
    }
  }
}
