#' A masked geom_line() with round caps by default
#' @export
geom_line <- function(..., lineend = "round") {ggplot2::geom_line(..., lineend = lineend)}

#' @export
geom_path <- function(..., lineend = "round") ggplot2::geom_path(..., lineend = lineend)

#' @export
geom_segment <- function(..., lineend = "round") ggplot2::geom_segment(..., lineend = lineend)

#' @export
geom_errorbar <- function(..., lineend = "round") ggplot2::geom_errorbar(..., lineend = lineend)

#' @export
geom_errorbarh <- function(..., lineend = "round") ggplot2::geom_errorbarh(..., lineend = lineend)

#' @export
geom_linerange <- function(..., lineend = "round") ggplot2::geom_linerange(..., lineend = lineend)
