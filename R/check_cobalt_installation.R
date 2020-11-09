#' Check that COBALT is installed
#'
#' Check that COBALT is installed, give a helpful error message if not
#' @export
check_cobalt_installation <- function(
  cobalt_folder = file.path(rappdirs::user_data_dir(), "cobalt")
) {
  for (filename in get_cobalt_filenames()) {
    if (!file.exists(file.path(cobalt_folder, filename))) {
      stop(
        "File '", filename, "' not found ",
        "in COBALT folder '", cobalt_folder, "'"
      )
    }
  } 
}
