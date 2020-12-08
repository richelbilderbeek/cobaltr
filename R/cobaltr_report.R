#' Create a \link{cobaltr} report, to be used when reporting bugs
#' @export
cobaltr_report <- function() {
  kat <- function(x) message(x, sep = "\n")
  kat("***********")
  kat("* cobaltr *")
  kat("***********")
  kat(paste0("OS: ", rappdirs::app_dir()$os))
  kat("**********")
  kat("* COBALT *")
  kat("**********")
  kat(paste0("Is COBALT installed: ", cobaltr::is_cobalt_installed()))
  kat("****************")
  kat("* session info *")
  kat("****************")
  message(paste0(devtools::session_info(), collapse = "\n"))
}
