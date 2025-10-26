#' Masked line geoms with round line ends by default
#'
#' These wrappers mask the corresponding \pkg{ggplot2} geoms and set
#' `lineend = "round"` by default for nicer line caps.
#'
#' @name round_lineend_masked_geoms
#' @aliases geom_line geom_path geom_segment geom_errorbar geom_errorbarh geom_linerange
#' @param ... Passed to the underlying `ggplot2` geom.
#' @param lineend One of `"round"`, `"butt"`, or `"square"`. Defaults to `"round"`.
#'
#' @details
#' These functions call the corresponding `ggplot2::geom_*()` with a different
#' default for `lineend`. Use `ggplot2::geom_*()` explicitly to bypass masking.
#'
#' @seealso [ggplot2::geom_line()], [ggplot2::geom_path()], [ggplot2::geom_segment()],
#'   [ggplot2::geom_errorbar()], [ggplot2::geom_errorbarh()], [ggplot2::geom_linerange()]
#'
#' @examples
#' \dontrun{
#' library(ggplot2); library(chrisplot)
#' ggplot(economics, aes(date, unemploy)) + geom_line(size = 1.2)
#' }
NULL

#' @rdname round_lineend_masked_geoms
#' @export
geom_line <- function(..., lineend = "round") {
  ggplot2::geom_line(..., lineend = lineend)
}

#' @rdname round_lineend_masked_geoms
#' @export
geom_path <- function(..., lineend = "round") {
  ggplot2::geom_path(..., lineend = lineend)
}

#' @rdname round_lineend_masked_geoms
#' @export
geom_segment <- function(..., lineend = "round") {
  ggplot2::geom_segment(..., lineend = lineend)
}

#' @rdname round_lineend_masked_geoms
#' @export
geom_errorbar <- function(..., lineend = "round") {
  ggplot2::geom_errorbar(..., lineend = lineend)
}

#' @rdname round_lineend_masked_geoms
#' @export
geom_errorbarh <- function(..., lineend = "round") {
  ggplot2::geom_errorbarh(..., lineend = lineend)
}

#' @rdname round_lineend_masked_geoms
#' @export
geom_linerange <- function(..., lineend = "round") {
  ggplot2::geom_linerange(..., lineend = lineend)
}
