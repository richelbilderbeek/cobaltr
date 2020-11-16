#' Uninstall COBALT
#' @inheritParams default_params_doc
#' @export
uninstall_cobalt <- function(
  cobalt_folder = get_default_cobalt_folder()
) {
  if (!is_cobalt_installed(cobalt_folder)) {
    stop(
    )
  }
  # For safety, we expect the files to be present,
  # else this function would be only an unlink function
  cobalt_files <- cobaltr::get_cobalt_filenames()
  for (cobalt_file in cobalt_files) {
    local_file_path <- file.path(cobalt_folder, cobalt_file)
    if (!file.exists(local_file_path)) {
      stop(
        "COBALT file '", local_file_path, "' not found ",
        "in folder '", cobalt_folder, "'. ",
        "Maybe it is already uninstalled? ",
        "Tip: run 'install_cobalt' to finish an incomplete installation"
      )
    }
  }
  unlink(cobalt_folder, recursive = TRUE)
}
