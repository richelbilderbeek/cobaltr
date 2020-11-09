#' Get the default COBALT folder
#' @return the default COBALT folder
#' @export
get_default_cobalt_folder <- function() {
  file.path(rappdirs::user_data_dir(), "cobalt")
}
