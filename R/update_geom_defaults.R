#' Sensible geom defaults
#' @export
use_chris_geom_defaults <- function() {
  ggplot2::update_geom_defaults("point", list(size = 2, alpha = 0.5))
  ggplot2::update_geom_defaults("line",  list(linewidth = 0.7))
  ggplot2::update_geom_defaults("col",   list(linewidth = 0))
  ggplot2::update_geom_defaults("bar",   list(linewidth = 0))
  ggplot2::update_geom_defaults("errorbar",   list(width = 0))
  ggplot2::update_geom_defaults("ribbon",   list(linewidth = 0, alpha = .5))
  invisible(TRUE)
}

