#' Self-test the package
#' @inheritParams default_params_doc
#' @examples
#' if (is_cobalt_installed()) {
#'   cobaltr_self_test()
#' }
#' @author Richèl J.C. Bilderbeek
#' @export
cobaltr_self_test <- function(
  cobalt_options = create_test_cobalt_options()
) {
  run_cobalt(
    fasta_filename = system.file(
      "extdata", "example.fasta", package = "cobaltr"
    )
  )
  invisible(NULL)
}
